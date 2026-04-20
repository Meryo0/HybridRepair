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

import static org.apache.commons.csv.Token.Type.TOKEN;

import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/**
 * Parses CSV files according to the specified format.
 *
 * Because CSV appears in many different dialects, the parser supports many formats by allowing the
 * specification of a {@link CSVFormat}.
 *
 * The parser works record wise. It is not possible to go back, once a record has been parsed from the input stream.
 *
 * <h2>Creating instances</h2>
 * <p>
 * There are several static factory methods that can be used to create instances for various types of resources:
 * </p>
 * <ul>
 *     <li>{@link #parse(java.io.File, CSVFormat)}</li>
 *     <li>{@link #parse(String, CSVFormat)}</li>
 *     <li>{@link #parse(java.net.URL, java.nio.charset.Charset, CSVFormat)}</li>
 * </ul>
 * <p>
 * Alternatively parsers can also be created by passing a {@link Reader} directly to the sole constructor.
 *
 * For those who like fluent APIs, parsers can be created using {@link CSVFormat#parse(java.io.Reader)} as a shortcut:
 * </p>
 * <pre>
 * for(CSVRecord record : CSVFormat.EXCEL.parse(in)) {
 *     ...
 * }
 * </pre>
 *
 * <h2>Parsing record wise</h2>
 * <p>
 * To parse a CSV input from a file, you write:
 * </p>
 *
 * <pre>
 * File csvData = new File(&quot;/path/to/csv&quot;);
 * CSVParser parser = CSVParser.parse(csvData, CSVFormat.RFC4180);
 * for (CSVRecord csvRecord : parser) {
 *     ...
 * }
 * </pre>
 *
 * <p>
 * This will read the parse the contents of the file using the
 * <a href="http://tools.ietf.org/html/rfc4180" target="_blank">RFC 4180</a> format.
 * </p>
 *
 * <p>
 * To parse CSV input in a format like Excel, you write:
 * </p>
 *
 * <pre>
 * CSVParser parser = CSVParser.parse(csvData, CSVFormat.EXCEL);
 * for (CSVRecord csvRecord : parser) {
 *     ...
 * }
 * </pre>
 *
 * <p>
 * If the predefined formats don't match the format at hands, custom formats can be defined. More information about
 * customising CSVFormats is available in {@link CSVFormat CSVFormat JavaDoc}.
 * </p>
 *
 * <h2>Parsing into memory</h2>
 * <p>
 * If parsing record wise is not desired, the contents of the input can be read completely into memory.
 * </p>
 *
 * <pre>
 * Reader in = new StringReader(&quot;a;b\nc;d&quot;);
 * CSVParser parser = new CSVParser(in, CSVFormat.EXCEL);
 * List&lt;CSVRecord&gt; list = parser.getRecords();
 * </pre>
 *
 * <p>
 * There are two constraints that have to be kept in mind:
 * </p>
 *
 * <ol>
 *     <li>Parsing into memory starts at the current position of the parser. If you have already parsed records from
 *     the input, those records will not end up in the in memory representation of your CSV data.</li>
 *     <li>Parsing into memory may consume a lot of system resources depending on the input. For example if you're
 *     parsing a 150MB file of CSV data the contents will be read completely into memory.</li>
 * </ol>
 *
 * <h2>Notes</h2>
 * <p>
 * Internal parser state is completely covered by the format and the reader-state.
 * </p>
 *
 * @version $Id$
 *
 * @see <a href="package-summary.html">package documentation for more details</a>
 */
public final class CSVParser implements Iterable<CSVRecord>, Closeable {

    /**
     * Creates a parser for the given {@link File}.
     *
     * <p><strong>Note:</strong> This method internally creates a FileReader using
     * {@link FileReader#FileReader(java.io.File)} which in turn relies on the default encoding of the JVM that
     * is executing the code. If this is insufficient create a URL to the file and use
     * {@link #parse(URL, Charset, CSVFormat)}</p>
     *
     * @param file
     *            a CSV file. Must not be null.
     * @param format
     *            the CSVFormat used for CSV parsing. Must not be null.
     * @return a new parser
     * @throws IllegalArgumentException
     *             If the parameters of the format are inconsistent or if either file or format are null.
     * @throws IOException
     *             If an I/O error occurs
     */
    public static CSVParser parse(final File file, final CSVFormat format) throws IOException {
        Assertions.notNull(file, "file");
        Assertions.notNull(format, "format");

        return new CSVParser(new FileReader(file), format);
    }

    /**
     * Creates a parser for the given {@link String}.
     *
     * @param string
     *            a CSV string. Must not be null.
     * @param format
     *            the CSVFormat used for CSV parsing. Must not be null.
     * @return a new parser
     * @throws IllegalArgumentException
     *             If the parameters of the format are inconsistent or if either string or format are null.
     * @throws IOException
     *             If an I/O error occurs
     */
    public static CSVParser parse(final String string, final CSVFormat format) throws IOException {
        int PROBE_START_LINE_174 = 174;
		String p_string_58_line_174 = string;
		int PROBE_END_LINE_174 = 174;
		Assertions.notNull(p_string_58_line_174, "string");
        int PROBE_START_LINE_175 = 175;
		org.apache.commons.csv.CSVFormat p_format_59_line_175 = format;
		int PROBE_END_LINE_175 = 175;
		Assertions.notNull(p_format_59_line_175, "format");

        int PROBE_START_LINE_177 = 177;
		String p_string_58_line_177 = string;
		org.apache.commons.csv.CSVFormat p_format_59_line_177 = format;
		int PROBE_END_LINE_177 = 177;
		return new CSVParser(new StringReader(p_string_58_line_177), p_format_59_line_177);
    }

    /**
     * Creates a parser for the given URL.
     *
     * <p>
     * If you do not read all records from the given {@code url}, you should call {@link #close()} on the parser, unless
     * you close the {@code url}.
     * </p>
     *
     * @param url
     *            a URL. Must not be null.
     * @param charset
     *            the charset for the resource. Must not be null.
     * @param format
     *            the CSVFormat used for CSV parsing. Must not be null.
     * @return a new parser
     * @throws IllegalArgumentException
     *             If the parameters of the format are inconsistent or if either url, charset or format are null.
     * @throws IOException
     *             If an I/O error occurs
     */
    public static CSVParser parse(final URL url, final Charset charset, final CSVFormat format) throws IOException {
        Assertions.notNull(url, "url");
        Assertions.notNull(charset, "charset");
        Assertions.notNull(format, "format");

        return new CSVParser(new InputStreamReader(url.openStream(), charset), format);
    }

    // the following objects are shared to reduce garbage

    private final CSVFormat format;

    /** A mapping of column names to column indices */
    private final Map<String, Integer> headerMap;

    private final Lexer lexer;

    /** A record buffer for getRecord(). Grows as necessary and is reused. */
    private final List<String> record = new ArrayList<String>();

    private long recordNumber;

    private final Token reusableToken = new Token();

    /**
     * Customized CSV parser using the given {@link CSVFormat}
     *
     * <p>
     * If you do not read all records from the given {@code reader}, you should call {@link #close()} on the parser,
     * unless you close the {@code reader}.
     * </p>
     *
     * @param reader
     *            a Reader containing CSV-formatted input. Must not be null.
     * @param format
     *            the CSVFormat used for CSV parsing. Must not be null.
     * @throws IllegalArgumentException
     *             If the parameters of the format are inconsistent or if either reader or format are null.
     * @throws IOException
     *             If there is a problem reading the header or skipping the first record
     */
    public CSVParser(final Reader reader, final CSVFormat format) throws IOException {
        int PROBE_START_LINE_242 = 242;
		java.io.Reader p_reader_65_line_242 = reader;
		int PROBE_END_LINE_242 = 242;
		Assertions.notNull(p_reader_65_line_242, "reader");
        int PROBE_START_LINE_243 = 243;
		org.apache.commons.csv.CSVFormat p_format_66_line_243 = format;
		int PROBE_END_LINE_243 = 243;
		Assertions.notNull(p_format_66_line_243, "format");

        int PROBE_START_LINE_245 = 245;
		org.apache.commons.csv.CSVFormat p_format_66_line_245 = format;
		int PROBE_END_LINE_245 = 245;
		p_format_66_line_245.validate();
        int PROBE_START_LINE_246 = 246;
		org.apache.commons.csv.CSVFormat p_format_66_line_246 = format;
		int PROBE_END_LINE_246 = 246;
		this.format = p_format_66_line_246;
        int PROBE_START_LINE_247 = 247;
		org.apache.commons.csv.CSVFormat p_format_66_line_247 = format;
		java.io.Reader p_reader_65_line_247 = reader;
		int PROBE_END_LINE_247 = 247;
		this.lexer = new Lexer(p_format_66_line_247, new ExtendedBufferedReader(p_reader_65_line_247));
        int PROBE_START_LINE_248 = 248;
		Map<String, Integer> csvparser_1_expr20_line_248 = this.initializeHeader();
		int PROBE_END_LINE_248 = 248;
		this.headerMap = csvparser_1_expr20_line_248;
    }

    private void addRecordValue() {
        int PROBE_START_LINE_252 = 252;
		org.apache.commons.csv.Token f_reusable_token_64_line_252 = this.reusableToken;
		StringBuilder csvparser_1_expr24_line_252 = f_reusable_token_64_line_252.content;
		String csvparser_1_expr23_line_252 = csvparser_1_expr24_line_252.toString();
		int PROBE_END_LINE_252 = 252;
		final String input = csvparser_1_expr23_line_252;
        int PROBE_START_LINE_253 = 253;
		org.apache.commons.csv.CSVFormat f_format_67_line_253 = this.format;
		String csvparser_1_expr27_line_253 = f_format_67_line_253.getNullString();
		int PROBE_END_LINE_253 = 253;
		final String nullString = csvparser_1_expr27_line_253;
        int PROBE_START_LINE_254 = 258;
		String v_null_string_72_line_254 = nullString;
		boolean csvparser_1_expr30_line_254 = v_null_string_72_line_254 == null;
		int PROBE_END_LINE_254 = 258;
		if (csvparser_1_expr30_line_254) {
            int PROBE_START_LINE_255 = 255;
			List<String> f_record_63_line_255 = this.record;
			String v_input_70_line_255 = input;
			int PROBE_END_LINE_255 = 255;
			f_record_63_line_255.add(v_input_70_line_255);
        } else {
            this.record.add(input.equalsIgnoreCase(nullString) ? null : input);
        }
    }

    /**
     * Closes resources.
     *
     * @throws IOException
     *             If an I/O error occurs
     */
    public void close() throws IOException {
        if (this.lexer != null) {
            this.lexer.close();
        }
    }

    /**
     * Returns the current line number in the input stream.
     *
     * <p>
     * <strong>ATTENTION:</strong> If your CSV input has multi-line values, the returned number does not correspond to
     * the record number.
     * </p>
     *
     * @return current line number
     */
    public long getCurrentLineNumber() {
        return this.lexer.getCurrentLineNumber();
    }

    /**
     * Returns a copy of the header map that iterates in column order.
     * <p>
     * The map keys are column names. The map values are 0-based indices.
     * </p>
     * @return a copy of the header map that iterates in column order.
     */
    public Map<String, Integer> getHeaderMap() {
        return this.headerMap == null ? null : new LinkedHashMap<String, Integer>(this.headerMap);
    }

    /**
     * Returns the current record number in the input stream.
     *
     * <p>
     * <strong>ATTENTION:</strong> If your CSV input has multi-line values, the returned number does not correspond to
     * the line number.
     * </p>
     *
     * @return current line number
     */
    public long getRecordNumber() {
        return this.recordNumber;
    }

    /**
     * Parses the CSV input according to the given format and returns the content as a list of
     * {@link CSVRecord CSVRecords}.
     *
     * <p>
     * The returned content starts at the current parse-position in the stream.
     * </p>
     *
     * @return list of {@link CSVRecord CSVRecords}, may be empty
     * @throws IOException
     *             on parse error or input read-failure
     */
    public List<CSVRecord> getRecords() throws IOException {
        return getRecords(new ArrayList<CSVRecord>());
    }

    /**
     * Parses the CSV input according to the given format and adds the content to the collection of {@link CSVRecord
     * CSVRecords}.
     *
     * <p>
     * The returned content starts at the current parse-position in the stream.
     * </p>
     *
     * @param records
     *            The collection to add to.
     * @param <T> the type of collection used.
     * @return a collection of {@link CSVRecord CSVRecords}, may be empty
     * @throws IOException
     *             on parse error or input read-failure
     */
    public <T extends Collection<CSVRecord>> T getRecords(T records) throws IOException {
        CSVRecord rec;
        while ((rec = this.nextRecord()) != null) {
            records.add(rec);
        }
        return records;
    }

    /**
     * Initializes the name to index mapping if the format defines a header.
     *
     * @return null if the format has no header.
     * @throws IOException if there is a problem reading the header or skipping the first record
     */
    private Map<String, Integer> initializeHeader() throws IOException {
        Map<String, Integer> hdrMap = null;
        int PROBE_START_LINE_359 = 359;
		org.apache.commons.csv.CSVFormat f_format_67_line_359 = this.format;
		String[] csvparser_1_expr34_line_359 = f_format_67_line_359.getHeader();
		int PROBE_END_LINE_359 = 359;
		final String[] formatHeader = csvparser_1_expr34_line_359;
        int PROBE_START_LINE_360 = 387;
		String[] v_format_header_75_line_360 = formatHeader;
		boolean csvparser_1_expr37_line_360 = v_format_header_75_line_360 != null;
		int PROBE_END_LINE_360 = 387;
		if (csvparser_1_expr37_line_360) {
            hdrMap = new LinkedHashMap<String, Integer>();

            String[] header = null;
            if (formatHeader.length == 0) {
                // read the header from the first line of the file
                final CSVRecord nextRecord = this.nextRecord();
                if (nextRecord != null) {
                    header = nextRecord.values();
                }
            } else {
                if (this.format.getSkipHeaderRecord()) {
                    this.nextRecord();
                }
                header = formatHeader;
            }

            // build the name to index mappings
            if (header != null) {
                for (int i = 0; i < header.length; i++) {
                    if (hdrMap.containsKey(header[i])) {
                        throw new IllegalArgumentException("The header contains duplicate names: " +
                                Arrays.toString(header));
                    }
                    hdrMap.put(header[i], Integer.valueOf(i));
                }
            }
        }
        int PROBE_START_LINE_388 = 388;
		Map<String, Integer> v_hdr_map_74_line_388 = hdrMap;
		int PROBE_END_LINE_388 = 388;
		return v_hdr_map_74_line_388;
    }

    public boolean isClosed() {
        int PROBE_START_LINE_392 = 392;
		org.apache.commons.csv.Lexer f_lexer_68_line_392 = this.lexer;
		boolean csvparser_1_expr38_line_392 = f_lexer_68_line_392.isClosed();
		int PROBE_END_LINE_392 = 392;
		return csvparser_1_expr38_line_392;
    }

    /**
     * Returns an iterator on the records.
     *
     * <p>IOExceptions occurring during the iteration are wrapped in a
     * RuntimeException.
     * If the parser is closed a call to {@code next()} will throw a
     * NoSuchElementException.</p>
     */
    public Iterator<CSVRecord> iterator() {
        return new Iterator<CSVRecord>() {
            private CSVRecord current;

            private CSVRecord getNextRecord() {
                try {
                    int PROBE_START_LINE_409 = 409;
					org.apache.commons.csv.CSVRecord csvparser_1_expr42_line_409 = CSVParser.this.nextRecord();
					int PROBE_END_LINE_409 = 409;
					return csvparser_1_expr42_line_409;
                } catch (final IOException e) {
                    // TODO: This is not great, throw an ISE instead?
                    throw new RuntimeException(e);
                }
            }

            public boolean hasNext() {
                if (CSVParser.this.isClosed()) {
                    return false;
                }
                if (this.current == null) {
                    this.current = this.getNextRecord();
                }

                return this.current != null;
            }

            public CSVRecord next() {
                int PROBE_START_LINE_428 = 430;
				boolean csvparser_1_expr44_line_428 = CSVParser.this.isClosed();
				int PROBE_END_LINE_428 = 430;
				if (csvparser_1_expr44_line_428) {
                    throw new NoSuchElementException("CSVParser has been closed");
                }
                int PROBE_START_LINE_431 = 431;
				CSVRecord f_current_77_line_431 = this.current;
				int PROBE_END_LINE_431 = 431;
				CSVRecord next = f_current_77_line_431;
                this.current = null;

                int PROBE_START_LINE_434 = 440;
				org.apache.commons.csv.CSVRecord v_next_76_line_434 = next;
				boolean csvparser_1_expr51_line_434 = v_next_76_line_434 == null;
				int PROBE_END_LINE_434 = 440;
				if (csvparser_1_expr51_line_434) {
                    int PROBE_START_LINE_436 = 436;
					org.apache.commons.csv.CSVRecord csvparser_1_expr53_line_436 = this.getNextRecord();
					int PROBE_END_LINE_436 = 436;
					// hasNext() wasn't called before
                    next = csvparser_1_expr53_line_436;
                    int PROBE_START_LINE_437 = 439;
					org.apache.commons.csv.CSVRecord v_next_76_line_437 = next;
					boolean csvparser_1_expr55_line_437 = v_next_76_line_437 == null;
					int PROBE_END_LINE_437 = 439;
					if (csvparser_1_expr55_line_437) {
                        throw new NoSuchElementException("No more CSV records available");
                    }
                }

                int PROBE_START_LINE_442 = 442;
				org.apache.commons.csv.CSVRecord v_next_76_line_442 = next;
				int PROBE_END_LINE_442 = 442;
				return v_next_76_line_442;
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    /**
     * Parses the next record from the current point in the stream.
     *
     * @return the record as an array of values, or <tt>null</tt> if the end of the stream has been reached
     * @throws IOException
     *             on parse error or input read-failure
     */
    CSVRecord nextRecord() throws IOException {
        CSVRecord result = null;
        int PROBE_START_LINE_460 = 460;
		List<String> f_record_63_line_460 = this.record;
		int PROBE_END_LINE_460 = 460;
		f_record_63_line_460.clear();
        StringBuilder sb = null;
        int PROBE_START_LINE_461 = 461;
		boolean DO_COND_TOGGLE_LINE_462 = false;
		int PROBE_END_LINE_461 = 461;
		do {
            int PROBE_START_LINE_462 = 491;
			if (DO_COND_TOGGLE_LINE_462) {
				org.apache.commons.csv.Token f_reusable_token_64_line_491 = this.reusableToken;
				org.apache.commons.csv.Token.Type csvparser_1_expr78_line_491 = f_reusable_token_64_line_491.type;
				org.apache.commons.csv.Token.Type f_token_82_line_491 = TOKEN;
				boolean csvparser_1_expr77_line_491 = csvparser_1_expr78_line_491 == f_token_82_line_491;
				if (!(csvparser_1_expr77_line_491)) {
					break;
				}
			} else {
				DO_COND_TOGGLE_LINE_462 = true;
			}
			int PROBE_END_LINE_462 = 491;
			int PROBE_START_LINE_463 = 463;
			org.apache.commons.csv.Token f_reusable_token_64_line_463 = this.reusableToken;
			int PROBE_END_LINE_463 = 463;
			f_reusable_token_64_line_463.reset();
            int PROBE_START_LINE_464 = 464;
			org.apache.commons.csv.Lexer f_lexer_68_line_464 = this.lexer;
			org.apache.commons.csv.Token f_reusable_token_64_line_464 = this.reusableToken;
			int PROBE_END_LINE_464 = 464;
			f_lexer_68_line_464.nextToken(f_reusable_token_64_line_464);
            int PROBE_START_LINE_465 = 490;
			org.apache.commons.csv.Token f_reusable_token_64_line_465 = this.reusableToken;
			org.apache.commons.csv.Token.Type csvparser_1_expr67_line_465 = f_reusable_token_64_line_465.type;
			int PROBE_END_LINE_465 = 490;
			switch (csvparser_1_expr67_line_465) {
            case TOKEN:
                this.addRecordValue();
                break;
            case EORECORD:
                this.addRecordValue();
                break;
            case EOF:
			int PROBE_START_LINE_473 = 475;
			org.apache.commons.csv.Token f_reusable_token_64_line_473 = this.reusableToken;
			boolean csvparser_1_expr72_line_473 = f_reusable_token_64_line_473.isReady;
			int PROBE_END_LINE_473 = 475;
			if (csvparser_1_expr72_line_473) {
                    this.addRecordValue();
                }
                break;
            case INVALID:
                throw new IOException("(line " + this.getCurrentLineNumber() + ") invalid parse sequence");
            case COMMENT: // Ignored currently
                if (sb == null) { // first comment for this record
                    sb = new StringBuilder();
                } else {
                    sb.append(Constants.LF);
                }
                sb.append(this.reusableToken.content);
                this.reusableToken.type = TOKEN; // Read another token
                break;
            default:
                throw new IllegalStateException("Unexpected Token type: " + this.reusableToken.type);
            }
        } while (true);

        int PROBE_START_LINE_493 = 498;
		List<String> f_record_63_line_493 = this.record;
		boolean csvparser_1_expr82_line_493 = f_record_63_line_493.isEmpty();
		boolean csvparser_1_expr81_line_493 = !csvparser_1_expr82_line_493;
		int PROBE_END_LINE_493 = 498;
		if (csvparser_1_expr81_line_493) {
            int PROBE_START_LINE_494 = 494;
			long f_record_number_83_line_494 = this.recordNumber;
			int PROBE_END_LINE_494 = 494;
			f_record_number_83_line_494++;
            int PROBE_START_LINE_495 = 495;
			StringBuilder v_sb_79_line_495 = sb;
			boolean csvparser_1_expr89_line_495 = v_sb_79_line_495 == null;
			String csvparser_1_expr90_line_495 = null;
			if (!csvparser_1_expr89_line_495) {
				StringBuilder v_sb_79_line_495_v1 = sb;
				csvparser_1_expr90_line_495 = v_sb_79_line_495_v1.toString();
			}
			String csvparser_1_expr88_line_495 = csvparser_1_expr89_line_495 ? null : csvparser_1_expr90_line_495;
			int PROBE_END_LINE_495 = 495;
			final String comment = csvparser_1_expr88_line_495;
            int PROBE_START_LINE_496 = 497;
			List<String> f_record_63_line_496 = this.record;
			List<String> f_record_63_line_496_v1 = this.record;
			int csvparser_1_expr99_line_496 = f_record_63_line_496_v1.size();
			String[] csvparser_1_expr93_line_496 = f_record_63_line_496
					.toArray(new String[csvparser_1_expr99_line_496]);
			Map<String, Integer> f_header_map_69_line_496 = this.headerMap;
			String v_comment_84_line_496 = comment;
			int PROBE_END_LINE_496 = 497;
			result = new CSVRecord(csvparser_1_expr93_line_496, f_header_map_69_line_496, v_comment_84_line_496,
                    this.recordNumber);
        }
        int PROBE_START_LINE_499 = 499;
		org.apache.commons.csv.CSVRecord v_result_78_line_499 = result;
		int PROBE_END_LINE_499 = 499;
		return v_result_78_line_499;
    }

}
