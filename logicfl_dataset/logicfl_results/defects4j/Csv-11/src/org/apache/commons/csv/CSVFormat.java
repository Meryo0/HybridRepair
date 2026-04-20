/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.commons.csv;

import static org.apache.commons.csv.Constants.BACKSLASH;
import static org.apache.commons.csv.Constants.COMMA;
import static org.apache.commons.csv.Constants.CR;
import static org.apache.commons.csv.Constants.CRLF;
import static org.apache.commons.csv.Constants.DOUBLE_QUOTE_CHAR;
import static org.apache.commons.csv.Constants.LF;
import static org.apache.commons.csv.Constants.TAB;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/**
 * Specifies the format of a CSV file and parses input.
 *
 * <h2>Using predefined formats</h2>
 *
 * <p>
 * You can use one of the predefined formats:
 * </p>
 *
 * <ul>
 *      <li>{@link #DEFAULT}</li>
 *      <li>{@link #EXCEL}</li>
 *      <li>{@link #MYSQL}</li>
 *      <li>{@link #RFC4180}</li>
 *      <li>{@link #TDF}</li>
 * </ul>
 *
 * <p>
 * For example:
 * </p>
 *
 * <pre>
 * CSVParser parser = CSVFormat.EXCEL.parse(reader);
 * </pre>
 *
 * <p>
 * The {@link CSVRecord} provides static methods to parse other input types, for example:
 * </p>
 *
 * <pre>CSVParser parser = CSVFormat.parseFile(file, CSVFormat.EXCEL);</pre>
 *
 * <h2>Defining formats</h2>
 *
 * <p>
 * You can extend a format by calling the {@code with} methods. For example:
 * </p>
 *
 * <pre>
 * CSVFormat.EXCEL
 *   .withNullString(&quot;N/A&quot;)
 *   .withIgnoreSurroundingSpaces(true);
 * </pre>
 *
 * <h2>Defining column names</h2>
 *
 * <p>
 * To define the column names you want to use to access records, write:
 * </p>
 *
 * <pre>
 * CSVFormat.EXCEL.withHeader(&quot;Col1&quot;, &quot;Col2&quot;, &quot;Col3&quot;);
 * </pre>
 *
 * <p>
 * Calling {@link #withHeader(String...)} let's you use the given names to address values in a {@link CSVRecord}, and
 * assumes that your CSV source does not contain a first record that also defines column names.
 *
 * If it does, then you are overriding this metadata with your names and you should skip the first record by calling
 * {@link #withSkipHeaderRecord(boolean)} with {@code true}.
 * </p>
 *
 * <h2>Parsing</h2>
 *
 * <p>
 * You can use a format directly to parse a reader. For example, to parse an Excel file with columns header, write:
 * </p>
 *
 * <pre>
 * Reader in = ...;
 * CSVFormat.EXCEL.withHeader(&quot;Col1&quot;, &quot;Col2&quot;, &quot;Col3&quot;).parse(in);
 * </pre>
 *
 * <p>
 * For other input types, like resources, files, and URLs, use the static methods on {@link CSVParser}.
 * </p>
 *
 * <h2>Referencing columns safely</h2>
 *
 * <p>
 * If your source contains a header record, you can simplify your code and safely reference columns,
 * by using {@link #withHeader(String...)} with no arguments:
 * </p>
 *
 * <pre>
 * CSVFormat.EXCEL.withHeader();
 * </pre>
 *
 * <p>
 * This causes the parser to read the first record and use its values as column names.
 *
 * Then, call one of the {@link CSVRecord} get method that takes a String column name argument:
 * </p>
 *
 * <pre>
 * String value = record.get(&quot;Col1&quot;);
 * </pre>
 *
 * <p>
 * This makes your code impervious to changes in column order in the CSV file.
 * </p>
 *
 * <h2>Notes</h2>
 *
 * <p>
 * This class is immutable.
 * </p>
 *
 * @version $Id$
 */
public final class CSVFormat implements Serializable {

    private static final long serialVersionUID = 1L;

    private final char delimiter;
    private final Character quoteChar; // null if quoting is disabled
    private final Quote quotePolicy;
    private final Character commentStart; // null if commenting is disabled
    private final Character escape; // null if escaping is disabled
    private final boolean ignoreSurroundingSpaces; // Should leading/trailing spaces be ignored around values?
    private final boolean ignoreEmptyHeaders;
    private final boolean ignoreEmptyLines;
    private final String recordSeparator; // for outputs
    private final String nullString; // the string to be used for null values
    private final String[] header; // array of header column names
    private final boolean skipHeaderRecord;

    int PROBE_START_LINE_162 = 176;

	public static final char f_comma_4_line_175 = COMMA;

	public static final Character f_double_quote_char_5_line_175 = DOUBLE_QUOTE_CHAR;

	int PROBE_END_LINE_162 = 176;

	/**
     * Standard comma separated format, as for {@link #RFC4180} but allowing empty lines.
     * <h3>RFC 4180:</h3>
     * <ul>
     * <li>withDelimiter(',')</li>
     * <li>withQuoteChar('"')</li>
     * <li>withRecordSeparator(CRLF)</li>
     * </ul>
     * <h3>Additional:</h3>
     * <ul>
     * <li>withIgnoreEmptyLines(true)</li>
     * </ul>
     */
    public static final CSVFormat DEFAULT = new CSVFormat(f_comma_4_line_175, f_double_quote_char_5_line_175, null, null, null,
                                                            false, true, CRLF, null, null, false, false);

    int PROBE_START_LINE_178 = 187;

	public static final org.apache.commons.csv.CSVFormat f_default_3_line_187 = DEFAULT;

	public static final org.apache.commons.csv.CSVFormat csvformat_1_expr2_line_187 = f_default_3_line_187
			.withIgnoreEmptyLines(false);

	int PROBE_END_LINE_178 = 187;

	/**
     * Comma separated format as defined by <a href="http://tools.ietf.org/html/rfc4180">RFC 4180</a>.
     * <h3>RFC 4180:</h3>
     * <ul>
     * <li>withDelimiter(',')</li>
     * <li>withQuoteChar('"')</li>
     * <li>withRecordSeparator(CRLF)</li>
     * </ul>
     */
    public static final CSVFormat RFC4180 = csvformat_1_expr2_line_187;

    int PROBE_START_LINE_189 = 211;

	public static final org.apache.commons.csv.CSVFormat f_default_3_line_211 = DEFAULT;

	public static final org.apache.commons.csv.CSVFormat csvformat_1_expr3_line_211 = f_default_3_line_211
			.withIgnoreEmptyLines(false);

	int PROBE_END_LINE_189 = 211;

	/**
     * Excel file format (using a comma as the value delimiter). Note that the actual value delimiter used by Excel is
     * locale dependent, it might be necessary to customize this format to accommodate to your regional settings.
     *
     * <p>
     * For example for parsing or generating a CSV file on a French system the following format will be used:
     * </p>
     *
     * <pre>
     * CSVFormat fmt = CSVFormat.newBuilder(EXCEL).withDelimiter(';');
     * </pre>
     *
     * <p>
     * Settings are:
     * </p>
     * <ul>
     * <li>withDelimiter(',')</li>
     * <li>withQuoteChar('"')</li>
     * <li>withRecordSeparator(CRLF)</li>
     * </ul>
     * Note: this is currently the same as RFC4180
     */
    public static final CSVFormat EXCEL = csvformat_1_expr3_line_211;

    /** Tab-delimited format, with quote; leading and trailing spaces ignored. */
    public static final CSVFormat TDF =
            DEFAULT
            .withDelimiter(TAB)
            .withIgnoreSurroundingSpaces(true);

    /**
     * Default MySQL format used by the <tt>SELECT INTO OUTFILE</tt> and <tt>LOAD DATA INFILE</tt> operations. This is
     * a tab-delimited format with a LF character as the line separator. Values are not quoted and special characters
     * are escaped with '\'.
     *
     * @see <a href="http://dev.mysql.com/doc/refman/5.1/en/load-data.html">
     *      http://dev.mysql.com/doc/refman/5.1/en/load-data.html</a>
     */
    public static final CSVFormat MYSQL =
            DEFAULT
            .withDelimiter(TAB)
            .withEscape(BACKSLASH)
            .withIgnoreEmptyLines(false)
            .withQuoteChar(null)
            .withRecordSeparator(LF);

    /**
     * Returns true if the given character is a line break character.
     *
     * @param c
     *            the character to check
     *
     * @return true if <code>c</code> is a line break character
     */
    private static boolean isLineBreak(final char c) {
        int PROBE_START_LINE_244 = 244;
		char p_c_11_line_244 = c;
		char f_lf_12_line_244 = LF;
		boolean csvformat_1_expr7_line_244 = p_c_11_line_244 == f_lf_12_line_244;
		boolean csvformat_1_expr8_line_244 = false;
		if (!csvformat_1_expr7_line_244) {
			char p_c_11_line_244_v1 = c;
			char f_cr_13_line_244 = CR;
			csvformat_1_expr8_line_244 = p_c_11_line_244_v1 == f_cr_13_line_244;
		}
		boolean csvformat_1_expr6_line_244 = csvformat_1_expr7_line_244 || csvformat_1_expr8_line_244;
		int PROBE_END_LINE_244 = 244;
		return csvformat_1_expr6_line_244;
    }

    /**
     * Returns true if the given character is a line break character.
     *
     * @param c
     *            the character to check, may be null
     *
     * @return true if <code>c</code> is a line break character (and not null)
     */
    private static boolean isLineBreak(final Character c) {
        int PROBE_START_LINE_256 = 256;
		Character p_c_14_line_256 = c;
		boolean csvformat_1_expr10_line_256 = p_c_14_line_256 != null;
		boolean csvformat_1_expr11_line_256 = true;
		if (csvformat_1_expr10_line_256) {
			Character p_c_14_line_256_v1 = c;
			char csvformat_1_expr12_line_256 = p_c_14_line_256_v1.charValue();
			csvformat_1_expr11_line_256 = isLineBreak(csvformat_1_expr12_line_256);
		}
		boolean csvformat_1_expr9_line_256 = csvformat_1_expr10_line_256 && csvformat_1_expr11_line_256;
		int PROBE_END_LINE_256 = 256;
		return csvformat_1_expr9_line_256;
    }

    /**
     * Creates a new CSV format with the specified delimiter.
     *
     * @param delimiter
     *            the char used for value separation, must not be a line break character
     * @return a new CSV format.
     * @throws IllegalArgumentException if the delimiter is a line break character
     */
    public static CSVFormat newFormat(final char delimiter) {
        return new CSVFormat(delimiter, null, null, null, null, false, false, null, null, null, false, false);
    }

    /**
     * Creates a customized CSV format.
     *
     * @param delimiter
     *            the char used for value separation, must not be a line break character
     * @param quoteChar
     *            the Character used as value encapsulation marker, may be {@code null} to disable
     * @param quotePolicy
     *            the quote policy
     * @param commentStart
     *            the Character used for comment identification, may be {@code null} to disable
     * @param escape
     *            the Character used to escape special characters in values, may be {@code null} to disable
     * @param ignoreSurroundingSpaces
     *            <tt>true</tt> when whitespaces enclosing values should be ignored
     * @param ignoreEmptyLines
     *            <tt>true</tt> when the parser should skip empty lines
     * @param recordSeparator
     *            the line separator to use for output
     * @param nullString
     *            the line separator to use for output
     * @param header
     *            the header
     * @param skipHeaderRecord TODO
     * @param ignoreEmptyHeaders TODO
     * @throws IllegalArgumentException if the delimiter is a line break character
     */
    private CSVFormat(final char delimiter, final Character quoteChar,
            final Quote quotePolicy, final Character commentStart,
            final Character escape, final boolean ignoreSurroundingSpaces,
            final boolean ignoreEmptyLines, final String recordSeparator,
            final String nullString, final String[] header, final boolean skipHeaderRecord,
            final boolean ignoreEmptyHeaders) {
        int PROBE_START_LINE_304 = 306;
				char p_delimiter_16_line_304 = delimiter;
				boolean csvformat_1_expr13_line_304 = isLineBreak(p_delimiter_16_line_304);
				int PROBE_END_LINE_304 = 306;
		if (csvformat_1_expr13_line_304) {
            throw new IllegalArgumentException("The delimiter cannot be a line break");
        }
        int PROBE_START_LINE_307 = 307;
		char p_delimiter_16_line_307 = delimiter;
		int PROBE_END_LINE_307 = 307;
		this.delimiter = p_delimiter_16_line_307;
        int PROBE_START_LINE_308 = 308;
		Character p_quote_char_17_line_308 = quoteChar;
		int PROBE_END_LINE_308 = 308;
		this.quoteChar = p_quote_char_17_line_308;
        int PROBE_START_LINE_309 = 309;
		org.apache.commons.csv.Quote p_quote_policy_18_line_309 = quotePolicy;
		int PROBE_END_LINE_309 = 309;
		this.quotePolicy = p_quote_policy_18_line_309;
        int PROBE_START_LINE_310 = 310;
		Character p_comment_start_19_line_310 = commentStart;
		int PROBE_END_LINE_310 = 310;
		this.commentStart = p_comment_start_19_line_310;
        int PROBE_START_LINE_311 = 311;
		Character p_escape_20_line_311 = escape;
		int PROBE_END_LINE_311 = 311;
		this.escape = p_escape_20_line_311;
        int PROBE_START_LINE_312 = 312;
		boolean p_ignore_surrounding_spaces_21_line_312 = ignoreSurroundingSpaces;
		int PROBE_END_LINE_312 = 312;
		this.ignoreSurroundingSpaces = p_ignore_surrounding_spaces_21_line_312;
        int PROBE_START_LINE_313 = 313;
		boolean p_ignore_empty_headers_27_line_313 = ignoreEmptyHeaders;
		int PROBE_END_LINE_313 = 313;
		this.ignoreEmptyHeaders = p_ignore_empty_headers_27_line_313;
        int PROBE_START_LINE_314 = 314;
		boolean p_ignore_empty_lines_22_line_314 = ignoreEmptyLines;
		int PROBE_END_LINE_314 = 314;
		this.ignoreEmptyLines = p_ignore_empty_lines_22_line_314;
        int PROBE_START_LINE_315 = 315;
		String p_record_separator_23_line_315 = recordSeparator;
		int PROBE_END_LINE_315 = 315;
		this.recordSeparator = p_record_separator_23_line_315;
        int PROBE_START_LINE_316 = 316;
		String p_null_string_24_line_316 = nullString;
		int PROBE_END_LINE_316 = 316;
		this.nullString = p_null_string_24_line_316;
        int PROBE_START_LINE_317 = 328;
		String[] p_header_25_line_317 = header;
		boolean csvformat_1_expr44_line_317 = p_header_25_line_317 == null;
		int PROBE_END_LINE_317 = 328;
		if (csvformat_1_expr44_line_317) {
            this.header = null;
        } else {
            final Set<String> dupCheck = new HashSet<String>();
            int PROBE_START_LINE_321 = 326;
			String[] p_header_25_line_321 = header;
			int PROBE_END_LINE_321 = 326;
			for (final String hdr : p_header_25_line_321) {
                if (!dupCheck.add(hdr)) {
                    throw new IllegalArgumentException("The header contains a duplicate entry: '" + hdr + "' in " +
                            Arrays.toString(header));
                }
            }
            int PROBE_START_LINE_327 = 327;
			String[] p_header_25_line_327 = header;
			String[] csvformat_1_expr51_line_327 = p_header_25_line_327.clone();
			int PROBE_END_LINE_327 = 327;
			this.header = csvformat_1_expr51_line_327;
        }
        int PROBE_START_LINE_329 = 329;
		boolean p_skip_header_record_26_line_329 = skipHeaderRecord;
		int PROBE_END_LINE_329 = 329;
		this.skipHeaderRecord = p_skip_header_record_26_line_329;
        validate();
    }

    @Override
    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }

        final CSVFormat other = (CSVFormat) obj;
        if (delimiter != other.delimiter) {
            return false;
        }
        if (quotePolicy != other.quotePolicy) {
            return false;
        }
        if (quoteChar == null) {
            if (other.quoteChar != null) {
                return false;
            }
        } else if (!quoteChar.equals(other.quoteChar)) {
            return false;
        }
        if (commentStart == null) {
            if (other.commentStart != null) {
                return false;
            }
        } else if (!commentStart.equals(other.commentStart)) {
            return false;
        }
        if (escape == null) {
            if (other.escape != null) {
                return false;
            }
        } else if (!escape.equals(other.escape)) {
            return false;
        }
        if (nullString == null) {
            if (other.nullString != null) {
                return false;
            }
        } else if (!nullString.equals(other.nullString)) {
            return false;
        }
        if (!Arrays.equals(header, other.header)) {
            return false;
        }
        if (ignoreSurroundingSpaces != other.ignoreSurroundingSpaces) {
            return false;
        }
        if (ignoreEmptyLines != other.ignoreEmptyLines) {
            return false;
        }
        if (skipHeaderRecord != other.skipHeaderRecord) {
            return false;
        }
        if (recordSeparator == null) {
            if (other.recordSeparator != null) {
                return false;
            }
        } else if (!recordSeparator.equals(other.recordSeparator)) {
            return false;
        }
        return true;
    }

    /**
     * Formats the specified values.
     *
     * @param values
     *            the values to format
     * @return the formatted values
     */
    public String format(final Object... values) {
        final StringWriter out = new StringWriter();
        try {
            new CSVPrinter(out, this).printRecord(values);
            return out.toString().trim();
        } catch (final IOException e) {
            // should not happen because a StringWriter does not do IO.
            throw new IllegalStateException(e);
        }
    }

    /**
     * Returns the character marking the start of a line comment.
     *
     * @return the comment start marker, may be {@code null}
     */
    public Character getCommentStart() {
        int PROBE_START_LINE_426 = 426;
		Character f_comment_start_31_line_426 = commentStart;
		int PROBE_END_LINE_426 = 426;
		return f_comment_start_31_line_426;
    }

    /**
     * Returns the character delimiting the values (typically ';', ',' or '\t').
     *
     * @return the delimiter character
     */
    public char getDelimiter() {
        int PROBE_START_LINE_435 = 435;
		char f_delimiter_28_line_435 = delimiter;
		int PROBE_END_LINE_435 = 435;
		return f_delimiter_28_line_435;
    }

    /**
     * Returns the escape character.
     *
     * @return the escape character, may be {@code null}
     */
    public Character getEscape() {
        int PROBE_START_LINE_444 = 444;
		Character f_escape_32_line_444 = escape;
		int PROBE_END_LINE_444 = 444;
		return f_escape_32_line_444;
    }

    /**
     * Returns a copy of the header array.
     *
     * @return a copy of the header array; {@code null} if disabled, the empty array if to be read from the file
     */
    public String[] getHeader() {
        int PROBE_START_LINE_453 = 453;
		String[] f_header_38_line_453 = header;
		boolean csvformat_1_expr58_line_453 = f_header_38_line_453 != null;
		String[] csvformat_1_expr59_line_453 = null;
		if (csvformat_1_expr58_line_453) {
			String[] f_header_38_line_453_v1 = header;
			csvformat_1_expr59_line_453 = f_header_38_line_453_v1.clone();
		}
		String[] csvformat_1_expr57_line_453 = csvformat_1_expr58_line_453 ? csvformat_1_expr59_line_453 : null;
		int PROBE_END_LINE_453 = 453;
		return csvformat_1_expr57_line_453;
    }

    /**
     * Specifies whether empty headers are ignored when parsing the header line.
     *
     * @return <tt>true</tt> if headers are ignored when parsing the header line, <tt>false</tt> to throw an
     *         {@link IllegalArgumentException}..
     */
    public boolean getIgnoreEmptyHeaders() {
        return ignoreEmptyHeaders;
    }

    /**
     * Specifies whether empty lines between records are ignored when parsing input.
     *
     * @return <tt>true</tt> if empty lines between records are ignored, <tt>false</tt> if they are turned into empty
     *         records.
     */
    public boolean getIgnoreEmptyLines() {
        int PROBE_START_LINE_473 = 473;
		boolean f_ignore_empty_lines_35_line_473 = ignoreEmptyLines;
		int PROBE_END_LINE_473 = 473;
		return f_ignore_empty_lines_35_line_473;
    }

    /**
     * Specifies whether spaces around values are ignored when parsing input.
     *
     * @return <tt>true</tt> if spaces around values are ignored, <tt>false</tt> if they are treated as part of the
     *         value.
     */
    public boolean getIgnoreSurroundingSpaces() {
        int PROBE_START_LINE_483 = 483;
		boolean f_ignore_surrounding_spaces_33_line_483 = ignoreSurroundingSpaces;
		int PROBE_END_LINE_483 = 483;
		return f_ignore_surrounding_spaces_33_line_483;
    }

    /**
     * Gets the String to convert to and from {@code null}.
     * <ul>
     * <li>
     * <strong>Reading:</strong> Converts strings equal to the given {@code nullString} to {@code null} when reading
     * records.
     * </li>
     * <li>
     * <strong>Writing:</strong> Writes {@code null} as the given {@code nullString} when writing records.</li>
     * </ul>
     *
     * @return the String to convert to and from {@code null}. No substitution occurs if {@code null}
     */
    public String getNullString() {
        int PROBE_START_LINE_500 = 500;
		String f_null_string_37_line_500 = nullString;
		int PROBE_END_LINE_500 = 500;
		return f_null_string_37_line_500;
    }

    /**
     * Returns the character used to encapsulate values containing special characters.
     *
     * @return the quoteChar character, may be {@code null}
     */
    public Character getQuoteChar() {
        int PROBE_START_LINE_509 = 509;
		Character f_quote_char_29_line_509 = quoteChar;
		int PROBE_END_LINE_509 = 509;
		return f_quote_char_29_line_509;
    }

    /**
     * Returns the quote policy output fields.
     *
     * @return the quote policy
     */
    public Quote getQuotePolicy() {
        return quotePolicy;
    }

    /**
     * Returns the line separator delimiting output records.
     *
     * @return the line separator
     */
    public String getRecordSeparator() {
        return recordSeparator;
    }

    /**
     * Returns whether to skip the header record.
     *
     * @return whether to skip the header record.
     */
    public boolean getSkipHeaderRecord() {
        return skipHeaderRecord;
    }

    @Override
    public int hashCode()
    {
        final int prime = 31;
        int result = 1;

        result = prime * result + delimiter;
        result = prime * result + ((quotePolicy == null) ? 0 : quotePolicy.hashCode());
        result = prime * result + ((quoteChar == null) ? 0 : quoteChar.hashCode());
        result = prime * result + ((commentStart == null) ? 0 : commentStart.hashCode());
        result = prime * result + ((escape == null) ? 0 : escape.hashCode());
        result = prime * result + ((nullString == null) ? 0 : nullString.hashCode());
        result = prime * result + (ignoreSurroundingSpaces ? 1231 : 1237);
        result = prime * result + (ignoreEmptyLines ? 1231 : 1237);
        result = prime * result + (skipHeaderRecord ? 1231 : 1237);
        result = prime * result + ((recordSeparator == null) ? 0 : recordSeparator.hashCode());
        result = prime * result + Arrays.hashCode(header);
        return result;
    }

    /**
     * Specifies whether comments are supported by this format.
     *
     * Note that the comment introducer character is only recognized at the start of a line.
     *
     * @return <tt>true</tt> is comments are supported, <tt>false</tt> otherwise
     */
    public boolean isCommentingEnabled() {
        return commentStart != null;
    }

    /**
     * Returns whether escape are being processed.
     *
     * @return {@code true} if escapes are processed
     */
    public boolean isEscaping() {
        return escape != null;
    }

    /**
     * Returns whether a nullString has been defined.
     *
     * @return {@code true} if a nullString is defined
     */
    public boolean isNullHandling() {
        return nullString != null;
    }

    /**
     * Returns whether a quoteChar has been defined.
     *
     * @return {@code true} if a quoteChar is defined
     */
    public boolean isQuoting() {
        return quoteChar != null;
    }

    /**
     * Parses the specified content.
     *
     * <p>
     * See also the various static parse methods on {@link CSVParser}.
     * </p>
     *
     * @param in
     *            the input stream
     * @return a parser over a stream of {@link CSVRecord}s.
     * @throws IOException
     *             If an I/O error occurs
     */
    public CSVParser parse(final Reader in) throws IOException {
        int PROBE_START_LINE_611 = 611;
		java.io.Reader p_in_44_line_611 = in;
		int PROBE_END_LINE_611 = 611;
		return new CSVParser(p_in_44_line_611, this);
    }

    /**
     * Prints to the specified output.
     *
     * <p>
     * See also {@link CSVPrinter}.
     * </p>
     *
     * @param out
     *        the output
     * @return a printer to an output
     * @throws IOException
     *         thrown if the optional header cannot be printed.
     */
    public CSVPrinter print(final Appendable out) throws IOException {
        return new CSVPrinter(out, this);
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Delimiter=<").append(delimiter).append('>');
        if (isEscaping()) {
            sb.append(' ');
            sb.append("Escape=<").append(escape).append('>');
        }
        if (isQuoting()) {
            sb.append(' ');
            sb.append("QuoteChar=<").append(quoteChar).append('>');
        }
        if (isCommentingEnabled()) {
            sb.append(' ');
            sb.append("CommentStart=<").append(commentStart).append('>');
        }
        if (isNullHandling()) {
            sb.append(' ');
            sb.append("NullString=<").append(nullString).append('>');
        }
        if(recordSeparator != null) {
            sb.append(' ');
            sb.append("RecordSeparator=<").append(recordSeparator).append('>');
        }
        if (getIgnoreEmptyLines()) {
            sb.append(" EmptyLines:ignored");
        }
        if (getIgnoreSurroundingSpaces()) {
            sb.append(" SurroundingSpaces:ignored");
        }
        sb.append(" SkipHeaderRecord:").append(skipHeaderRecord);
        if (header != null) {
            sb.append(' ');
            sb.append("Header:").append(Arrays.toString(header));
        }
        return sb.toString();
    }

    /**
     * Verifies the consistency of the parameters and throws an IllegalArgumentException if necessary.
     *
     * @throws IllegalArgumentException
     */
    private void validate() throws IllegalArgumentException {
        int PROBE_START_LINE_675 = 678;
		Character f_quote_char_29_line_675 = quoteChar;
		boolean csvformat_1_expr63_line_675 = f_quote_char_29_line_675 != null;
		boolean csvformat_1_expr64_line_675 = true;
		if (csvformat_1_expr63_line_675) {
			char f_delimiter_28_line_675 = delimiter;
			Character f_quote_char_29_line_675_v1 = quoteChar;
			char csvformat_1_expr65_line_675 = f_quote_char_29_line_675_v1.charValue();
			csvformat_1_expr64_line_675 = f_delimiter_28_line_675 == csvformat_1_expr65_line_675;
		}
		boolean csvformat_1_expr62_line_675 = csvformat_1_expr63_line_675 && csvformat_1_expr64_line_675;
		int PROBE_END_LINE_675 = 678;
		if (csvformat_1_expr62_line_675) {
            throw new IllegalArgumentException(
                    "The quoteChar character and the delimiter cannot be the same ('" + quoteChar + "')");
        }

        int PROBE_START_LINE_680 = 683;
		Character f_escape_32_line_680 = escape;
		boolean csvformat_1_expr67_line_680 = f_escape_32_line_680 != null;
		boolean csvformat_1_expr68_line_680 = true;
		if (csvformat_1_expr67_line_680) {
			char f_delimiter_28_line_680 = delimiter;
			Character f_escape_32_line_680_v1 = escape;
			char csvformat_1_expr69_line_680 = f_escape_32_line_680_v1.charValue();
			csvformat_1_expr68_line_680 = f_delimiter_28_line_680 == csvformat_1_expr69_line_680;
		}
		boolean csvformat_1_expr66_line_680 = csvformat_1_expr67_line_680 && csvformat_1_expr68_line_680;
		int PROBE_END_LINE_680 = 683;
		if (csvformat_1_expr66_line_680) {
            throw new IllegalArgumentException(
                    "The escape character and the delimiter cannot be the same ('" + escape + "')");
        }

        int PROBE_START_LINE_685 = 688;
		Character f_comment_start_31_line_685 = commentStart;
		boolean csvformat_1_expr71_line_685 = f_comment_start_31_line_685 != null;
		boolean csvformat_1_expr72_line_685 = true;
		if (csvformat_1_expr71_line_685) {
			char f_delimiter_28_line_685 = delimiter;
			Character f_comment_start_31_line_685_v1 = commentStart;
			char csvformat_1_expr73_line_685 = f_comment_start_31_line_685_v1.charValue();
			csvformat_1_expr72_line_685 = f_delimiter_28_line_685 == csvformat_1_expr73_line_685;
		}
		boolean csvformat_1_expr70_line_685 = csvformat_1_expr71_line_685 && csvformat_1_expr72_line_685;
		int PROBE_END_LINE_685 = 688;
		if (csvformat_1_expr70_line_685) {
            throw new IllegalArgumentException(
                    "The comment start character and the delimiter cannot be the same ('" + commentStart + "')");
        }

        int PROBE_START_LINE_690 = 693;
		Character f_quote_char_29_line_690 = quoteChar;
		boolean csvformat_1_expr75_line_690 = f_quote_char_29_line_690 != null;
		boolean csvformat_1_expr76_line_690 = true;
		if (csvformat_1_expr75_line_690) {
			Character f_quote_char_29_line_690_v1 = quoteChar;
			Character f_comment_start_31_line_690 = commentStart;
			csvformat_1_expr76_line_690 = f_quote_char_29_line_690_v1.equals(f_comment_start_31_line_690);
		}
		boolean csvformat_1_expr74_line_690 = csvformat_1_expr75_line_690 && csvformat_1_expr76_line_690;
		int PROBE_END_LINE_690 = 693;
		if (csvformat_1_expr74_line_690) {
            throw new IllegalArgumentException(
                    "The comment start character and the quoteChar cannot be the same ('" + commentStart + "')");
        }

        int PROBE_START_LINE_695 = 698;
		Character f_escape_32_line_695 = escape;
		boolean csvformat_1_expr78_line_695 = f_escape_32_line_695 != null;
		boolean csvformat_1_expr79_line_695 = true;
		if (csvformat_1_expr78_line_695) {
			Character f_escape_32_line_695_v1 = escape;
			Character f_comment_start_31_line_695 = commentStart;
			csvformat_1_expr79_line_695 = f_escape_32_line_695_v1.equals(f_comment_start_31_line_695);
		}
		boolean csvformat_1_expr77_line_695 = csvformat_1_expr78_line_695 && csvformat_1_expr79_line_695;
		int PROBE_END_LINE_695 = 698;
		if (csvformat_1_expr77_line_695) {
            throw new IllegalArgumentException(
                    "The comment start and the escape character cannot be the same ('" + commentStart + "')");
        }

        int PROBE_START_LINE_700 = 702;
		Character f_escape_32_line_700 = escape;
		boolean csvformat_1_expr81_line_700 = f_escape_32_line_700 == null;
		boolean csvformat_1_expr82_line_700 = true;
		if (csvformat_1_expr81_line_700) {
			org.apache.commons.csv.Quote f_quote_policy_30_line_700 = quotePolicy;
			org.apache.commons.csv.Quote q_none_1_line_700 = Quote.NONE;
			csvformat_1_expr82_line_700 = f_quote_policy_30_line_700 == q_none_1_line_700;
		}
		boolean csvformat_1_expr80_line_700 = csvformat_1_expr81_line_700 && csvformat_1_expr82_line_700;
		int PROBE_END_LINE_700 = 702;
		if (csvformat_1_expr80_line_700) {
            throw new IllegalArgumentException("No quotes mode set but no escape character is set");
        }

        int PROBE_START_LINE_704 = 709;
		String f_record_separator_36_line_704 = recordSeparator;
		boolean csvformat_1_expr84_line_704 = f_record_separator_36_line_704 != null;
		boolean csvformat_1_expr83_line_704 = csvformat_1_expr84_line_704 && !(CRLF.equals(recordSeparator)
				|| String.valueOf(CR).equals(recordSeparator) || String.valueOf(LF).equals(recordSeparator));
		int PROBE_END_LINE_704 = 709;
		if(csvformat_1_expr83_line_704) {
            throw new IllegalArgumentException("Record separator can only by CR, LF or CRLF");
        }
    }

    /**
     * Sets the comment start marker of the format to the specified character.
     *
     * Note that the comment start character is only recognized at the start of a line.
     *
     * @param commentStart
     *            the comment start marker
     * @return A new CSVFormat that is equal to this one but with the specified character as the comment start marker
     * @throws IllegalArgumentException
     *             thrown if the specified character is a line break
     */
    public CSVFormat withCommentStart(final char commentStart) {
        return withCommentStart(Character.valueOf(commentStart));
    }

    /**
     * Sets the comment start marker of the format to the specified character.
     *
     * Note that the comment start character is only recognized at the start of a line.
     *
     * @param commentStart
     *            the comment start marker, use {@code null} to disable
     * @return A new CSVFormat that is equal to this one but with the specified character as the comment start marker
     * @throws IllegalArgumentException
     *             thrown if the specified character is a line break
     */
    public CSVFormat withCommentStart(final Character commentStart) {
        if (isLineBreak(commentStart)) {
            throw new IllegalArgumentException("The comment start character cannot be a line break");
        }
        return new CSVFormat(delimiter, quoteChar, quotePolicy, commentStart, escape,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the delimiter of the format to the specified character.
     *
     * @param delimiter
     *            the delimiter character
     * @return A new CSVFormat that is equal to this with the specified character as delimiter
     * @throws IllegalArgumentException
     *             thrown if the specified character is a line break
     */
    public CSVFormat withDelimiter(final char delimiter) {
        int PROBE_START_LINE_757 = 759;
		char p_delimiter_48_line_757 = delimiter;
		boolean csvformat_1_expr85_line_757 = isLineBreak(p_delimiter_48_line_757);
		int PROBE_END_LINE_757 = 759;
		if (csvformat_1_expr85_line_757) {
            throw new IllegalArgumentException("The delimiter cannot be a line break");
        }
        int PROBE_START_LINE_760 = 762;
		char p_delimiter_48_line_760 = delimiter;
		Character f_quote_char_29_line_760 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_760 = quotePolicy;
		Character f_comment_start_31_line_760 = commentStart;
		Character f_escape_32_line_760 = escape;
		int PROBE_END_LINE_760 = 762;
		return new CSVFormat(p_delimiter_48_line_760, f_quote_char_29_line_760, f_quote_policy_30_line_760, f_comment_start_31_line_760, f_escape_32_line_760,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the escape character of the format to the specified character.
     *
     * @param escape
     *            the escape character
     * @return A new CSVFormat that is equal to his but with the specified character as the escape character
     * @throws IllegalArgumentException
     *             thrown if the specified character is a line break
     */
    public CSVFormat withEscape(final char escape) {
        int PROBE_START_LINE_775 = 775;
		char p_escape_49_line_775 = escape;
		Character csvformat_1_expr88_line_775 = Character.valueOf(p_escape_49_line_775);
		org.apache.commons.csv.CSVFormat csvformat_1_expr87_line_775 = withEscape(csvformat_1_expr88_line_775);
		int PROBE_END_LINE_775 = 775;
		return csvformat_1_expr87_line_775;
    }

    /**
     * Sets the escape character of the format to the specified character.
     *
     * @param escape
     *            the escape character, use {@code null} to disable
     * @return A new CSVFormat that is equal to this but with the specified character as the escape character
     * @throws IllegalArgumentException
     *             thrown if the specified character is a line break
     */
    public CSVFormat withEscape(final Character escape) {
        int PROBE_START_LINE_788 = 790;
		Character p_escape_50_line_788 = escape;
		boolean csvformat_1_expr89_line_788 = isLineBreak(p_escape_50_line_788);
		int PROBE_END_LINE_788 = 790;
		if (csvformat_1_expr89_line_788) {
            throw new IllegalArgumentException("The escape character cannot be a line break");
        }
        int PROBE_START_LINE_791 = 793;
		char f_delimiter_28_line_791 = delimiter;
		Character f_quote_char_29_line_791 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_791 = quotePolicy;
		Character f_comment_start_31_line_791 = commentStart;
		Character p_escape_50_line_791 = escape;
		int PROBE_END_LINE_791 = 793;
		return new CSVFormat(f_delimiter_28_line_791, f_quote_char_29_line_791, f_quote_policy_30_line_791, f_comment_start_31_line_791, p_escape_50_line_791,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the header of the format. The header can either be parsed automatically from the input file with:
     *
     * <pre>
     * CSVFormat format = aformat.withHeader();</pre>
     *
     * or specified manually with:
     *
     * <pre>
     * CSVFormat format = aformat.withHeader(&quot;name&quot;, &quot;email&quot;, &quot;phone&quot;);</pre>
     *
     * @param header
     *            the header, <tt>null</tt> if disabled, empty if parsed automatically, user specified otherwise.
     *
     * @return A new CSVFormat that is equal to this but with the specified header
     * @see #withSkipHeaderRecord(boolean)
     */
    public CSVFormat withHeader(final String... header) {
        int PROBE_START_LINE_814 = 816;
		char f_delimiter_28_line_814 = delimiter;
		Character f_quote_char_29_line_814 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_814 = quotePolicy;
		Character f_comment_start_31_line_814 = commentStart;
		Character f_escape_32_line_814 = escape;
		int PROBE_END_LINE_814 = 816;
		return new CSVFormat(f_delimiter_28_line_814, f_quote_char_29_line_814, f_quote_policy_30_line_814, f_comment_start_31_line_814, f_escape_32_line_814,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the empty header behavior of the format.
     *
     * @param ignoreEmptyHeaders
     *            the empty header behavior, <tt>true</tt> to ignore empty headers in the header line,
     *            <tt>false</tt> to cause an {@link IllegalArgumentException} to be thrown.
     * @return A new CSVFormat that is equal to this but with the specified empty header behavior.
     */
    public CSVFormat withIgnoreEmptyHeaders(final boolean ignoreEmptyHeaders) {
        int PROBE_START_LINE_828 = 830;
		char f_delimiter_28_line_828 = delimiter;
		Character f_quote_char_29_line_828 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_828 = quotePolicy;
		Character f_comment_start_31_line_828 = commentStart;
		Character f_escape_32_line_828 = escape;
		int PROBE_END_LINE_828 = 830;
		return new CSVFormat(f_delimiter_28_line_828, f_quote_char_29_line_828, f_quote_policy_30_line_828, f_comment_start_31_line_828, f_escape_32_line_828,
                ignoreSurroundingSpaces, ignoreEmptyHeaders, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the empty line skipping behavior of the format.
     *
     * @param ignoreEmptyLines
     *            the empty line skipping behavior, <tt>true</tt> to ignore the empty lines between the records,
     *            <tt>false</tt> to translate empty lines to empty records.
     * @return A new CSVFormat that is equal to this but with the specified empty line skipping behavior.
     */
    public CSVFormat withIgnoreEmptyLines(final boolean ignoreEmptyLines) {
        int PROBE_START_LINE_842 = 844;
		char f_delimiter_28_line_842 = delimiter;
		Character f_quote_char_29_line_842 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_842 = quotePolicy;
		Character f_comment_start_31_line_842 = commentStart;
		Character f_escape_32_line_842 = escape;
		int PROBE_END_LINE_842 = 844;
		return new CSVFormat(f_delimiter_28_line_842, f_quote_char_29_line_842, f_quote_policy_30_line_842, f_comment_start_31_line_842, f_escape_32_line_842,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the trimming behavior of the format.
     *
     * @param ignoreSurroundingSpaces
     *            the trimming behavior, <tt>true</tt> to remove the surrounding spaces, <tt>false</tt> to leave the
     *            spaces as is.
     * @return A new CSVFormat that is equal to this but with the specified trimming behavior.
     */
    public CSVFormat withIgnoreSurroundingSpaces(final boolean ignoreSurroundingSpaces) {
        int PROBE_START_LINE_856 = 858;
		char f_delimiter_28_line_856 = delimiter;
		Character f_quote_char_29_line_856 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_856 = quotePolicy;
		Character f_comment_start_31_line_856 = commentStart;
		Character f_escape_32_line_856 = escape;
		int PROBE_END_LINE_856 = 858;
		return new CSVFormat(f_delimiter_28_line_856, f_quote_char_29_line_856, f_quote_policy_30_line_856, f_comment_start_31_line_856, f_escape_32_line_856,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Performs conversions to and from null for strings on input and output.
     * <ul>
     * <li>
     * <strong>Reading:</strong> Converts strings equal to the given {@code nullString} to {@code null} when reading
     * records.</li>
     * <li>
     * <strong>Writing:</strong> Writes {@code null} as the given {@code nullString} when writing records.</li>
     * </ul>
     *
     * @param nullString
     *            the String to convert to and from {@code null}. No substitution occurs if {@code null}
     *
     * @return A new CSVFormat that is equal to this but with the specified null conversion string.
     */
    public CSVFormat withNullString(final String nullString) {
        int PROBE_START_LINE_877 = 879;
		char f_delimiter_28_line_877 = delimiter;
		Character f_quote_char_29_line_877 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_877 = quotePolicy;
		Character f_comment_start_31_line_877 = commentStart;
		Character f_escape_32_line_877 = escape;
		int PROBE_END_LINE_877 = 879;
		return new CSVFormat(f_delimiter_28_line_877, f_quote_char_29_line_877, f_quote_policy_30_line_877, f_comment_start_31_line_877, f_escape_32_line_877,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the quoteChar of the format to the specified character.
     *
     * @param quoteChar
     *            the quoteChar character
     * @return A new CSVFormat that is equal to this but with the specified character as quoteChar
     * @throws IllegalArgumentException
     *             thrown if the specified character is a line break
     */
    public CSVFormat withQuoteChar(final char quoteChar) {
        return withQuoteChar(Character.valueOf(quoteChar));
    }

    /**
     * Sets the quoteChar of the format to the specified character.
     *
     * @param quoteChar
     *            the quoteChar character, use {@code null} to disable
     * @return A new CSVFormat that is equal to this but with the specified character as quoteChar
     * @throws IllegalArgumentException
     *             thrown if the specified character is a line break
     */
    public CSVFormat withQuoteChar(final Character quoteChar) {
        int PROBE_START_LINE_905 = 907;
		Character p_quote_char_57_line_905 = quoteChar;
		boolean csvformat_1_expr96_line_905 = isLineBreak(p_quote_char_57_line_905);
		int PROBE_END_LINE_905 = 907;
		if (csvformat_1_expr96_line_905) {
            throw new IllegalArgumentException("The quoteChar cannot be a line break");
        }
        int PROBE_START_LINE_908 = 910;
		char f_delimiter_28_line_908 = delimiter;
		Character p_quote_char_57_line_908 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_908 = quotePolicy;
		Character f_comment_start_31_line_908 = commentStart;
		Character f_escape_32_line_908 = escape;
		int PROBE_END_LINE_908 = 910;
		return new CSVFormat(f_delimiter_28_line_908, p_quote_char_57_line_908, f_quote_policy_30_line_908, f_comment_start_31_line_908, f_escape_32_line_908,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the output quote policy of the format to the specified value.
     *
     * @param quotePolicy
     *            the quote policy to use for output.
     *
     * @return A new CSVFormat that is equal to this but with the specified quote policy
     */
    public CSVFormat withQuotePolicy(final Quote quotePolicy) {
        return new CSVFormat(delimiter, quoteChar, quotePolicy, commentStart, escape,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets the record separator of the format to the specified character.
     *
     * <p><strong>Note:</strong> Currently only CR and LF are supported.</p>
     *
     * @param recordSeparator
     *            the record separator to use for output.
     *
     * @return A new CSVFormat that is equal to this but with the the specified output record separator
     * @throws IllegalArgumentException
     *              if recordSeparator is neither CR nor LF
     */
    public CSVFormat withRecordSeparator(final char recordSeparator) {
        int PROBE_START_LINE_940 = 940;
		char p_record_separator_59_line_940 = recordSeparator;
		String csvformat_1_expr99_line_940 = String.valueOf(p_record_separator_59_line_940);
		org.apache.commons.csv.CSVFormat csvformat_1_expr98_line_940 = withRecordSeparator(csvformat_1_expr99_line_940);
		int PROBE_END_LINE_940 = 940;
		return csvformat_1_expr98_line_940;
    }

    /**
     * Sets the record separator of the format to the specified String.
     *
     * <p><strong>Note:</strong> Currently only CR, LF and CRLF are supported.</p>
     *
     * @param recordSeparator
     *            the record separator to use for output.
     *
     * @return A new CSVFormat that is equal to this but with the the specified output record separator
     * @throws IllegalArgumentException
     *              if recordSeparator is none of CR, LF or CRLF
     */
    public CSVFormat withRecordSeparator(final String recordSeparator) {
        int PROBE_START_LINE_956 = 958;
		char f_delimiter_28_line_956 = delimiter;
		Character f_quote_char_29_line_956 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_30_line_956 = quotePolicy;
		Character f_comment_start_31_line_956 = commentStart;
		Character f_escape_32_line_956 = escape;
		int PROBE_END_LINE_956 = 958;
		return new CSVFormat(f_delimiter_28_line_956, f_quote_char_29_line_956, f_quote_policy_30_line_956, f_comment_start_31_line_956, f_escape_32_line_956,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }

    /**
     * Sets whether to skip the header record.
     *
     * @param skipHeaderRecord
     *            whether to skip the header record.
     *
     * @return A new CSVFormat that is equal to this but with the the specified skipHeaderRecord setting.
     * @see #withHeader(String...)
     */
    public CSVFormat withSkipHeaderRecord(final boolean skipHeaderRecord) {
        return new CSVFormat(delimiter, quoteChar, quotePolicy, commentStart, escape,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord,
                ignoreEmptyHeaders);
    }
}
