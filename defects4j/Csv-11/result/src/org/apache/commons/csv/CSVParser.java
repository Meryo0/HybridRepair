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

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
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

import static org.apache.commons.csv.Token.Type.*;

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
 *     <li>{@link #parse(java.io.File, Charset, CSVFormat)}</li>
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
     * @param charset
     *            A charset
     * @param format
     *            the CSVFormat used for CSV parsing. Must not be null.
     * @return a new parser
     * @throws IllegalArgumentException
     *             If the parameters of the format are inconsistent or if either file or format are null.
     * @throws IOException
     *             If an I/O error occurs
     */
    public static CSVParser parse(final File file, final Charset charset, final CSVFormat format) throws IOException {
        Assertions.notNull(file, "file");
        Assertions.notNull(format, "format");
        // Use the default Charset explicitly
        return new CSVParser(new InputStreamReader(new FileInputStream(file), charset), format);
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
        Assertions.notNull(string, "string");
        Assertions.notNull(format, "format");

        return new CSVParser(new StringReader(string), format);
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
        int PROBE_START_LINE_245 = 245;
		java.io.Reader p_reader_72_line_245 = reader;
		int PROBE_END_LINE_245 = 245;
		Assertions.notNull(p_reader_72_line_245, "reader");
        int PROBE_START_LINE_246 = 246;
		org.apache.commons.csv.CSVFormat p_format_73_line_246 = format;
		int PROBE_END_LINE_246 = 246;
		Assertions.notNull(p_format_73_line_246, "format");

        int PROBE_START_LINE_248 = 248;
		org.apache.commons.csv.CSVFormat p_format_73_line_248 = format;
		int PROBE_END_LINE_248 = 248;
		this.format = p_format_73_line_248;
        int PROBE_START_LINE_249 = 249;
		org.apache.commons.csv.CSVFormat p_format_73_line_249 = format;
		java.io.Reader p_reader_72_line_249 = reader;
		int PROBE_END_LINE_249 = 249;
		this.lexer = new Lexer(p_format_73_line_249, new ExtendedBufferedReader(p_reader_72_line_249));
        int PROBE_START_LINE_250 = 250;
		Map<String, Integer> csvparser_1_expr15_line_250 = this.initializeHeader();
		int PROBE_END_LINE_250 = 250;
		this.headerMap = csvparser_1_expr15_line_250;
    }

    private void addRecordValue() {
        int PROBE_START_LINE_254 = 254;
		org.apache.commons.csv.Token f_reusable_token_71_line_254 = this.reusableToken;
		StringBuilder csvparser_1_expr19_line_254 = f_reusable_token_71_line_254.content;
		String csvparser_1_expr18_line_254 = csvparser_1_expr19_line_254.toString();
		int PROBE_END_LINE_254 = 254;
		final String input = csvparser_1_expr18_line_254;
        int PROBE_START_LINE_255 = 255;
		org.apache.commons.csv.CSVFormat f_format_74_line_255 = this.format;
		String csvparser_1_expr22_line_255 = f_format_74_line_255.getNullString();
		int PROBE_END_LINE_255 = 255;
		final String nullString = csvparser_1_expr22_line_255;
        int PROBE_START_LINE_256 = 260;
		String v_null_string_79_line_256 = nullString;
		boolean csvparser_1_expr25_line_256 = v_null_string_79_line_256 == null;
		int PROBE_END_LINE_256 = 260;
		if (csvparser_1_expr25_line_256) {
            this.record.add(input);
        } else {
            int PROBE_START_LINE_259 = 259;
			List<String> f_record_70_line_259 = this.record;
			String v_input_77_line_259 = input;
			String v_null_string_79_line_259 = nullString;
			boolean csvparser_1_expr30_line_259 = v_input_77_line_259.equalsIgnoreCase(v_null_string_79_line_259);
			String v_input_77_line_259_v1 = null;
			if (!csvparser_1_expr30_line_259) {
				v_input_77_line_259_v1 = input;
			}
			String csvparser_1_expr27_line_259 = csvparser_1_expr30_line_259 ? null : v_input_77_line_259_v1;
			int PROBE_END_LINE_259 = 259;
			f_record_70_line_259.add(csvparser_1_expr27_line_259);
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
    public <T extends Collection<CSVRecord>> T getRecords(final T records) throws IOException {
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
        int PROBE_START_LINE_361 = 361;
		org.apache.commons.csv.CSVFormat f_format_74_line_361 = this.format;
		String[] csvparser_1_expr31_line_361 = f_format_74_line_361.getHeader();
		int PROBE_END_LINE_361 = 361;
		final String[] formatHeader = csvparser_1_expr31_line_361;
        int PROBE_START_LINE_362 = 392;
		String[] v_format_header_82_line_362 = formatHeader;
		boolean csvparser_1_expr34_line_362 = v_format_header_82_line_362 != null;
		int PROBE_END_LINE_362 = 392;
		if (csvparser_1_expr34_line_362) {
            hdrMap = new LinkedHashMap<String, Integer>();

            String[] headerRecord = null;
            int PROBE_START_LINE_366 = 377;
			String[] v_format_header_82_line_366 = formatHeader;
			int q_length_2_line_366 = v_format_header_82_line_366.length;
			boolean csvparser_1_expr37_line_366 = q_length_2_line_366 == 0;
			int PROBE_END_LINE_366 = 377;
			if (csvparser_1_expr37_line_366) {
                int PROBE_START_LINE_368 = 368;
				CSVRecord csvparser_1_expr38_line_368 = this.nextRecord();
				int PROBE_END_LINE_368 = 368;
				// read the header from the first line of the file
                final CSVRecord nextRecord = csvparser_1_expr38_line_368;
                int PROBE_START_LINE_369 = 371;
				org.apache.commons.csv.CSVRecord v_next_record_84_line_369 = nextRecord;
				boolean csvparser_1_expr40_line_369 = v_next_record_84_line_369 != null;
				int PROBE_END_LINE_369 = 371;
				if (csvparser_1_expr40_line_369) {
                    int PROBE_START_LINE_370 = 370;
					org.apache.commons.csv.CSVRecord v_next_record_84_line_370 = nextRecord;
					String[] csvparser_1_expr42_line_370 = v_next_record_84_line_370.values();
					int PROBE_END_LINE_370 = 370;
					headerRecord = csvparser_1_expr42_line_370;
                }
            } else {
                if (this.format.getSkipHeaderRecord()) {
                    this.nextRecord();
                }
                headerRecord = formatHeader;
            }

            int PROBE_START_LINE_380 = 391;
			String[] v_header_record_83_line_380 = headerRecord;
			boolean csvparser_1_expr43_line_380 = v_header_record_83_line_380 != null;
			int PROBE_END_LINE_380 = 391;
			// build the name to index mappings
            if (csvparser_1_expr43_line_380) {
                for (int i = 0; true; i++) {
                    int PROBE_START_LINE_382 = 382;
					int v_i_85_line_381 = i;
					String[] v_header_record_83_line_381 = headerRecord;
					int q_length_3_line_381 = v_header_record_83_line_381.length;
					boolean csvparser_1_expr45_line_381 = v_i_85_line_381 < q_length_3_line_381;
					if (!(csvparser_1_expr45_line_381)) {
						break;
					}
					String[] v_header_record_83_line_382 = headerRecord;
					int v_i_85_line_382 = i;
					String csvparser_1_expr47_line_382 = v_header_record_83_line_382[v_i_85_line_382];
					int PROBE_END_LINE_382 = 382;
					final String header = csvparser_1_expr47_line_382;
                    int PROBE_START_LINE_383 = 383;
					Map<String, Integer> v_hdr_map_81_line_383 = hdrMap;
					String v_header_86_line_383 = header;
					boolean csvparser_1_expr48_line_383 = v_hdr_map_81_line_383.containsKey(v_header_86_line_383);
					int PROBE_END_LINE_383 = 383;
					final boolean containsHeader = csvparser_1_expr48_line_383;
                    int PROBE_START_LINE_384 = 384;
					String v_header_86_line_384 = header;
					String csvparser_1_expr50_line_384 = v_header_86_line_384.trim();
					boolean csvparser_1_expr49_line_384 = csvparser_1_expr50_line_384.isEmpty();
					int PROBE_END_LINE_384 = 384;
					final boolean emptyHeader = csvparser_1_expr49_line_384;
                    int PROBE_START_LINE_385 = 388;
					boolean v_contains_header_87_line_385 = containsHeader;
					boolean csvparser_1_expr52_line_385 = true;
					if (v_contains_header_87_line_385) {
						boolean v_empty_header_88_line_385 = emptyHeader;
						boolean csvparser_1_expr54_line_385 = !v_empty_header_88_line_385;
						boolean csvparser_1_expr55_line_385 = false;
						if (!csvparser_1_expr54_line_385) {
							boolean v_empty_header_88_line_385_v1 = emptyHeader;
							boolean csvparser_1_expr57_line_385 = true;
							if (v_empty_header_88_line_385_v1) {
								org.apache.commons.csv.CSVFormat f_format_74_line_385 = this.format;
								boolean csvparser_1_expr58_line_385 = f_format_74_line_385.getIgnoreEmptyHeaders();
								csvparser_1_expr57_line_385 = !csvparser_1_expr58_line_385;
							}
							boolean csvparser_1_expr56_line_385 = v_empty_header_88_line_385_v1
									&& csvparser_1_expr57_line_385;
							csvparser_1_expr55_line_385 = (csvparser_1_expr56_line_385);
						}
						boolean csvparser_1_expr53_line_385 = csvparser_1_expr54_line_385
								|| csvparser_1_expr55_line_385;
						csvparser_1_expr52_line_385 = (csvparser_1_expr53_line_385);
					}
					boolean csvparser_1_expr51_line_385 = v_contains_header_87_line_385 && csvparser_1_expr52_line_385;
					int PROBE_END_LINE_385 = 388;
					if (csvparser_1_expr51_line_385) {
                        throw new IllegalArgumentException("The header contains a duplicate name: \"" + header +
                                "\" in " + Arrays.toString(headerRecord));
                    }
                    int PROBE_START_LINE_389 = 389;
					Map<String, Integer> v_hdr_map_81_line_389 = hdrMap;
					String v_header_86_line_389 = header;
					int v_i_85_line_389 = i;
					Integer csvparser_1_expr62_line_389 = Integer.valueOf(v_i_85_line_389);
					int PROBE_END_LINE_389 = 389;
					v_hdr_map_81_line_389.put(v_header_86_line_389, csvparser_1_expr62_line_389);
                }
            }
        }
        return hdrMap;
    }

    public boolean isClosed() {
        return this.lexer.isClosed();
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
                    return CSVParser.this.nextRecord();
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
                if (CSVParser.this.isClosed()) {
                    throw new NoSuchElementException("CSVParser has been closed");
                }
                CSVRecord next = this.current;
                this.current = null;

                if (next == null) {
                    // hasNext() wasn't called before
                    next = this.getNextRecord();
                    if (next == null) {
                        throw new NoSuchElementException("No more CSV records available");
                    }
                }

                return next;
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
        int PROBE_START_LINE_465 = 465;
		List<String> f_record_70_line_465 = this.record;
		int PROBE_END_LINE_465 = 465;
		f_record_70_line_465.clear();
        StringBuilder sb = null;
        int PROBE_START_LINE_466 = 466;
		boolean DO_COND_TOGGLE_LINE_467 = false;
		int PROBE_END_LINE_466 = 466;
		do {
            int PROBE_START_LINE_467 = 496;
			if (DO_COND_TOGGLE_LINE_467) {
				org.apache.commons.csv.Token f_reusable_token_71_line_496 = this.reusableToken;
				org.apache.commons.csv.Token.Type csvparser_1_expr82_line_496 = f_reusable_token_71_line_496.type;
				org.apache.commons.csv.Token.Type f_token_92_line_496 = TOKEN;
				boolean csvparser_1_expr81_line_496 = csvparser_1_expr82_line_496 == f_token_92_line_496;
				if (!(csvparser_1_expr81_line_496)) {
					break;
				}
			} else {
				DO_COND_TOGGLE_LINE_467 = true;
			}
			int PROBE_END_LINE_467 = 496;
			int PROBE_START_LINE_468 = 468;
			org.apache.commons.csv.Token f_reusable_token_71_line_468 = this.reusableToken;
			int PROBE_END_LINE_468 = 468;
			f_reusable_token_71_line_468.reset();
            int PROBE_START_LINE_469 = 469;
			org.apache.commons.csv.Lexer f_lexer_75_line_469 = this.lexer;
			org.apache.commons.csv.Token f_reusable_token_71_line_469 = this.reusableToken;
			int PROBE_END_LINE_469 = 469;
			f_lexer_75_line_469.nextToken(f_reusable_token_71_line_469);
            int PROBE_START_LINE_470 = 495;
			org.apache.commons.csv.Token f_reusable_token_71_line_470 = this.reusableToken;
			org.apache.commons.csv.Token.Type csvparser_1_expr74_line_470 = f_reusable_token_71_line_470.type;
			int PROBE_END_LINE_470 = 495;
			switch (csvparser_1_expr74_line_470) {
            case TOKEN:
                this.addRecordValue();
                break;
            case EORECORD:
                this.addRecordValue();
                break;
            case EOF:
                if (this.reusableToken.isReady) {
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

        int PROBE_START_LINE_498 = 503;
		List<String> f_record_70_line_498 = this.record;
		boolean csvparser_1_expr86_line_498 = f_record_70_line_498.isEmpty();
		boolean csvparser_1_expr85_line_498 = !csvparser_1_expr86_line_498;
		int PROBE_END_LINE_498 = 503;
		if (csvparser_1_expr85_line_498) {
            int PROBE_START_LINE_499 = 499;
			long f_record_number_93_line_499 = this.recordNumber;
			int PROBE_END_LINE_499 = 499;
			f_record_number_93_line_499++;
            int PROBE_START_LINE_500 = 500;
			StringBuilder v_sb_90_line_500 = sb;
			boolean csvparser_1_expr93_line_500 = v_sb_90_line_500 == null;
			String csvparser_1_expr94_line_500 = null;
			if (!csvparser_1_expr93_line_500) {
				StringBuilder v_sb_90_line_500_v1 = sb;
				csvparser_1_expr94_line_500 = v_sb_90_line_500_v1.toString();
			}
			String csvparser_1_expr92_line_500 = csvparser_1_expr93_line_500 ? null : csvparser_1_expr94_line_500;
			int PROBE_END_LINE_500 = 500;
			final String comment = csvparser_1_expr92_line_500;
            int PROBE_START_LINE_501 = 502;
			List<String> f_record_70_line_501 = this.record;
			List<String> f_record_70_line_501_v1 = this.record;
			int csvparser_1_expr103_line_501 = f_record_70_line_501_v1.size();
			String[] csvparser_1_expr97_line_501 = f_record_70_line_501
					.toArray(new String[csvparser_1_expr103_line_501]);
			Map<String, Integer> f_header_map_76_line_501 = this.headerMap;
			String v_comment_94_line_501 = comment;
			int PROBE_END_LINE_501 = 502;
			result = new CSVRecord(csvparser_1_expr97_line_501, f_header_map_76_line_501, v_comment_94_line_501,
                    this.recordNumber);
        }
        int PROBE_START_LINE_504 = 504;
		org.apache.commons.csv.CSVRecord v_result_89_line_504 = result;
		int PROBE_END_LINE_504 = 504;
		return v_result_89_line_504;
    }

}
