/*
 * Copyright (C) 2010 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

/**
 * Reads a JSON (<a href="http://www.ietf.org/rfc/rfc7159.txt">RFC 7159</a>)
 * encoded value as a stream of tokens. This stream includes both literal
 * values (strings, numbers, booleans, and nulls) as well as the begin and
 * end delimiters of objects and arrays. The tokens are traversed in
 * depth-first order, the same order that they appear in the JSON document.
 * Within JSON objects, name/value pairs are represented by a single token.
 *
 * <h3>Parsing JSON</h3>
 * To create a recursive descent parser for your own JSON streams, first create
 * an entry point method that creates a {@code JsonReader}.
 *
 * <p>Next, create handler methods for each structure in your JSON text. You'll
 * need a method for each object type and for each array type.
 * <ul>
 *   <li>Within <strong>array handling</strong> methods, first call {@link
 *       #beginArray} to consume the array's opening bracket. Then create a
 *       while loop that accumulates values, terminating when {@link #hasNext}
 *       is false. Finally, read the array's closing bracket by calling {@link
 *       #endArray}.
 *   <li>Within <strong>object handling</strong> methods, first call {@link
 *       #beginObject} to consume the object's opening brace. Then create a
 *       while loop that assigns values to local variables based on their name.
 *       This loop should terminate when {@link #hasNext} is false. Finally,
 *       read the object's closing brace by calling {@link #endObject}.
 * </ul>
 * <p>When a nested object or array is encountered, delegate to the
 * corresponding handler method.
 *
 * <p>When an unknown name is encountered, strict parsers should fail with an
 * exception. Lenient parsers should call {@link #skipValue()} to recursively
 * skip the value's nested tokens, which may otherwise conflict.
 *
 * <p>If a value may be null, you should first check using {@link #peek()}.
 * Null literals can be consumed using either {@link #nextNull()} or {@link
 * #skipValue()}.
 *
 * <h3>Example</h3>
 * Suppose we'd like to parse a stream of messages such as the following: <pre> {@code
 * [
 *   {
 *     "id": 912345678901,
 *     "text": "How do I read a JSON stream in Java?",
 *     "geo": null,
 *     "user": {
 *       "name": "json_newb",
 *       "followers_count": 41
 *      }
 *   },
 *   {
 *     "id": 912345678902,
 *     "text": "@json_newb just use JsonReader!",
 *     "geo": [50.454722, -104.606667],
 *     "user": {
 *       "name": "jesse",
 *       "followers_count": 2
 *     }
 *   }
 * ]}</pre>
 * This code implements the parser for the above structure: <pre>   {@code
 *
 *   public List<Message> readJsonStream(InputStream in) throws IOException {
 *     JsonReader reader = new JsonReader(new InputStreamReader(in, "UTF-8"));
 *     try {
 *       return readMessagesArray(reader);
 *     } finally {
 *       reader.close();
 *     }
 *   }
 *
 *   public List<Message> readMessagesArray(JsonReader reader) throws IOException {
 *     List<Message> messages = new ArrayList<Message>();
 *
 *     reader.beginArray();
 *     while (reader.hasNext()) {
 *       messages.add(readMessage(reader));
 *     }
 *     reader.endArray();
 *     return messages;
 *   }
 *
 *   public Message readMessage(JsonReader reader) throws IOException {
 *     long id = -1;
 *     String text = null;
 *     User user = null;
 *     List<Double> geo = null;
 *
 *     reader.beginObject();
 *     while (reader.hasNext()) {
 *       String name = reader.nextName();
 *       if (name.equals("id")) {
 *         id = reader.nextLong();
 *       } else if (name.equals("text")) {
 *         text = reader.nextString();
 *       } else if (name.equals("geo") && reader.peek() != JsonToken.NULL) {
 *         geo = readDoublesArray(reader);
 *       } else if (name.equals("user")) {
 *         user = readUser(reader);
 *       } else {
 *         reader.skipValue();
 *       }
 *     }
 *     reader.endObject();
 *     return new Message(id, text, user, geo);
 *   }
 *
 *   public List<Double> readDoublesArray(JsonReader reader) throws IOException {
 *     List<Double> doubles = new ArrayList<Double>();
 *
 *     reader.beginArray();
 *     while (reader.hasNext()) {
 *       doubles.add(reader.nextDouble());
 *     }
 *     reader.endArray();
 *     return doubles;
 *   }
 *
 *   public User readUser(JsonReader reader) throws IOException {
 *     String username = null;
 *     int followersCount = -1;
 *
 *     reader.beginObject();
 *     while (reader.hasNext()) {
 *       String name = reader.nextName();
 *       if (name.equals("name")) {
 *         username = reader.nextString();
 *       } else if (name.equals("followers_count")) {
 *         followersCount = reader.nextInt();
 *       } else {
 *         reader.skipValue();
 *       }
 *     }
 *     reader.endObject();
 *     return new User(username, followersCount);
 *   }}</pre>
 *
 * <h3>Number Handling</h3>
 * This reader permits numeric values to be read as strings and string values to
 * be read as numbers. For example, both elements of the JSON array {@code
 * [1, "1"]} may be read using either {@link #nextInt} or {@link #nextString}.
 * This behavior is intended to prevent lossy numeric conversions: double is
 * JavaScript's only numeric type and very large values like {@code
 * 9007199254740993} cannot be represented exactly on that platform. To minimize
 * precision loss, extremely large values should be written and read as strings
 * in JSON.
 *
 * <a name="nonexecuteprefix"/><h3>Non-Execute Prefix</h3>
 * Web servers that serve private data using JSON may be vulnerable to <a
 * href="http://en.wikipedia.org/wiki/JSON#Cross-site_request_forgery">Cross-site
 * request forgery</a> attacks. In such an attack, a malicious site gains access
 * to a private JSON file by executing it with an HTML {@code <script>} tag.
 *
 * <p>Prefixing JSON files with <code>")]}'\n"</code> makes them non-executable
 * by {@code <script>} tags, disarming the attack. Since the prefix is malformed
 * JSON, strict parsing fails when it is encountered. This class permits the
 * non-execute prefix when {@link #setLenient(boolean) lenient parsing} is
 * enabled.
 *
 * <p>Each {@code JsonReader} may be used to read a single JSON stream. Instances
 * of this class are not thread safe.
 *
 * @author Jesse Wilson
 * @since 1.6
 */
public class JsonReader implements Closeable {
  int PROBE_START_LINE_191 = 192;

	private static final char[] json_reader_1_expr1_line_192 = ")]}'\n".toCharArray();

	int PROBE_END_LINE_191 = 192;

/** The only non-execute prefix this parser permits */
  private static final char[] NON_EXECUTE_PREFIX = json_reader_1_expr1_line_192;
  private static final long MIN_INCOMPLETE_INTEGER = Long.MIN_VALUE / 10;

  private static final int PEEKED_NONE = 0;
  private static final int PEEKED_BEGIN_OBJECT = 1;
  private static final int PEEKED_END_OBJECT = 2;
  private static final int PEEKED_BEGIN_ARRAY = 3;
  private static final int PEEKED_END_ARRAY = 4;
  private static final int PEEKED_TRUE = 5;
  private static final int PEEKED_FALSE = 6;
  private static final int PEEKED_NULL = 7;
  private static final int PEEKED_SINGLE_QUOTED = 8;
  private static final int PEEKED_DOUBLE_QUOTED = 9;
  private static final int PEEKED_UNQUOTED = 10;
  /** When this is returned, the string value is stored in peekedString. */
  private static final int PEEKED_BUFFERED = 11;
  private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
  private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
  private static final int PEEKED_UNQUOTED_NAME = 14;
  /** When this is returned, the integer value is stored in peekedLong. */
  private static final int PEEKED_LONG = 15;
  private static final int PEEKED_NUMBER = 16;
  private static final int PEEKED_EOF = 17;

  /* State machine when parsing numbers */
  private static final int NUMBER_CHAR_NONE = 0;
  private static final int NUMBER_CHAR_SIGN = 1;
  private static final int NUMBER_CHAR_DIGIT = 2;
  private static final int NUMBER_CHAR_DECIMAL = 3;
  private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
  private static final int NUMBER_CHAR_EXP_E = 5;
  private static final int NUMBER_CHAR_EXP_SIGN = 6;
  private static final int NUMBER_CHAR_EXP_DIGIT = 7;

  /** The input JSON. */
  private final Reader in;

  /** True to accept non-spec compliant JSON */
  private boolean lenient = false;

  /**
   * Use a manual buffer to easily read and unread upcoming characters, and
   * also so we can create strings without an intermediate StringBuilder.
   * We decode literals directly out of this buffer, so it must be at least as
   * long as the longest token that can be reported as a number.
   */
  private final char[] buffer = new char[1024];
  private int pos = 0;
  private int limit = 0;

  private int lineNumber = 0;
  private int lineStart = 0;

  int PROBE_START_LINE_245 = 245;

int f_peeked_none_563_line_245 = PEEKED_NONE;

int PROBE_END_LINE_245 = 245;

int peeked = f_peeked_none_563_line_245;

  /**
   * A peeked value that was composed entirely of digits with an optional
   * leading dash. Positive values may not have a leading 0.
   */
  private long peekedLong;

  /**
   * The number of characters in a peeked number literal. Increment 'pos' by
   * this after reading a number.
   */
  private int peekedNumberLength;

  /**
   * A peeked string that should be parsed on the next double, long or string.
   * This is populated before a numeric value is parsed and used if that parsing
   * fails.
   */
  private String peekedString;

  /*
   * The nesting stack. Using a manual array rather than an ArrayList saves 20%.
   */
  private int[] stack = new int[32];
  private int stackSize = 0;
  {
    int PROBE_START_LINE_272 = 272;
	int[] f_stack_564_line_272 = stack;
	int q_empty_document_39_line_272 = JsonScope.EMPTY_DOCUMENT;
	int PROBE_END_LINE_272 = 272;
	f_stack_564_line_272[stackSize++] = q_empty_document_39_line_272;
  }

  /*
   * The path members. It corresponds directly to stack: At indices where the
   * stack contains an object (EMPTY_OBJECT, DANGLING_NAME or NONEMPTY_OBJECT),
   * pathNames contains the name at this scope. Where it contains an array
   * (EMPTY_ARRAY, NONEMPTY_ARRAY) pathIndices contains the current index in
   * that array. Otherwise the value is undefined, and we take advantage of that
   * by incrementing pathIndices when doing so isn't useful.
   */
  private String[] pathNames = new String[32];
  private int[] pathIndices = new int[32];

  /**
   * Creates a new instance that reads a JSON-encoded stream from {@code in}.
   */
  public JsonReader(Reader in) {
    int PROBE_START_LINE_290 = 292;
	java.io.Reader p_in_568_line_290 = in;
	boolean json_reader_1_expr9_line_290 = p_in_568_line_290 == null;
	int PROBE_END_LINE_290 = 292;
	if (json_reader_1_expr9_line_290) {
      throw new NullPointerException("in == null");
    }
    int PROBE_START_LINE_293 = 293;
	java.io.Reader p_in_568_line_293 = in;
	int PROBE_END_LINE_293 = 293;
	this.in = p_in_568_line_293;
  }

  /**
   * Configure this parser to be liberal in what it accepts. By default,
   * this parser is strict and only accepts JSON as specified by <a
   * href="http://www.ietf.org/rfc/rfc4627.txt">RFC 4627</a>. Setting the
   * parser to lenient causes it to ignore the following syntax errors:
   *
   * <ul>
   *   <li>Streams that start with the <a href="#nonexecuteprefix">non-execute
   *       prefix</a>, <code>")]}'\n"</code>.
   *   <li>Streams that include multiple top-level values. With strict parsing,
   *       each stream must contain exactly one top-level value.
   *   <li>Top-level values of any type. With strict parsing, the top-level
   *       value must be an object or an array.
   *   <li>Numbers may be {@link Double#isNaN() NaNs} or {@link
   *       Double#isInfinite() infinities}.
   *   <li>End of line comments starting with {@code //} or {@code #} and
   *       ending with a newline character.
   *   <li>C-style comments starting with {@code /*} and ending with
   *       {@code *}{@code /}. Such comments may not be nested.
   *   <li>Names that are unquoted or {@code 'single quoted'}.
   *   <li>Strings that are unquoted or {@code 'single quoted'}.
   *   <li>Array elements separated by {@code ;} instead of {@code ,}.
   *   <li>Unnecessary array separators. These are interpreted as if null
   *       was the omitted value.
   *   <li>Names and values separated by {@code =} or {@code =>} instead of
   *       {@code :}.
   *   <li>Name/value pairs separated by {@code ;} instead of {@code ,}.
   * </ul>
   */
  public final void setLenient(boolean lenient) {
    int PROBE_START_LINE_326 = 326;
	boolean p_lenient_570_line_326 = lenient;
	int PROBE_END_LINE_326 = 326;
	this.lenient = p_lenient_570_line_326;
  }

  /**
   * Returns true if this parser is liberal in what it accepts.
   */
  public final boolean isLenient() {
    int PROBE_START_LINE_333 = 333;
	boolean f_lenient_556_line_333 = lenient;
	int PROBE_END_LINE_333 = 333;
	return f_lenient_556_line_333;
  }

  /**
   * Consumes the next token from the JSON stream and asserts that it is the
   * beginning of a new array.
   */
  public void beginArray() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    if (p == PEEKED_BEGIN_ARRAY) {
      push(JsonScope.EMPTY_ARRAY);
      pathIndices[stackSize - 1] = 0;
      peeked = PEEKED_NONE;
    } else {
      throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
  }

  /**
   * Consumes the next token from the JSON stream and asserts that it is the
   * end of the current array.
   */
  public void endArray() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    if (p == PEEKED_END_ARRAY) {
      stackSize--;
      pathIndices[stackSize - 1]++;
      peeked = PEEKED_NONE;
    } else {
      throw new IllegalStateException("Expected END_ARRAY but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
  }

  /**
   * Consumes the next token from the JSON stream and asserts that it is the
   * beginning of a new object.
   */
  public void beginObject() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    if (p == PEEKED_BEGIN_OBJECT) {
      push(JsonScope.EMPTY_OBJECT);
      peeked = PEEKED_NONE;
    } else {
      throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
  }

  /**
   * Consumes the next token from the JSON stream and asserts that it is the
   * end of the current object.
   */
  public void endObject() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    if (p == PEEKED_END_OBJECT) {
      stackSize--;
      pathNames[stackSize] = null; // Free the last path name so that it can be garbage collected!
      pathIndices[stackSize - 1]++;
      peeked = PEEKED_NONE;
    } else {
      throw new IllegalStateException("Expected END_OBJECT but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
  }

  /**
   * Returns true if the current array or object has another element.
   */
  public boolean hasNext() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    return p != PEEKED_END_OBJECT && p != PEEKED_END_ARRAY;
  }

  /**
   * Returns the type of the next token without consuming it.
   */
  public JsonToken peek() throws IOException {
    int PROBE_START_LINE_427 = 427;
	int f_peeked_562_line_427 = peeked;
	int PROBE_END_LINE_427 = 427;
	int p = f_peeked_562_line_427;
    int PROBE_START_LINE_428 = 430;
	int v_p_571_line_428 = p;
	int f_peeked_none_563_line_428 = PEEKED_NONE;
	boolean json_reader_1_expr16_line_428 = v_p_571_line_428 == f_peeked_none_563_line_428;
	int PROBE_END_LINE_428 = 430;
	if (json_reader_1_expr16_line_428) {
      int PROBE_START_LINE_429 = 429;
		int json_reader_1_expr18_line_429 = doPeek();
		int PROBE_END_LINE_429 = 429;
	p = json_reader_1_expr18_line_429;
    }

    int PROBE_START_LINE_432 = 462;
	int v_p_571_line_432 = p;
	int PROBE_END_LINE_432 = 462;
	switch (v_p_571_line_432) {
    case PEEKED_BEGIN_OBJECT:
      int PROBE_START_LINE_434 = 434;
	com.google.gson.stream.JsonToken q_begin_object_40_line_434 = JsonToken.BEGIN_OBJECT;
	int PROBE_END_LINE_434 = 434;
	return q_begin_object_40_line_434;
    case PEEKED_END_OBJECT:
      return JsonToken.END_OBJECT;
    case PEEKED_BEGIN_ARRAY:
      return JsonToken.BEGIN_ARRAY;
    case PEEKED_END_ARRAY:
      return JsonToken.END_ARRAY;
    case PEEKED_SINGLE_QUOTED_NAME:
    case PEEKED_DOUBLE_QUOTED_NAME:
    case PEEKED_UNQUOTED_NAME:
      return JsonToken.NAME;
    case PEEKED_TRUE:
    case PEEKED_FALSE:
      return JsonToken.BOOLEAN;
    case PEEKED_NULL:
      return JsonToken.NULL;
    case PEEKED_SINGLE_QUOTED:
    case PEEKED_DOUBLE_QUOTED:
    case PEEKED_UNQUOTED:
    case PEEKED_BUFFERED:
      return JsonToken.STRING;
    case PEEKED_LONG:
    case PEEKED_NUMBER:
      return JsonToken.NUMBER;
    case PEEKED_EOF:
      return JsonToken.END_DOCUMENT;
    default:
      throw new AssertionError();
    }
  }

  int doPeek() throws IOException {
    int PROBE_START_LINE_466 = 466;
	int[] f_stack_564_line_466 = stack;
	int f_stack_size_565_line_466 = stackSize;
	int json_reader_1_expr20_line_466 = f_stack_size_565_line_466 - 1;
	int json_reader_1_expr19_line_466 = f_stack_564_line_466[json_reader_1_expr20_line_466];
	int PROBE_END_LINE_466 = 466;
	int peekStack = json_reader_1_expr19_line_466;
    int PROBE_START_LINE_467 = 551;
	int v_peek_stack_572_line_467 = peekStack;
	int q_empty_array_41_line_467 = JsonScope.EMPTY_ARRAY;
	boolean json_reader_1_expr21_line_467 = v_peek_stack_572_line_467 == q_empty_array_41_line_467;
	int PROBE_END_LINE_467 = 551;
	if (json_reader_1_expr21_line_467) {
      stack[stackSize - 1] = JsonScope.NONEMPTY_ARRAY;
    } else {
		int PROBE_START_LINE_469 = 551;
		int v_peek_stack_572_line_469 = peekStack;
		int q_nonempty_array_42_line_469 = JsonScope.NONEMPTY_ARRAY;
		boolean json_reader_1_expr22_line_469 = v_peek_stack_572_line_469 == q_nonempty_array_42_line_469;
		int PROBE_END_LINE_469 = 551;
		if (json_reader_1_expr22_line_469) {
			int c = nextNonWhitespace(true);
			switch (c) {
				case ']' :
					return peeked = PEEKED_END_ARRAY;
				case ';' :
					checkLenient();
				case ',' :
					break;
				default :
					throw syntaxError("Unterminated array");
			}
		} else {
			int PROBE_START_LINE_482 = 551;
			int v_peek_stack_572_line_482 = peekStack;
			int q_empty_object_43_line_482 = JsonScope.EMPTY_OBJECT;
			boolean json_reader_1_expr24_line_482 = v_peek_stack_572_line_482 == q_empty_object_43_line_482;
			boolean json_reader_1_expr25_line_482 = false;
			if (!json_reader_1_expr24_line_482) {
				int v_peek_stack_572_line_482_v1 = peekStack;
				int q_nonempty_object_44_line_482 = JsonScope.NONEMPTY_OBJECT;
				json_reader_1_expr25_line_482 = v_peek_stack_572_line_482_v1 == q_nonempty_object_44_line_482;
			}
			boolean json_reader_1_expr23_line_482 = json_reader_1_expr24_line_482 || json_reader_1_expr25_line_482;
			int PROBE_END_LINE_482 = 551;
			if (json_reader_1_expr23_line_482) {
				stack[stackSize - 1] = JsonScope.DANGLING_NAME;
				if (peekStack == JsonScope.NONEMPTY_OBJECT) {
					int c = nextNonWhitespace(true);
					switch (c) {
						case '}' :
							return peeked = PEEKED_END_OBJECT;
						case ';' :
							checkLenient();
						case ',' :
							break;
						default :
							throw syntaxError("Unterminated object");
					}
				}
				int c = nextNonWhitespace(true);
				switch (c) {
					case '"' :
						return peeked = PEEKED_DOUBLE_QUOTED_NAME;
					case '\'' :
						checkLenient();
						return peeked = PEEKED_SINGLE_QUOTED_NAME;
					case '}' :
						if (peekStack != JsonScope.NONEMPTY_OBJECT) {
							return peeked = PEEKED_END_OBJECT;
						} else {
							throw syntaxError("Expected name");
						}
					default :
						checkLenient();
						pos--;
						if (isLiteral((char) c)) {
							return peeked = PEEKED_UNQUOTED_NAME;
						} else {
							throw syntaxError("Expected name");
						}
				}
			} else {
				int PROBE_START_LINE_520 = 551;
				int v_peek_stack_572_line_520 = peekStack;
				int q_dangling_name_45_line_520 = JsonScope.DANGLING_NAME;
				boolean json_reader_1_expr26_line_520 = v_peek_stack_572_line_520 == q_dangling_name_45_line_520;
				int PROBE_END_LINE_520 = 551;
				if (json_reader_1_expr26_line_520) {
					stack[stackSize - 1] = JsonScope.NONEMPTY_OBJECT;
					int c = nextNonWhitespace(true);
					switch (c) {
						case ':' :
							break;
						case '=' :
							checkLenient();
							if ((pos < limit || fillBuffer(1)) && buffer[pos] == '>') {
								pos++;
							}
							break;
						default :
							throw syntaxError("Expected ':'");
					}
				} else {
					int PROBE_START_LINE_536 = 551;
					int v_peek_stack_572_line_536 = peekStack;
					int q_empty_document_46_line_536 = JsonScope.EMPTY_DOCUMENT;
					boolean json_reader_1_expr27_line_536 = v_peek_stack_572_line_536 == q_empty_document_46_line_536;
					int PROBE_END_LINE_536 = 551;
					if (json_reader_1_expr27_line_536) {
						int PROBE_START_LINE_537 = 539;
						boolean f_lenient_556_line_537 = lenient;
						int PROBE_END_LINE_537 = 539;
						if (f_lenient_556_line_537) {
							consumeNonExecutePrefix();
						}
						int PROBE_START_LINE_540 = 540;
						int[] f_stack_564_line_540 = stack;
						int f_stack_size_565_line_540 = stackSize;
						int json_reader_1_expr31_line_540 = f_stack_size_565_line_540 - 1;
						int q_nonempty_document_46_line_540 = JsonScope.NONEMPTY_DOCUMENT;
						int PROBE_END_LINE_540 = 540;
						f_stack_564_line_540[json_reader_1_expr31_line_540] = q_nonempty_document_46_line_540;
					} else if (peekStack == JsonScope.NONEMPTY_DOCUMENT) {
						int c = nextNonWhitespace(false);
						if (c == -1) {
							return peeked = PEEKED_EOF;
						} else {
							checkLenient();
							pos--;
						}
					} else if (peekStack == JsonScope.CLOSED) {
						throw new IllegalStateException("JsonReader is closed");
					}
				}
			}
		}
	}

    int PROBE_START_LINE_553 = 553;
	int json_reader_1_expr32_line_553 = nextNonWhitespace(true);
	int PROBE_END_LINE_553 = 553;
	int c = json_reader_1_expr32_line_553;
    int PROBE_START_LINE_554 = 581;
	int v_c_573_line_554 = c;
	int PROBE_END_LINE_554 = 581;
	switch (v_c_573_line_554) {
    case ']':
      if (peekStack == JsonScope.EMPTY_ARRAY) {
        return peeked = PEEKED_END_ARRAY;
      }
      // fall-through to handle ",]"
    case ';':
    case ',':
      // In lenient mode, a 0-length literal in an array means 'null'.
      if (peekStack == JsonScope.EMPTY_ARRAY || peekStack == JsonScope.NONEMPTY_ARRAY) {
        checkLenient();
        pos--;
        return peeked = PEEKED_NULL;
      } else {
        throw syntaxError("Unexpected value");
      }
    case '\'':
      checkLenient();
      return peeked = PEEKED_SINGLE_QUOTED;
    case '"':
      return peeked = PEEKED_DOUBLE_QUOTED;
    case '[':
      return peeked = PEEKED_BEGIN_ARRAY;
    case '{':
      int PROBE_START_LINE_578 = 578;
	int f_peeked_begin_object_574_line_578 = PEEKED_BEGIN_OBJECT;
	int PROBE_END_LINE_578 = 578;
	return peeked = f_peeked_begin_object_574_line_578;
    default:
      pos--; // Don't consume the first character in a literal value.
    }

    int result = peekKeyword();
    if (result != PEEKED_NONE) {
      return result;
    }

    result = peekNumber();
    if (result != PEEKED_NONE) {
      return result;
    }

    if (!isLiteral(buffer[pos])) {
      throw syntaxError("Expected value");
    }

    checkLenient();
    return peeked = PEEKED_UNQUOTED;
  }

  private int peekKeyword() throws IOException {
    // Figure out which keyword we're matching against by its first character.
    char c = buffer[pos];
    String keyword;
    String keywordUpper;
    int peeking;
    if (c == 't' || c == 'T') {
      keyword = "true";
      keywordUpper = "TRUE";
      peeking = PEEKED_TRUE;
    } else if (c == 'f' || c == 'F') {
      keyword = "false";
      keywordUpper = "FALSE";
      peeking = PEEKED_FALSE;
    } else if (c == 'n' || c == 'N') {
      keyword = "null";
      keywordUpper = "NULL";
      peeking = PEEKED_NULL;
    } else {
      return PEEKED_NONE;
    }

    // Confirm that chars [1..length) match the keyword.
    int length = keyword.length();
    for (int i = 1; i < length; i++) {
      if (pos + i >= limit && !fillBuffer(i + 1)) {
        return PEEKED_NONE;
      }
      c = buffer[pos + i];
      if (c != keyword.charAt(i) && c != keywordUpper.charAt(i)) {
        return PEEKED_NONE;
      }
    }

    if ((pos + length < limit || fillBuffer(length + 1))
        && isLiteral(buffer[pos + length])) {
      return PEEKED_NONE; // Don't match trues, falsey or nullsoft!
    }

    // We've found the keyword followed either by EOF or by a non-literal character.
    pos += length;
    return peeked = peeking;
  }

  private int peekNumber() throws IOException {
    // Like nextNonWhitespace, this uses locals 'p' and 'l' to save inner-loop field access.
    char[] buffer = this.buffer;
    int p = pos;
    int l = limit;

    long value = 0; // Negative to accommodate Long.MIN_VALUE more easily.
    boolean negative = false;
    boolean fitsInLong = true;
    int last = NUMBER_CHAR_NONE;

    int i = 0;

    charactersOfNumber:
    for (; true; i++) {
      if (p + i == l) {
        if (i == buffer.length) {
          // Though this looks like a well-formed number, it's too long to continue reading. Give up
          // and let the application handle this as an unquoted literal.
          return PEEKED_NONE;
        }
        if (!fillBuffer(i + 1)) {
          break;
        }
        p = pos;
        l = limit;
      }

      char c = buffer[p + i];
      switch (c) {
      case '-':
        if (last == NUMBER_CHAR_NONE) {
          negative = true;
          last = NUMBER_CHAR_SIGN;
          continue;
        } else if (last == NUMBER_CHAR_EXP_E) {
          last = NUMBER_CHAR_EXP_SIGN;
          continue;
        }
        return PEEKED_NONE;

      case '+':
        if (last == NUMBER_CHAR_EXP_E) {
          last = NUMBER_CHAR_EXP_SIGN;
          continue;
        }
        return PEEKED_NONE;

      case 'e':
      case 'E':
        if (last == NUMBER_CHAR_DIGIT || last == NUMBER_CHAR_FRACTION_DIGIT) {
          last = NUMBER_CHAR_EXP_E;
          continue;
        }
        return PEEKED_NONE;

      case '.':
        if (last == NUMBER_CHAR_DIGIT) {
          last = NUMBER_CHAR_DECIMAL;
          continue;
        }
        return PEEKED_NONE;

      default:
        if (c < '0' || c > '9') {
          if (!isLiteral(c)) {
            break charactersOfNumber;
          }
          return PEEKED_NONE;
        }
        if (last == NUMBER_CHAR_SIGN || last == NUMBER_CHAR_NONE) {
          value = -(c - '0');
          last = NUMBER_CHAR_DIGIT;
        } else if (last == NUMBER_CHAR_DIGIT) {
          if (value == 0) {
            return PEEKED_NONE; // Leading '0' prefix is not allowed (since it could be octal).
          }
          long newValue = value * 10 - (c - '0');
          fitsInLong &= value > MIN_INCOMPLETE_INTEGER
              || (value == MIN_INCOMPLETE_INTEGER && newValue < value);
          value = newValue;
        } else if (last == NUMBER_CHAR_DECIMAL) {
          last = NUMBER_CHAR_FRACTION_DIGIT;
        } else if (last == NUMBER_CHAR_EXP_E || last == NUMBER_CHAR_EXP_SIGN) {
          last = NUMBER_CHAR_EXP_DIGIT;
        }
      }
    }

    // We've read a complete number. Decide if it's a PEEKED_LONG or a PEEKED_NUMBER.
    if (last == NUMBER_CHAR_DIGIT && fitsInLong && (value != Long.MIN_VALUE || negative)) {
      peekedLong = negative ? value : -value;
      pos += i;
      return peeked = PEEKED_LONG;
    } else if (last == NUMBER_CHAR_DIGIT || last == NUMBER_CHAR_FRACTION_DIGIT
        || last == NUMBER_CHAR_EXP_DIGIT) {
      peekedNumberLength = i;
      return peeked = PEEKED_NUMBER;
    } else {
      return PEEKED_NONE;
    }
  }

  private boolean isLiteral(char c) throws IOException {
    switch (c) {
    case '/':
    case '\\':
    case ';':
    case '#':
    case '=':
      checkLenient(); // fall-through
    case '{':
    case '}':
    case '[':
    case ']':
    case ':':
    case ',':
    case ' ':
    case '\t':
    case '\f':
    case '\r':
    case '\n':
      return false;
    default:
      return true;
    }
  }

  /**
   * Returns the next token, a {@link com.google.gson.stream.JsonToken#NAME property name}, and
   * consumes it.
   *
   * @throws java.io.IOException if the next token in the stream is not a property
   *     name.
   */
  public String nextName() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    String result;
    if (p == PEEKED_UNQUOTED_NAME) {
      result = nextUnquotedValue();
    } else if (p == PEEKED_SINGLE_QUOTED_NAME) {
      result = nextQuotedValue('\'');
    } else if (p == PEEKED_DOUBLE_QUOTED_NAME) {
      result = nextQuotedValue('"');
    } else {
      throw new IllegalStateException("Expected a name but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    peeked = PEEKED_NONE;
    pathNames[stackSize - 1] = result;
    return result;
  }

  /**
   * Returns the {@link com.google.gson.stream.JsonToken#STRING string} value of the next token,
   * consuming it. If the next token is a number, this method will return its
   * string form.
   *
   * @throws IllegalStateException if the next token is not a string or if
   *     this reader is closed.
   */
  public String nextString() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    String result;
    if (p == PEEKED_UNQUOTED) {
      result = nextUnquotedValue();
    } else if (p == PEEKED_SINGLE_QUOTED) {
      result = nextQuotedValue('\'');
    } else if (p == PEEKED_DOUBLE_QUOTED) {
      result = nextQuotedValue('"');
    } else if (p == PEEKED_BUFFERED) {
      result = peekedString;
      peekedString = null;
    } else if (p == PEEKED_LONG) {
      result = Long.toString(peekedLong);
    } else if (p == PEEKED_NUMBER) {
      result = new String(buffer, pos, peekedNumberLength);
      pos += peekedNumberLength;
    } else {
      throw new IllegalStateException("Expected a string but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    peeked = PEEKED_NONE;
    pathIndices[stackSize - 1]++;
    return result;
  }

  /**
   * Returns the {@link com.google.gson.stream.JsonToken#BOOLEAN boolean} value of the next token,
   * consuming it.
   *
   * @throws IllegalStateException if the next token is not a boolean or if
   *     this reader is closed.
   */
  public boolean nextBoolean() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    if (p == PEEKED_TRUE) {
      peeked = PEEKED_NONE;
      pathIndices[stackSize - 1]++;
      return true;
    } else if (p == PEEKED_FALSE) {
      peeked = PEEKED_NONE;
      pathIndices[stackSize - 1]++;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + peek()
        + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }

  /**
   * Consumes the next token from the JSON stream and asserts that it is a
   * literal null.
   *
   * @throws IllegalStateException if the next token is not null or if this
   *     reader is closed.
   */
  public void nextNull() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }
    if (p == PEEKED_NULL) {
      peeked = PEEKED_NONE;
      pathIndices[stackSize - 1]++;
    } else {
      throw new IllegalStateException("Expected null but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
  }

  /**
   * Returns the {@link com.google.gson.stream.JsonToken#NUMBER double} value of the next token,
   * consuming it. If the next token is a string, this method will attempt to
   * parse it as a double using {@link Double#parseDouble(String)}.
   *
   * @throws IllegalStateException if the next token is not a literal value.
   * @throws NumberFormatException if the next literal value cannot be parsed
   *     as a double, or is non-finite.
   */
  public double nextDouble() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }

    if (p == PEEKED_LONG) {
      peeked = PEEKED_NONE;
      pathIndices[stackSize - 1]++;
      return (double) peekedLong;
    }

    if (p == PEEKED_NUMBER) {
      peekedString = new String(buffer, pos, peekedNumberLength);
      pos += peekedNumberLength;
    } else if (p == PEEKED_SINGLE_QUOTED || p == PEEKED_DOUBLE_QUOTED) {
      peekedString = nextQuotedValue(p == PEEKED_SINGLE_QUOTED ? '\'' : '"');
    } else if (p == PEEKED_UNQUOTED) {
      peekedString = nextUnquotedValue();
    } else if (p != PEEKED_BUFFERED) {
      throw new IllegalStateException("Expected a double but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    peeked = PEEKED_BUFFERED;
    double result = Double.parseDouble(peekedString); // don't catch this NumberFormatException.
    if (!lenient && (Double.isNaN(result) || Double.isInfinite(result))) {
      throw new MalformedJsonException("JSON forbids NaN and infinities: " + result
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    peekedString = null;
    peeked = PEEKED_NONE;
    pathIndices[stackSize - 1]++;
    return result;
  }

  /**
   * Returns the {@link com.google.gson.stream.JsonToken#NUMBER long} value of the next token,
   * consuming it. If the next token is a string, this method will attempt to
   * parse it as a long. If the next token's numeric value cannot be exactly
   * represented by a Java {@code long}, this method throws.
   *
   * @throws IllegalStateException if the next token is not a literal value.
   * @throws NumberFormatException if the next literal value cannot be parsed
   *     as a number, or exactly represented as a long.
   */
  public long nextLong() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }

    if (p == PEEKED_LONG) {
      peeked = PEEKED_NONE;
      pathIndices[stackSize - 1]++;
      return peekedLong;
    }

    if (p == PEEKED_NUMBER) {
      peekedString = new String(buffer, pos, peekedNumberLength);
      pos += peekedNumberLength;
    } else if (p == PEEKED_SINGLE_QUOTED || p == PEEKED_DOUBLE_QUOTED) {
      peekedString = nextQuotedValue(p == PEEKED_SINGLE_QUOTED ? '\'' : '"');
      try {
        long result = Long.parseLong(peekedString);
        peeked = PEEKED_NONE;
        pathIndices[stackSize - 1]++;
        return result;
      } catch (NumberFormatException ignored) {
        // Fall back to parse as a double below.
      }
    } else {
      throw new IllegalStateException("Expected a long but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    peeked = PEEKED_BUFFERED;
    double asDouble = Double.parseDouble(peekedString); // don't catch this NumberFormatException.
    long result = (long) asDouble;
    if (result != asDouble) { // Make sure no precision was lost casting to 'long'.
      throw new NumberFormatException("Expected a long but was " + peekedString
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    peekedString = null;
    peeked = PEEKED_NONE;
    pathIndices[stackSize - 1]++;
    return result;
  }

  /**
   * Returns the string up to but not including {@code quote}, unescaping any
   * character escape sequences encountered along the way. The opening quote
   * should have already been read. This consumes the closing quote, but does
   * not include it in the returned string.
   *
   * @param quote either ' or ".
   * @throws NumberFormatException if any unicode escape sequences are
   *     malformed.
   */
  private String nextQuotedValue(char quote) throws IOException {
    // Like nextNonWhitespace, this uses locals 'p' and 'l' to save inner-loop field access.
    char[] buffer = this.buffer;
    StringBuilder builder = new StringBuilder();
    while (true) {
      int p = pos;
      int l = limit;
      /* the index of the first character not yet appended to the builder. */
      int start = p;
      while (p < l) {
        int c = buffer[p++];

        if (c == quote) {
          pos = p;
          builder.append(buffer, start, p - start - 1);
          return builder.toString();
        } else if (c == '\\') {
          pos = p;
          builder.append(buffer, start, p - start - 1);
          builder.append(readEscapeCharacter());
          p = pos;
          l = limit;
          start = p;
        } else if (c == '\n') {
          lineNumber++;
          lineStart = p;
        }
      }

      builder.append(buffer, start, p - start);
      pos = p;
      if (!fillBuffer(1)) {
        throw syntaxError("Unterminated string");
      }
    }
  }

  /**
   * Returns an unquoted value as a string.
   */
  @SuppressWarnings("fallthrough")
  private String nextUnquotedValue() throws IOException {
    StringBuilder builder = null;
    int i = 0;

    findNonLiteralCharacter:
    while (true) {
      for (; pos + i < limit; i++) {
        switch (buffer[pos + i]) {
        case '/':
        case '\\':
        case ';':
        case '#':
        case '=':
          checkLenient(); // fall-through
        case '{':
        case '}':
        case '[':
        case ']':
        case ':':
        case ',':
        case ' ':
        case '\t':
        case '\f':
        case '\r':
        case '\n':
          break findNonLiteralCharacter;
        }
      }

      // Attempt to load the entire literal into the buffer at once.
      if (i < buffer.length) {
        if (fillBuffer(i + 1)) {
          continue;
        } else {
          break;
        }
      }

      // use a StringBuilder when the value is too long. This is too long to be a number!
      if (builder == null) {
        builder = new StringBuilder();
      }
      builder.append(buffer, pos, i);
      pos += i;
      i = 0;
      if (!fillBuffer(1)) {
        break;
      }
    }

    String result;
    if (builder == null) {
      result = new String(buffer, pos, i);
    } else {
      builder.append(buffer, pos, i);
      result = builder.toString();
    }
    pos += i;
    return result;
  }

  private void skipQuotedValue(char quote) throws IOException {
    // Like nextNonWhitespace, this uses locals 'p' and 'l' to save inner-loop field access.
    char[] buffer = this.buffer;
    do {
      int p = pos;
      int l = limit;
      /* the index of the first character not yet appended to the builder. */
      while (p < l) {
        int c = buffer[p++];
        if (c == quote) {
          pos = p;
          return;
        } else if (c == '\\') {
          pos = p;
          readEscapeCharacter();
          p = pos;
          l = limit;
        } else if (c == '\n') {
          lineNumber++;
          lineStart = p;
        }
      }
      pos = p;
    } while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }

  private void skipUnquotedValue() throws IOException {
    do {
      int i = 0;
      for (; pos + i < limit; i++) {
        switch (buffer[pos + i]) {
        case '/':
        case '\\':
        case ';':
        case '#':
        case '=':
          checkLenient(); // fall-through
        case '{':
        case '}':
        case '[':
        case ']':
        case ':':
        case ',':
        case ' ':
        case '\t':
        case '\f':
        case '\r':
        case '\n':
          pos += i;
          return;
        }
      }
      pos += i;
    } while (fillBuffer(1));
  }

  /**
   * Returns the {@link com.google.gson.stream.JsonToken#NUMBER int} value of the next token,
   * consuming it. If the next token is a string, this method will attempt to
   * parse it as an int. If the next token's numeric value cannot be exactly
   * represented by a Java {@code int}, this method throws.
   *
   * @throws IllegalStateException if the next token is not a literal value.
   * @throws NumberFormatException if the next literal value cannot be parsed
   *     as a number, or exactly represented as an int.
   */
  public int nextInt() throws IOException {
    int p = peeked;
    if (p == PEEKED_NONE) {
      p = doPeek();
    }

    int result;
    if (p == PEEKED_LONG) {
      result = (int) peekedLong;
      if (peekedLong != result) { // Make sure no precision was lost casting to 'int'.
        throw new NumberFormatException("Expected an int but was " + peekedLong
            + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
      }
      peeked = PEEKED_NONE;
      pathIndices[stackSize - 1]++;
      return result;
    }

    if (p == PEEKED_NUMBER) {
      peekedString = new String(buffer, pos, peekedNumberLength);
      pos += peekedNumberLength;
    } else if (p == PEEKED_SINGLE_QUOTED || p == PEEKED_DOUBLE_QUOTED) {
      peekedString = nextQuotedValue(p == PEEKED_SINGLE_QUOTED ? '\'' : '"');
      try {
        result = Integer.parseInt(peekedString);
        peeked = PEEKED_NONE;
        pathIndices[stackSize - 1]++;
        return result;
      } catch (NumberFormatException ignored) {
        // Fall back to parse as a double below.
      }
    } else {
      throw new IllegalStateException("Expected an int but was " + peek()
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    peeked = PEEKED_BUFFERED;
    double asDouble = Double.parseDouble(peekedString); // don't catch this NumberFormatException.
    result = (int) asDouble;
    if (result != asDouble) { // Make sure no precision was lost casting to 'int'.
      throw new NumberFormatException("Expected an int but was " + peekedString
          + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }
    peekedString = null;
    peeked = PEEKED_NONE;
    pathIndices[stackSize - 1]++;
    return result;
  }

  /**
   * Closes this JSON reader and the underlying {@link java.io.Reader}.
   */
  public void close() throws IOException {
    peeked = PEEKED_NONE;
    stack[0] = JsonScope.CLOSED;
    stackSize = 1;
    in.close();
  }

  /**
   * Skips the next value recursively. If it is an object or array, all nested
   * elements are skipped. This method is intended for use when the JSON token
   * stream contains unrecognized or unhandled values.
   */
  public void skipValue() throws IOException {
    int count = 0;
    do {
      int p = peeked;
      if (p == PEEKED_NONE) {
        p = doPeek();
      }

      if (p == PEEKED_BEGIN_ARRAY) {
        push(JsonScope.EMPTY_ARRAY);
        count++;
      } else if (p == PEEKED_BEGIN_OBJECT) {
        push(JsonScope.EMPTY_OBJECT);
        count++;
      } else if (p == PEEKED_END_ARRAY) {
        stackSize--;
        count--;
      } else if (p == PEEKED_END_OBJECT) {
        stackSize--;
        count--;
      } else if (p == PEEKED_UNQUOTED_NAME || p == PEEKED_UNQUOTED) {
        skipUnquotedValue();
      } else if (p == PEEKED_SINGLE_QUOTED || p == PEEKED_SINGLE_QUOTED_NAME) {
        skipQuotedValue('\'');
      } else if (p == PEEKED_DOUBLE_QUOTED || p == PEEKED_DOUBLE_QUOTED_NAME) {
        skipQuotedValue('"');
      } else if (p == PEEKED_NUMBER) {
        pos += peekedNumberLength;
      }
      peeked = PEEKED_NONE;
    } while (count != 0);

    pathIndices[stackSize - 1]++;
    pathNames[stackSize - 1] = "null";
  }

  private void push(int newTop) {
    if (stackSize == stack.length) {
      int[] newStack = new int[stackSize * 2];
      int[] newPathIndices = new int[stackSize * 2];
      String[] newPathNames = new String[stackSize * 2];
      System.arraycopy(stack, 0, newStack, 0, stackSize);
      System.arraycopy(pathIndices, 0, newPathIndices, 0, stackSize);
      System.arraycopy(pathNames, 0, newPathNames, 0, stackSize);
      stack = newStack;
      pathIndices = newPathIndices;
      pathNames = newPathNames;
    }
    stack[stackSize++] = newTop;
  }

  /**
   * Returns true once {@code limit - pos >= minimum}. If the data is
   * exhausted before that many characters are available, this returns
   * false.
   */
  private boolean fillBuffer(int minimum) throws IOException {
    int PROBE_START_LINE_1282 = 1282;
	char[] f_buffer_557_line_1282 = this.buffer;
	int PROBE_END_LINE_1282 = 1282;
	char[] buffer = f_buffer_557_line_1282;
    int PROBE_START_LINE_1283 = 1283;
	int f_pos_558_line_1283 = pos;
	int PROBE_END_LINE_1283 = 1283;
	lineStart -= f_pos_558_line_1283;
    int PROBE_START_LINE_1284 = 1289;
	int f_limit_559_line_1284 = limit;
	int f_pos_558_line_1284 = pos;
	boolean json_reader_1_expr37_line_1284 = f_limit_559_line_1284 != f_pos_558_line_1284;
	int PROBE_END_LINE_1284 = 1289;
	if (json_reader_1_expr37_line_1284) {
      limit -= pos;
      System.arraycopy(buffer, pos, buffer, 0, limit);
    } else {
      limit = 0;
    }

    pos = 0;
    int total = 0;
    while (true) {
      int PROBE_START_LINE_1293 = 1293;
		java.io.Reader f_in_569_line_1293 = in;
		char[] v_buffer_580_line_1293 = buffer;
		int f_limit_559_line_1293 = limit;
		char[] v_buffer_580_line_1293_v1 = buffer;
		int q_length_47_line_1293 = v_buffer_580_line_1293_v1.length;
		int f_limit_559_line_1293_v1 = limit;
		int json_reader_1_expr44_line_1293 = q_length_47_line_1293 - f_limit_559_line_1293_v1;
		int json_reader_1_expr43_line_1293 = f_in_569_line_1293.read(v_buffer_580_line_1293, f_limit_559_line_1293,
				json_reader_1_expr44_line_1293);
		int json_reader_1_expr41_line_1293 = (total = json_reader_1_expr43_line_1293);
		int json_reader_1_expr45_line_1293 = -1;
		boolean json_reader_1_expr40_line_1293 = json_reader_1_expr41_line_1293 != json_reader_1_expr45_line_1293;
		if (!(json_reader_1_expr40_line_1293)) {
			break;
		}
		int PROBE_END_LINE_1293 = 1293;
		int PROBE_START_LINE_1294 = 1294;
		int v_total_581_line_1294 = total;
		int PROBE_END_LINE_1294 = 1294;
	limit += v_total_581_line_1294;

      int PROBE_START_LINE_1297 = 1301;
	int f_line_number_560_line_1297 = lineNumber;
	boolean json_reader_1_expr50_line_1297 = f_line_number_560_line_1297 == 0;
	boolean json_reader_1_expr51_line_1297 = true;
	if (json_reader_1_expr50_line_1297) {
		int f_line_start_561_line_1297 = lineStart;
		json_reader_1_expr51_line_1297 = f_line_start_561_line_1297 == 0;
	}
	boolean json_reader_1_expr49_line_1297 = json_reader_1_expr50_line_1297 && json_reader_1_expr51_line_1297;
	boolean json_reader_1_expr52_line_1297 = true;
	if (json_reader_1_expr49_line_1297) {
		int f_limit_559_line_1297 = limit;
		json_reader_1_expr52_line_1297 = f_limit_559_line_1297 > 0;
	}
	boolean json_reader_1_expr48_line_1297 = json_reader_1_expr49_line_1297 && json_reader_1_expr52_line_1297;
	boolean json_reader_1_expr53_line_1297 = true;
	if (json_reader_1_expr48_line_1297) {
		char[] v_buffer_580_line_1297 = buffer;
		char json_reader_1_expr54_line_1297 = v_buffer_580_line_1297[0];
		json_reader_1_expr53_line_1297 = json_reader_1_expr54_line_1297 == '\ufeff';
	}
	boolean json_reader_1_expr47_line_1297 = json_reader_1_expr48_line_1297 && json_reader_1_expr53_line_1297;
	int PROBE_END_LINE_1297 = 1301;
	// if this is the first read, consume an optional byte order mark (BOM) if it exists
      if (json_reader_1_expr47_line_1297) {
        pos++;
        lineStart++;
        minimum++;
      }

      int PROBE_START_LINE_1303 = 1305;
	int f_limit_559_line_1303 = limit;
	int p_minimum_579_line_1303 = minimum;
	boolean json_reader_1_expr55_line_1303 = f_limit_559_line_1303 >= p_minimum_579_line_1303;
	int PROBE_END_LINE_1303 = 1305;
	if (json_reader_1_expr55_line_1303) {
        return true;
      }
    }
    return false;
  }

  int getLineNumber() {
    return lineNumber + 1;
  }

  int getColumnNumber() {
    return pos - lineStart + 1;
  }

  /**
   * Returns the next character in the stream that is neither whitespace nor a
   * part of a comment. When this returns, the returned character is always at
   * {@code buffer[pos-1]}; this means the caller can always push back the
   * returned character by decrementing {@code pos}.
   */
  private int nextNonWhitespace(boolean throwOnEof) throws IOException {
    int PROBE_START_LINE_1333 = 1333;
	char[] f_buffer_557_line_1333 = this.buffer;
	int PROBE_END_LINE_1333 = 1333;
	/*
     * This code uses ugly local variables 'p' and 'l' representing the 'pos'
     * and 'limit' fields respectively. Using locals rather than fields saves
     * a few field reads for each whitespace character in a pretty-printed
     * document, resulting in a 5% speedup. We need to flush 'p' to its field
     * before any (potentially indirect) call to fillBuffer() and reread both
     * 'p' and 'l' after any (potentially indirect) call to the same method.
     */
    char[] buffer = f_buffer_557_line_1333;
    int PROBE_START_LINE_1334 = 1334;
	int f_pos_558_line_1334 = pos;
	int PROBE_END_LINE_1334 = 1334;
	int p = f_pos_558_line_1334;
    int PROBE_START_LINE_1335 = 1335;
	int f_limit_559_line_1335 = limit;
	int PROBE_END_LINE_1335 = 1335;
	int l = f_limit_559_line_1335;
    while (true) {
      int PROBE_START_LINE_1337 = 1344;
		int v_p_584_line_1337 = p;
		int v_l_585_line_1337 = l;
		boolean json_reader_1_expr58_line_1337 = v_p_584_line_1337 == v_l_585_line_1337;
		int PROBE_END_LINE_1337 = 1344;
	if (json_reader_1_expr58_line_1337) {
        int PROBE_START_LINE_1338 = 1338;
		int v_p_584_line_1338 = p;
		int PROBE_END_LINE_1338 = 1338;
		pos = v_p_584_line_1338;
        int PROBE_START_LINE_1339 = 1341;
		boolean json_reader_1_expr61_line_1339 = fillBuffer(1);
		boolean json_reader_1_expr60_line_1339 = !json_reader_1_expr61_line_1339;
		int PROBE_END_LINE_1339 = 1341;
		if (json_reader_1_expr60_line_1339) {
          break;
        }
        int PROBE_START_LINE_1342 = 1342;
		int f_pos_558_line_1342 = pos;
		int PROBE_END_LINE_1342 = 1342;
		p = f_pos_558_line_1342;
        int PROBE_START_LINE_1343 = 1343;
		int f_limit_559_line_1343 = limit;
		int PROBE_END_LINE_1343 = 1343;
		l = f_limit_559_line_1343;
      }

      int PROBE_START_LINE_1346 = 1346;
	char[] v_buffer_583_line_1346 = buffer;
	int json_reader_1_expr64_line_1346 = v_buffer_583_line_1346[p++];
	int PROBE_END_LINE_1346 = 1346;
	int c = json_reader_1_expr64_line_1346;
      int PROBE_START_LINE_1347 = 1353;
	int v_c_586_line_1347 = c;
	boolean json_reader_1_expr66_line_1347 = v_c_586_line_1347 == '\n';
	int PROBE_END_LINE_1347 = 1353;
	if (json_reader_1_expr66_line_1347) {
        lineNumber++;
        lineStart = p;
        continue;
      } else {
		int PROBE_START_LINE_1351 = 1353;
		int v_c_586_line_1351 = c;
		boolean json_reader_1_expr69_line_1351 = v_c_586_line_1351 == ' ';
		boolean json_reader_1_expr70_line_1351 = false;
		if (!json_reader_1_expr69_line_1351) {
			int v_c_586_line_1351_v1 = c;
			json_reader_1_expr70_line_1351 = v_c_586_line_1351_v1 == '\r';
		}
		boolean json_reader_1_expr68_line_1351 = json_reader_1_expr69_line_1351 || json_reader_1_expr70_line_1351;
		boolean json_reader_1_expr71_line_1351 = false;
		if (!json_reader_1_expr68_line_1351) {
			int v_c_586_line_1351_v2 = c;
			json_reader_1_expr71_line_1351 = v_c_586_line_1351_v2 == '\t';
		}
		boolean json_reader_1_expr67_line_1351 = json_reader_1_expr68_line_1351 || json_reader_1_expr71_line_1351;
		int PROBE_END_LINE_1351 = 1353;
		if (json_reader_1_expr67_line_1351) {
			continue;
		}
	}

      int PROBE_START_LINE_1355 = 1404;
	int v_c_586_line_1355 = c;
	boolean json_reader_1_expr72_line_1355 = v_c_586_line_1355 == '/';
	int PROBE_END_LINE_1355 = 1404;
	if (json_reader_1_expr72_line_1355) {
        pos = p;
        if (p == l) {
          pos--; // push back '/' so it's still in the buffer when this method returns
          boolean charsLoaded = fillBuffer(2);
          pos++; // consume the '/' again
          if (!charsLoaded) {
            return c;
          }
        }

        checkLenient();
        char peek = buffer[pos];
        switch (peek) {
        case '*':
          // skip a /* c-style comment */
          pos++;
          if (!skipTo("*/")) {
            throw syntaxError("Unterminated comment");
          }
          p = pos + 2;
          l = limit;
          continue;

        case '/':
          // skip a // end-of-line comment
          pos++;
          skipToEndOfLine();
          p = pos;
          l = limit;
          continue;

        default:
          return c;
        }
      } else {
		int PROBE_START_LINE_1390 = 1404;
		int v_c_586_line_1390 = c;
		boolean json_reader_1_expr73_line_1390 = v_c_586_line_1390 == '#';
		int PROBE_END_LINE_1390 = 1404;
		if (json_reader_1_expr73_line_1390) {
			pos = p;
			checkLenient();
			skipToEndOfLine();
			p = pos;
			l = limit;
		} else {
			int PROBE_START_LINE_1402 = 1402;
			int v_p_584_line_1402 = p;
			int PROBE_END_LINE_1402 = 1402;
			pos = v_p_584_line_1402;
			int PROBE_START_LINE_1403 = 1403;
			int v_c_586_line_1403 = c;
			int PROBE_END_LINE_1403 = 1403;
			return v_c_586_line_1403;
		}
	}
    }
    if (throwOnEof) {
      throw new EOFException("End of input"
          + " at line " + getLineNumber() + " column " + getColumnNumber());
    } else {
      return -1;
    }
  }

  private void checkLenient() throws IOException {
    if (!lenient) {
      throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
    }
  }

  /**
   * Advances the position until after the next newline character. If the line
   * is terminated by "\r\n", the '\n' must be consumed as whitespace by the
   * caller.
   */
  private void skipToEndOfLine() throws IOException {
    while (pos < limit || fillBuffer(1)) {
      char c = buffer[pos++];
      if (c == '\n') {
        lineNumber++;
        lineStart = pos;
        break;
      } else if (c == '\r') {
        break;
      }
    }
  }

  /**
   * @param toFind a string to search for. Must not contain a newline.
   */
  private boolean skipTo(String toFind) throws IOException {
    outer:
    for (; pos + toFind.length() <= limit || fillBuffer(toFind.length()); pos++) {
      if (buffer[pos] == '\n') {
        lineNumber++;
        lineStart = pos + 1;
        continue;
      }
      for (int c = 0; c < toFind.length(); c++) {
        if (buffer[pos + c] != toFind.charAt(c)) {
          continue outer;
        }
      }
      return true;
    }
    return false;
  }

  @Override public String toString() {
    return getClass().getSimpleName()
        + " at line " + getLineNumber() + " column " + getColumnNumber();
  }

  /**
   * Returns a <a href="http://goessner.net/articles/JsonPath/">JsonPath</a> to
   * the current location in the JSON value.
   */
  public String getPath() {
    StringBuilder result = new StringBuilder().append('$');
    for (int i = 0, size = stackSize; i < size; i++) {
      switch (stack[i]) {
        case JsonScope.EMPTY_ARRAY:
        case JsonScope.NONEMPTY_ARRAY:
          result.append('[').append(pathIndices[i]).append(']');
          break;

        case JsonScope.EMPTY_OBJECT:
        case JsonScope.DANGLING_NAME:
        case JsonScope.NONEMPTY_OBJECT:
          result.append('.');
          if (pathNames[i] != null) {
            result.append(pathNames[i]);
          }
          break;

        case JsonScope.NONEMPTY_DOCUMENT:
        case JsonScope.EMPTY_DOCUMENT:
        case JsonScope.CLOSED:
          break;
      }
    }
    return result.toString();
  }

  /**
   * Unescapes the character identified by the character or characters that
   * immediately follow a backslash. The backslash '\' should have already
   * been read. This supports both unicode escapes "u000A" and two-character
   * escapes "\n".
   *
   * @throws NumberFormatException if any unicode escape sequences are
   *     malformed.
   */
  private char readEscapeCharacter() throws IOException {
    if (pos == limit && !fillBuffer(1)) {
      throw syntaxError("Unterminated escape sequence");
    }

    char escaped = buffer[pos++];
    switch (escaped) {
    case 'u':
      if (pos + 4 > limit && !fillBuffer(4)) {
        throw syntaxError("Unterminated escape sequence");
      }
      // Equivalent to Integer.parseInt(stringPool.get(buffer, pos, 4), 16);
      char result = 0;
      for (int i = pos, end = i + 4; i < end; i++) {
        char c = buffer[i];
        result <<= 4;
        if (c >= '0' && c <= '9') {
          result += (c - '0');
        } else if (c >= 'a' && c <= 'f') {
          result += (c - 'a' + 10);
        } else if (c >= 'A' && c <= 'F') {
          result += (c - 'A' + 10);
        } else {
          throw new NumberFormatException("\\u" + new String(buffer, pos, 4));
        }
      }
      pos += 4;
      return result;

    case 't':
      return '\t';

    case 'b':
      return '\b';

    case 'n':
      return '\n';

    case 'r':
      return '\r';

    case 'f':
      return '\f';

    case '\n':
      lineNumber++;
      lineStart = pos;
      // fall-through

    case '\'':
    case '"':
    case '\\':
    default:
      return escaped;
    }
  }

  /**
   * Throws a new IO exception with the given message and a context snippet
   * with this reader's content.
   */
  private IOException syntaxError(String message) throws IOException {
    throw new MalformedJsonException(message
        + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
  }

  /**
   * Consumes the non-execute prefix if it exists.
   */
  private void consumeNonExecutePrefix() throws IOException {
    // fast forward through the leading whitespace
    nextNonWhitespace(true);
    pos--;

    int PROBE_START_LINE_1578 = 1580;
	int f_pos_558_line_1578 = pos;
	char[] f_non_execute_prefix_555_line_1578 = NON_EXECUTE_PREFIX;
	int q_length_48_line_1578 = f_non_execute_prefix_555_line_1578.length;
	int json_reader_1_expr79_line_1578 = f_pos_558_line_1578 + q_length_48_line_1578;
	int f_limit_559_line_1578 = limit;
	boolean json_reader_1_expr78_line_1578 = json_reader_1_expr79_line_1578 > f_limit_559_line_1578;
	boolean json_reader_1_expr80_line_1578 = true;
	if (json_reader_1_expr78_line_1578) {
		char[] f_non_execute_prefix_555_line_1578_v1 = NON_EXECUTE_PREFIX;
		int q_length_49_line_1578 = f_non_execute_prefix_555_line_1578_v1.length;
		boolean json_reader_1_expr81_line_1578 = fillBuffer(q_length_49_line_1578);
		json_reader_1_expr80_line_1578 = !json_reader_1_expr81_line_1578;
	}
	boolean json_reader_1_expr77_line_1578 = json_reader_1_expr78_line_1578 && json_reader_1_expr80_line_1578;
	int PROBE_END_LINE_1578 = 1580;
	if (json_reader_1_expr77_line_1578) {
      return;
    }

    for (int i = 0; true; i++) {
      int PROBE_START_LINE_1583 = 1585;
		int v_i_589_line_1582 = i;
		char[] f_non_execute_prefix_555_line_1582 = NON_EXECUTE_PREFIX;
		int q_length_49_line_1582 = f_non_execute_prefix_555_line_1582.length;
		boolean json_reader_1_expr83_line_1582 = v_i_589_line_1582 < q_length_49_line_1582;
		if (!(json_reader_1_expr83_line_1582)) {
			break;
		}
		char[] f_buffer_557_line_1583 = buffer;
		int f_pos_558_line_1583 = pos;
		int v_i_589_line_1583 = i;
		int json_reader_1_expr87_line_1583 = f_pos_558_line_1583 + v_i_589_line_1583;
		char json_reader_1_expr86_line_1583 = f_buffer_557_line_1583[json_reader_1_expr87_line_1583];
		char[] f_non_execute_prefix_555_line_1583 = NON_EXECUTE_PREFIX;
		int v_i_589_line_1583_v1 = i;
		char json_reader_1_expr88_line_1583 = f_non_execute_prefix_555_line_1583[v_i_589_line_1583_v1];
		boolean json_reader_1_expr85_line_1583 = json_reader_1_expr86_line_1583 != json_reader_1_expr88_line_1583;
		int PROBE_END_LINE_1583 = 1585;
	if (json_reader_1_expr85_line_1583) {
        return; // not a security token!
      }
    }

    // we consumed a security token!
    pos += NON_EXECUTE_PREFIX.length;
  }

  static {
    JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() {
      @Override public void promoteNameToValue(JsonReader reader) throws IOException {
        if (reader instanceof JsonTreeReader) {
          ((JsonTreeReader)reader).promoteNameToValue();
          return;
        }
        int p = reader.peeked;
        if (p == PEEKED_NONE) {
          p = reader.doPeek();
        }
        if (p == PEEKED_DOUBLE_QUOTED_NAME) {
          reader.peeked = PEEKED_DOUBLE_QUOTED;
        } else if (p == PEEKED_SINGLE_QUOTED_NAME) {
          reader.peeked = PEEKED_SINGLE_QUOTED;
        } else if (p == PEEKED_UNQUOTED_NAME) {
          reader.peeked = PEEKED_UNQUOTED;
        } else {
          throw new IllegalStateException("Expected a name but was " + reader.peek() + " "
              + " at line " + reader.getLineNumber() + " column " + reader.getColumnNumber()
              + " path " + reader.getPath());
        }
      }
    };
  }
}
