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
 * <h4>Using predefined formats</h4>
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
 * <h4>Defining formats</h4>
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
 * <h4>Defining column names</h4>
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
 * <h4>Parsing</h4>
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
 * <h4>Referencing columns safely</h4>
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
 * <h4>Notes</h4>
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
    private final boolean ignoreEmptyLines;
    private final String recordSeparator; // for outputs
    private final String nullString; // the string to be used for null values
    private final String[] header;
    private final boolean skipHeaderRecord;

    int PROBE_START_LINE_161 = 175;

	public static final char f_comma_4_line_174 = COMMA;

	public static final Character f_double_quote_char_5_line_174 = DOUBLE_QUOTE_CHAR;

	int PROBE_END_LINE_161 = 175;

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
    public static final CSVFormat DEFAULT = new CSVFormat(f_comma_4_line_174, f_double_quote_char_5_line_174, null, null, null,
                                                            false, true, CRLF, null, null, false);

    int PROBE_START_LINE_177 = 186;

	public static final org.apache.commons.csv.CSVFormat f_default_3_line_186 = DEFAULT;

	public static final org.apache.commons.csv.CSVFormat csvformat_1_expr2_line_186 = f_default_3_line_186
			.withIgnoreEmptyLines(false);

	int PROBE_END_LINE_177 = 186;

	/**
     * Comma separated format as defined by <a href="http://tools.ietf.org/html/rfc4180">RFC 4180</a>.
     * <h3>RFC 4180:</h3>
     * <ul>
     * <li>withDelimiter(',')</li>
     * <li>withQuoteChar('"')</li>
     * <li>withRecordSeparator(CRLF)</li>
     * </ul>
     */
    public static final CSVFormat RFC4180 = csvformat_1_expr2_line_186;

    int PROBE_START_LINE_188 = 205;

	public static final org.apache.commons.csv.CSVFormat f_default_3_line_205 = DEFAULT;

	public static final org.apache.commons.csv.CSVFormat csvformat_1_expr3_line_205 = f_default_3_line_205
			.withIgnoreEmptyLines(false);

	int PROBE_END_LINE_188 = 205;

	/**
     * Excel file format (using a comma as the value delimiter). Note that the actual value delimiter used by Excel is
     * locale dependent, it might be necessary to customize this format to accommodate to your regional settings.
     * <p/>
     * For example for parsing or generating a CSV file on a French system the following format will be used:
     *
     * <pre>
     * CSVFormat fmt = CSVFormat.newBuilder(EXCEL).withDelimiter(';');
     * </pre>
     * Settings are:
     * <ul>
     * <li>withDelimiter(',')</li>
     * <li>withQuoteChar('"')</li>
     * <li>withRecordSeparator(CRLF)</li>
     * </ul>
     * Note: this is currently the same as RFC4180
     */
    public static final CSVFormat EXCEL = csvformat_1_expr3_line_205;

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
        int PROBE_START_LINE_238 = 238;
		char p_c_11_line_238 = c;
		char f_lf_12_line_238 = LF;
		boolean csvformat_1_expr7_line_238 = p_c_11_line_238 == f_lf_12_line_238;
		boolean csvformat_1_expr8_line_238 = false;
		if (!csvformat_1_expr7_line_238) {
			char p_c_11_line_238_v1 = c;
			char f_cr_13_line_238 = CR;
			csvformat_1_expr8_line_238 = p_c_11_line_238_v1 == f_cr_13_line_238;
		}
		boolean csvformat_1_expr6_line_238 = csvformat_1_expr7_line_238 || csvformat_1_expr8_line_238;
		int PROBE_END_LINE_238 = 238;
		return csvformat_1_expr6_line_238;
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
        int PROBE_START_LINE_250 = 250;
		Character p_c_14_line_250 = c;
		boolean csvformat_1_expr10_line_250 = p_c_14_line_250 != null;
		boolean csvformat_1_expr11_line_250 = true;
		if (csvformat_1_expr10_line_250) {
			Character p_c_14_line_250_v1 = c;
			char csvformat_1_expr12_line_250 = p_c_14_line_250_v1.charValue();
			csvformat_1_expr11_line_250 = isLineBreak(csvformat_1_expr12_line_250);
		}
		boolean csvformat_1_expr9_line_250 = csvformat_1_expr10_line_250 && csvformat_1_expr11_line_250;
		int PROBE_END_LINE_250 = 250;
		return csvformat_1_expr9_line_250;
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
        return new CSVFormat(delimiter, null, null, null, null, false, false, null, null, null, false);
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
     * @throws IllegalArgumentException if the delimiter is a line break character
     */
    // package protected to give access without needing a synthetic accessor
    CSVFormat(final char delimiter, final Character quoteChar,
            final Quote quotePolicy, final Character commentStart,
            final Character escape, final boolean ignoreSurroundingSpaces,
            final boolean ignoreEmptyLines, final String recordSeparator,
            final String nullString, final String[] header, boolean skipHeaderRecord) {
        int PROBE_START_LINE_297 = 299;
				char p_delimiter_16_line_297 = delimiter;
				boolean csvformat_1_expr13_line_297 = isLineBreak(p_delimiter_16_line_297);
				int PROBE_END_LINE_297 = 299;
		if (csvformat_1_expr13_line_297) {
            throw new IllegalArgumentException("The delimiter cannot be a line break");
        }
        int PROBE_START_LINE_300 = 300;
		char p_delimiter_16_line_300 = delimiter;
		int PROBE_END_LINE_300 = 300;
		this.delimiter = p_delimiter_16_line_300;
        int PROBE_START_LINE_301 = 301;
		Character p_quote_char_17_line_301 = quoteChar;
		int PROBE_END_LINE_301 = 301;
		this.quoteChar = p_quote_char_17_line_301;
        int PROBE_START_LINE_302 = 302;
		org.apache.commons.csv.Quote p_quote_policy_18_line_302 = quotePolicy;
		int PROBE_END_LINE_302 = 302;
		this.quotePolicy = p_quote_policy_18_line_302;
        int PROBE_START_LINE_303 = 303;
		Character p_comment_start_19_line_303 = commentStart;
		int PROBE_END_LINE_303 = 303;
		this.commentStart = p_comment_start_19_line_303;
        int PROBE_START_LINE_304 = 304;
		Character p_escape_20_line_304 = escape;
		int PROBE_END_LINE_304 = 304;
		this.escape = p_escape_20_line_304;
        int PROBE_START_LINE_305 = 305;
		boolean p_ignore_surrounding_spaces_21_line_305 = ignoreSurroundingSpaces;
		int PROBE_END_LINE_305 = 305;
		this.ignoreSurroundingSpaces = p_ignore_surrounding_spaces_21_line_305;
        int PROBE_START_LINE_306 = 306;
		boolean p_ignore_empty_lines_22_line_306 = ignoreEmptyLines;
		int PROBE_END_LINE_306 = 306;
		this.ignoreEmptyLines = p_ignore_empty_lines_22_line_306;
        int PROBE_START_LINE_307 = 307;
		String p_record_separator_23_line_307 = recordSeparator;
		int PROBE_END_LINE_307 = 307;
		this.recordSeparator = p_record_separator_23_line_307;
        int PROBE_START_LINE_308 = 308;
		String p_null_string_24_line_308 = nullString;
		int PROBE_END_LINE_308 = 308;
		this.nullString = p_null_string_24_line_308;
        int PROBE_START_LINE_309 = 309;
		String[] p_header_25_line_309 = header;
		boolean csvformat_1_expr45_line_309 = p_header_25_line_309 == null;
		String[] csvformat_1_expr46_line_309 = null;
		if (!csvformat_1_expr45_line_309) {
			String[] p_header_25_line_309_v1 = header;
			csvformat_1_expr46_line_309 = p_header_25_line_309_v1.clone();
		}
		String[] csvformat_1_expr43_line_309 = csvformat_1_expr45_line_309 ? null : csvformat_1_expr46_line_309;
		int PROBE_END_LINE_309 = 309;
		this.header = csvformat_1_expr43_line_309;
        int PROBE_START_LINE_310 = 310;
		boolean p_skip_header_record_26_line_310 = skipHeaderRecord;
		int PROBE_END_LINE_310 = 310;
		this.skipHeaderRecord = p_skip_header_record_26_line_310;
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
        if (!Arrays.equals(header, other.header)) {
            return false;
        }
        if (ignoreSurroundingSpaces != other.ignoreSurroundingSpaces) {
            return false;
        }
        if (ignoreEmptyLines != other.ignoreEmptyLines) {
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
        int PROBE_START_LINE_396 = 396;
		Character f_comment_start_30_line_396 = commentStart;
		int PROBE_END_LINE_396 = 396;
		return f_comment_start_30_line_396;
    }

    /**
     * Returns the character delimiting the values (typically ';', ',' or '\t').
     *
     * @return the delimiter character
     */
    public char getDelimiter() {
        int PROBE_START_LINE_405 = 405;
		char f_delimiter_27_line_405 = delimiter;
		int PROBE_END_LINE_405 = 405;
		return f_delimiter_27_line_405;
    }

    /**
     * Returns the escape character.
     *
     * @return the escape character, may be {@code null}
     */
    public Character getEscape() {
        int PROBE_START_LINE_414 = 414;
		Character f_escape_31_line_414 = escape;
		int PROBE_END_LINE_414 = 414;
		return f_escape_31_line_414;
    }

    /**
     * Returns a copy of the header array.
     *
     * @return a copy of the header array
     */
    public String[] getHeader() {
        int PROBE_START_LINE_423 = 423;
		String[] f_header_36_line_423 = header;
		boolean csvformat_1_expr51_line_423 = f_header_36_line_423 != null;
		String[] csvformat_1_expr52_line_423 = null;
		if (csvformat_1_expr51_line_423) {
			String[] f_header_36_line_423_v1 = header;
			csvformat_1_expr52_line_423 = f_header_36_line_423_v1.clone();
		}
		String[] csvformat_1_expr50_line_423 = csvformat_1_expr51_line_423 ? csvformat_1_expr52_line_423 : null;
		int PROBE_END_LINE_423 = 423;
		return csvformat_1_expr50_line_423;
    }

    /**
     * Specifies whether empty lines between records are ignored when parsing input.
     *
     * @return <tt>true</tt> if empty lines between records are ignored, <tt>false</tt> if they are turned into empty
     *         records.
     */
    public boolean getIgnoreEmptyLines() {
        int PROBE_START_LINE_433 = 433;
		boolean f_ignore_empty_lines_33_line_433 = ignoreEmptyLines;
		int PROBE_END_LINE_433 = 433;
		return f_ignore_empty_lines_33_line_433;
    }

    /**
     * Specifies whether spaces around values are ignored when parsing input.
     *
     * @return <tt>true</tt> if spaces around values are ignored, <tt>false</tt> if they are treated as part of the
     *         value.
     */
    public boolean getIgnoreSurroundingSpaces() {
        int PROBE_START_LINE_443 = 443;
		boolean f_ignore_surrounding_spaces_32_line_443 = ignoreSurroundingSpaces;
		int PROBE_END_LINE_443 = 443;
		return f_ignore_surrounding_spaces_32_line_443;
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
        return nullString;
    }

    /**
     * Returns the character used to encapsulate values containing special characters.
     *
     * @return the quoteChar character, may be {@code null}
     */
    public Character getQuoteChar() {
        int PROBE_START_LINE_469 = 469;
		Character f_quote_char_28_line_469 = quoteChar;
		int PROBE_END_LINE_469 = 469;
		return f_quote_char_28_line_469;
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
        result = prime * result + (ignoreSurroundingSpaces ? 1231 : 1237);
        result = prime * result + (ignoreEmptyLines ? 1231 : 1237);
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
        return new CSVParser(in, this);
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
     * Verifies the consistency of the parameters and throws an IllegalStateException if necessary.
     *
     * @throws IllegalStateException
     */
    void validate() throws IllegalStateException {
        int PROBE_START_LINE_616 = 619;
		Character f_quote_char_28_line_616 = quoteChar;
		boolean csvformat_1_expr54_line_616 = f_quote_char_28_line_616 != null;
		boolean csvformat_1_expr55_line_616 = true;
		if (csvformat_1_expr54_line_616) {
			char f_delimiter_27_line_616 = delimiter;
			Character f_quote_char_28_line_616_v1 = quoteChar;
			char csvformat_1_expr56_line_616 = f_quote_char_28_line_616_v1.charValue();
			csvformat_1_expr55_line_616 = f_delimiter_27_line_616 == csvformat_1_expr56_line_616;
		}
		boolean csvformat_1_expr53_line_616 = csvformat_1_expr54_line_616 && csvformat_1_expr55_line_616;
		int PROBE_END_LINE_616 = 619;
		if (csvformat_1_expr53_line_616) {
            throw new IllegalStateException(
                    "The quoteChar character and the delimiter cannot be the same ('" + quoteChar + "')");
        }

        int PROBE_START_LINE_621 = 624;
		Character f_escape_31_line_621 = escape;
		boolean csvformat_1_expr58_line_621 = f_escape_31_line_621 != null;
		boolean csvformat_1_expr59_line_621 = true;
		if (csvformat_1_expr58_line_621) {
			char f_delimiter_27_line_621 = delimiter;
			Character f_escape_31_line_621_v1 = escape;
			char csvformat_1_expr60_line_621 = f_escape_31_line_621_v1.charValue();
			csvformat_1_expr59_line_621 = f_delimiter_27_line_621 == csvformat_1_expr60_line_621;
		}
		boolean csvformat_1_expr57_line_621 = csvformat_1_expr58_line_621 && csvformat_1_expr59_line_621;
		int PROBE_END_LINE_621 = 624;
		if (csvformat_1_expr57_line_621) {
            throw new IllegalStateException(
                    "The escape character and the delimiter cannot be the same ('" + escape + "')");
        }

        int PROBE_START_LINE_626 = 629;
		Character f_comment_start_30_line_626 = commentStart;
		boolean csvformat_1_expr62_line_626 = f_comment_start_30_line_626 != null;
		boolean csvformat_1_expr63_line_626 = true;
		if (csvformat_1_expr62_line_626) {
			char f_delimiter_27_line_626 = delimiter;
			Character f_comment_start_30_line_626_v1 = commentStart;
			char csvformat_1_expr64_line_626 = f_comment_start_30_line_626_v1.charValue();
			csvformat_1_expr63_line_626 = f_delimiter_27_line_626 == csvformat_1_expr64_line_626;
		}
		boolean csvformat_1_expr61_line_626 = csvformat_1_expr62_line_626 && csvformat_1_expr63_line_626;
		int PROBE_END_LINE_626 = 629;
		if (csvformat_1_expr61_line_626) {
            throw new IllegalStateException(
                    "The comment start character and the delimiter cannot be the same ('" + commentStart + "')");
        }

        int PROBE_START_LINE_631 = 634;
		Character f_quote_char_28_line_631 = quoteChar;
		boolean csvformat_1_expr66_line_631 = f_quote_char_28_line_631 != null;
		boolean csvformat_1_expr67_line_631 = true;
		if (csvformat_1_expr66_line_631) {
			Character f_quote_char_28_line_631_v1 = quoteChar;
			Character f_comment_start_30_line_631 = commentStart;
			csvformat_1_expr67_line_631 = f_quote_char_28_line_631_v1.equals(f_comment_start_30_line_631);
		}
		boolean csvformat_1_expr65_line_631 = csvformat_1_expr66_line_631 && csvformat_1_expr67_line_631;
		int PROBE_END_LINE_631 = 634;
		if (csvformat_1_expr65_line_631) {
            throw new IllegalStateException(
                    "The comment start character and the quoteChar cannot be the same ('" + commentStart + "')");
        }

        int PROBE_START_LINE_636 = 639;
		Character f_escape_31_line_636 = escape;
		boolean csvformat_1_expr69_line_636 = f_escape_31_line_636 != null;
		boolean csvformat_1_expr70_line_636 = true;
		if (csvformat_1_expr69_line_636) {
			Character f_escape_31_line_636_v1 = escape;
			Character f_comment_start_30_line_636 = commentStart;
			csvformat_1_expr70_line_636 = f_escape_31_line_636_v1.equals(f_comment_start_30_line_636);
		}
		boolean csvformat_1_expr68_line_636 = csvformat_1_expr69_line_636 && csvformat_1_expr70_line_636;
		int PROBE_END_LINE_636 = 639;
		if (csvformat_1_expr68_line_636) {
            throw new IllegalStateException(
                    "The comment start and the escape character cannot be the same ('" + commentStart + "')");
        }

        int PROBE_START_LINE_641 = 643;
		Character f_escape_31_line_641 = escape;
		boolean csvformat_1_expr72_line_641 = f_escape_31_line_641 == null;
		boolean csvformat_1_expr73_line_641 = true;
		if (csvformat_1_expr72_line_641) {
			org.apache.commons.csv.Quote f_quote_policy_29_line_641 = quotePolicy;
			org.apache.commons.csv.Quote q_none_1_line_641 = Quote.NONE;
			csvformat_1_expr73_line_641 = f_quote_policy_29_line_641 == q_none_1_line_641;
		}
		boolean csvformat_1_expr71_line_641 = csvformat_1_expr72_line_641 && csvformat_1_expr73_line_641;
		int PROBE_END_LINE_641 = 643;
		if (csvformat_1_expr71_line_641) {
            throw new IllegalStateException("No quotes mode set but no escape character is set");
        }

        int PROBE_START_LINE_645 = 651;
		String[] f_header_36_line_645 = header;
		boolean csvformat_1_expr74_line_645 = f_header_36_line_645 != null;
		int PROBE_END_LINE_645 = 651;
		if (csvformat_1_expr74_line_645) {
            final Set<String> set = new HashSet<String>(header.length);
            set.addAll(Arrays.asList(header));
            if (set.size() != header.length) {
                throw new IllegalStateException("The header contains duplicate names: " + Arrays.toString(header));
            }
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
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
        int PROBE_START_LINE_698 = 700;
		char p_delimiter_43_line_698 = delimiter;
		boolean csvformat_1_expr75_line_698 = isLineBreak(p_delimiter_43_line_698);
		int PROBE_END_LINE_698 = 700;
		if (csvformat_1_expr75_line_698) {
            throw new IllegalArgumentException("The delimiter cannot be a line break");
        }
        int PROBE_START_LINE_701 = 702;
		char p_delimiter_43_line_701 = delimiter;
		Character f_quote_char_28_line_701 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_29_line_701 = quotePolicy;
		Character f_comment_start_30_line_701 = commentStart;
		Character f_escape_31_line_701 = escape;
		int PROBE_END_LINE_701 = 702;
		return new CSVFormat(p_delimiter_43_line_701, f_quote_char_28_line_701, f_quote_policy_29_line_701, f_comment_start_30_line_701, f_escape_31_line_701,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
        int PROBE_START_LINE_715 = 715;
		char p_escape_44_line_715 = escape;
		Character csvformat_1_expr78_line_715 = Character.valueOf(p_escape_44_line_715);
		org.apache.commons.csv.CSVFormat csvformat_1_expr77_line_715 = withEscape(csvformat_1_expr78_line_715);
		int PROBE_END_LINE_715 = 715;
		return csvformat_1_expr77_line_715;
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
        int PROBE_START_LINE_728 = 730;
		Character p_escape_45_line_728 = escape;
		boolean csvformat_1_expr79_line_728 = isLineBreak(p_escape_45_line_728);
		int PROBE_END_LINE_728 = 730;
		if (csvformat_1_expr79_line_728) {
            throw new IllegalArgumentException("The escape character cannot be a line break");
        }
        int PROBE_START_LINE_731 = 732;
		char f_delimiter_27_line_731 = delimiter;
		Character f_quote_char_28_line_731 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_29_line_731 = quotePolicy;
		Character f_comment_start_30_line_731 = commentStart;
		Character p_escape_45_line_731 = escape;
		int PROBE_END_LINE_731 = 732;
		return new CSVFormat(f_delimiter_27_line_731, f_quote_char_28_line_731, f_quote_policy_29_line_731, f_comment_start_30_line_731, p_escape_45_line_731,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
        return new CSVFormat(delimiter, quoteChar, quotePolicy, commentStart, escape,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
        int PROBE_START_LINE_766 = 767;
		char f_delimiter_27_line_766 = delimiter;
		Character f_quote_char_28_line_766 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_29_line_766 = quotePolicy;
		Character f_comment_start_30_line_766 = commentStart;
		Character f_escape_31_line_766 = escape;
		int PROBE_END_LINE_766 = 767;
		return new CSVFormat(f_delimiter_27_line_766, f_quote_char_28_line_766, f_quote_policy_29_line_766, f_comment_start_30_line_766, f_escape_31_line_766,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
        int PROBE_START_LINE_779 = 780;
		char f_delimiter_27_line_779 = delimiter;
		Character f_quote_char_28_line_779 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_29_line_779 = quotePolicy;
		Character f_comment_start_30_line_779 = commentStart;
		Character f_escape_31_line_779 = escape;
		int PROBE_END_LINE_779 = 780;
		return new CSVFormat(f_delimiter_27_line_779, f_quote_char_28_line_779, f_quote_policy_29_line_779, f_comment_start_30_line_779, f_escape_31_line_779,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
        return new CSVFormat(delimiter, quoteChar, quotePolicy, commentStart, escape,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
        int PROBE_START_LINE_826 = 828;
		Character p_quote_char_51_line_826 = quoteChar;
		boolean csvformat_1_expr83_line_826 = isLineBreak(p_quote_char_51_line_826);
		int PROBE_END_LINE_826 = 828;
		if (csvformat_1_expr83_line_826) {
            throw new IllegalArgumentException("The quoteChar cannot be a line break");
        }
        int PROBE_START_LINE_829 = 830;
		char f_delimiter_27_line_829 = delimiter;
		Character p_quote_char_51_line_829 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_29_line_829 = quotePolicy;
		Character f_comment_start_30_line_829 = commentStart;
		Character f_escape_31_line_829 = escape;
		int PROBE_END_LINE_829 = 830;
		return new CSVFormat(f_delimiter_27_line_829, p_quote_char_51_line_829, f_quote_policy_29_line_829, f_comment_start_30_line_829, f_escape_31_line_829,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
    }

    /**
     * Sets the record separator of the format to the specified character.
     *
     * @param recordSeparator
     *            the record separator to use for output.
     *
     * @return A new CSVFormat that is equal to this but with the the specified output record separator
     */
    public CSVFormat withRecordSeparator(final char recordSeparator) {
        int PROBE_START_LINE_855 = 855;
		char p_record_separator_53_line_855 = recordSeparator;
		String csvformat_1_expr86_line_855 = String.valueOf(p_record_separator_53_line_855);
		org.apache.commons.csv.CSVFormat csvformat_1_expr85_line_855 = withRecordSeparator(csvformat_1_expr86_line_855);
		int PROBE_END_LINE_855 = 855;
		return csvformat_1_expr85_line_855;
    }

    /**
     * Sets the record separator of the format to the specified String.
     *
     * @param recordSeparator
     *            the record separator to use for output.
     *
     * @return A new CSVFormat that is equal to this but with the the specified output record separator
     */
    public CSVFormat withRecordSeparator(final String recordSeparator) {
        int PROBE_START_LINE_867 = 868;
		char f_delimiter_27_line_867 = delimiter;
		Character f_quote_char_28_line_867 = quoteChar;
		org.apache.commons.csv.Quote f_quote_policy_29_line_867 = quotePolicy;
		Character f_comment_start_30_line_867 = commentStart;
		Character f_escape_31_line_867 = escape;
		int PROBE_END_LINE_867 = 868;
		return new CSVFormat(f_delimiter_27_line_867, f_quote_char_28_line_867, f_quote_policy_29_line_867, f_comment_start_30_line_867, f_escape_31_line_867,
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
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
                ignoreSurroundingSpaces, ignoreEmptyLines, recordSeparator, nullString, header, skipHeaderRecord);
    }
}
