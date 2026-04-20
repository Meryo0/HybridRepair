package org.jsoup;

import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.safety.Cleaner;
import org.jsoup.safety.Whitelist;
import org.jsoup.helper.DataUtil;
import org.jsoup.helper.HttpConnection;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/**
 The core public access point to the jsoup functionality.

 @author Jonathan Hedley */
public class Jsoup {
    private Jsoup() {}

    /**
     Parse HTML into a Document. The parser will make a sensible, balanced document tree out of any HTML.

     @param html    HTML to parse
     @param baseUri The URL where the HTML was retrieved from. Used to resolve relative URLs to absolute URLs, that occur
     before the HTML declares a {@code <base href>} tag.
     @return sane HTML
     */
    public static Document parse(String html, String baseUri) {
        return Parser.parse(html, baseUri);
    }

    /**
     Parse HTML into a Document, using the provided Parser. You can provide an alternate parser, such as a simple XML
     (non-HTML) parser.

     @param html    HTML to parse
     @param baseUri The URL where the HTML was retrieved from. Used to resolve relative URLs to absolute URLs, that occur
     before the HTML declares a {@code <base href>} tag.
     @param parser alternate {@link Parser#xmlParser() parser} to use.
     @return sane HTML
     */
    public static Document parse(String html, String baseUri, Parser parser) {
        return parser.parseInput(html, baseUri);
    }

    /**
     Parse HTML into a Document. As no base URI is specified, absolute URL detection relies on the HTML including a
     {@code <base href>} tag.

     @param html HTML to parse
     @return sane HTML

     @see #parse(String, String)
     */
    public static Document parse(String html) {
        int PROBE_START_LINE_58 = 58;
		String p_html_6_line_58 = html;
		org.jsoup.nodes.Document jsoup_1_expr1_line_58 = Parser.parse(p_html_6_line_58, "");
		int PROBE_END_LINE_58 = 58;
		return jsoup_1_expr1_line_58;
    }

    /**
     * Creates a new {@link Connection} to a URL. Use to fetch and parse a HTML page.
     * <p>
     * Use examples:
     * <ul>
     *  <li><code>Document doc = Jsoup.connect("http://example.com").userAgent("Mozilla").data("name", "jsoup").get();</code></li>
     *  <li><code>Document doc = Jsoup.connect("http://example.com").cookie("auth", "token").post();
     * </ul>
     * @param url URL to connect to. The protocol must be {@code http} or {@code https}.
     * @return the connection. You can add data, cookies, and headers; set the user-agent, referrer, method; and then execute.
     */
    public static Connection connect(String url) {
        return HttpConnection.connect(url);
    }

    /**
     Parse the contents of a file as HTML.

     @param in          file to load HTML from
     @param charsetName (optional) character set of file contents. Set to {@code null} to determine from {@code http-equiv} meta tag, if
     present, or fall back to {@code UTF-8} (which is often safe to do).
     @param baseUri     The URL where the HTML was retrieved from, to resolve relative links against.
     @return sane HTML

     @throws IOException if the file could not be found, or read, or if the charsetName is invalid.
     */
    public static Document parse(File in, String charsetName, String baseUri) throws IOException {
        return DataUtil.load(in, charsetName, baseUri);
    }

    /**
     Parse the contents of a file as HTML. The location of the file is used as the base URI to qualify relative URLs.

     @param in          file to load HTML from
     @param charsetName (optional) character set of file contents. Set to {@code null} to determine from {@code http-equiv} meta tag, if
     present, or fall back to {@code UTF-8} (which is often safe to do).
     @return sane HTML

     @throws IOException if the file could not be found, or read, or if the charsetName is invalid.
     @see #parse(File, String, String)
     */
    public static Document parse(File in, String charsetName) throws IOException {
        return DataUtil.load(in, charsetName, in.getAbsolutePath());
    }

     /**
     Read an input stream, and parse it to a Document.

     @param in          input stream to read. Make sure to close it after parsing.
     @param charsetName (optional) character set of file contents. Set to {@code null} to determine from {@code http-equiv} meta tag, if
     present, or fall back to {@code UTF-8} (which is often safe to do).
     @param baseUri     The URL where the HTML was retrieved from, to resolve relative links against.
     @return sane HTML

     @throws IOException if the file could not be found, or read, or if the charsetName is invalid.
     */
    public static Document parse(InputStream in, String charsetName, String baseUri) throws IOException {
        return DataUtil.load(in, charsetName, baseUri);
    }

    /**
     Read an input stream, and parse it to a Document. You can provide an alternate parser, such as a simple XML
     (non-HTML) parser.

     @param in          input stream to read. Make sure to close it after parsing.
     @param charsetName (optional) character set of file contents. Set to {@code null} to determine from {@code http-equiv} meta tag, if
     present, or fall back to {@code UTF-8} (which is often safe to do).
     @param baseUri     The URL where the HTML was retrieved from, to resolve relative links against.
     @param parser alternate {@link Parser#xmlParser() parser} to use.
     @return sane HTML

     @throws IOException if the file could not be found, or read, or if the charsetName is invalid.
     */
    public static Document parse(InputStream in, String charsetName, String baseUri, Parser parser) throws IOException {
        return DataUtil.load(in, charsetName, baseUri, parser);
    }

    /**
     Parse a fragment of HTML, with the assumption that it forms the {@code body} of the HTML.

     @param bodyHtml body HTML fragment
     @param baseUri  URL to resolve relative URLs against.
     @return sane HTML document

     @see Document#body()
     */
    public static Document parseBodyFragment(String bodyHtml, String baseUri) {
        int PROBE_START_LINE_148 = 148;
		String p_body_html_20_line_148 = bodyHtml;
		String p_base_uri_21_line_148 = baseUri;
		org.jsoup.nodes.Document jsoup_1_expr2_line_148 = Parser.parseBodyFragment(p_body_html_20_line_148,
				p_base_uri_21_line_148);
		int PROBE_END_LINE_148 = 148;
		return jsoup_1_expr2_line_148;
    }

    /**
     Parse a fragment of HTML, with the assumption that it forms the {@code body} of the HTML.

     @param bodyHtml body HTML fragment
     @return sane HTML document

     @see Document#body()
     */
    public static Document parseBodyFragment(String bodyHtml) {
        return Parser.parseBodyFragment(bodyHtml, "");
    }

    /**
     Fetch a URL, and parse it as HTML. Provided for compatibility; in most cases use {@link #connect(String)} instead.
     <p>
     The encoding character set is determined by the content-type header or http-equiv meta tag, or falls back to {@code UTF-8}.

     @param url           URL to fetch (with a GET). The protocol must be {@code http} or {@code https}.
     @param timeoutMillis Connection and read timeout, in milliseconds. If exceeded, IOException is thrown.
     @return The parsed HTML.

     @throws IOException If the final server response != 200 OK (redirects are followed), or if there's an error reading
     the response stream.

     @see #connect(String)
     */
    public static Document parse(URL url, int timeoutMillis) throws IOException {
        Connection con = HttpConnection.connect(url);
        con.timeout(timeoutMillis);
        return con.get();
    }

    /**
     Get safe HTML from untrusted input HTML, by parsing input HTML and filtering it through a white-list of permitted
     tags and attributes.

     @param bodyHtml  input untrusted HTML (body fragment)
     @param baseUri   URL to resolve relative URLs against
     @param whitelist white-list of permitted HTML elements
     @return safe HTML (body fragment)

     @see Cleaner#clean(Document)
     */
    public static String clean(String bodyHtml, String baseUri, Whitelist whitelist) {
        int PROBE_START_LINE_195 = 195;
		String p_body_html_25_line_195 = bodyHtml;
		String p_base_uri_26_line_195 = baseUri;
		Document jsoup_1_expr3_line_195 = parseBodyFragment(p_body_html_25_line_195, p_base_uri_26_line_195);
		int PROBE_END_LINE_195 = 195;
		Document dirty = jsoup_1_expr3_line_195;
        int PROBE_START_LINE_196 = 196;
		org.jsoup.safety.Whitelist p_whitelist_27_line_196 = whitelist;
		int PROBE_END_LINE_196 = 196;
		Cleaner cleaner = new Cleaner(p_whitelist_27_line_196);
        int PROBE_START_LINE_197 = 197;
		org.jsoup.safety.Cleaner v_cleaner_29_line_197 = cleaner;
		org.jsoup.nodes.Document v_dirty_28_line_197 = dirty;
		Document jsoup_1_expr5_line_197 = v_cleaner_29_line_197.clean(v_dirty_28_line_197);
		int PROBE_END_LINE_197 = 197;
		Document clean = jsoup_1_expr5_line_197;
        int PROBE_START_LINE_198 = 198;
		org.jsoup.nodes.Document v_clean_30_line_198 = clean;
		org.jsoup.nodes.Element jsoup_1_expr7_line_198 = v_clean_30_line_198.body();
		String jsoup_1_expr6_line_198 = jsoup_1_expr7_line_198.html();
		int PROBE_END_LINE_198 = 198;
		return jsoup_1_expr6_line_198;
    }

    /**
     Get safe HTML from untrusted input HTML, by parsing input HTML and filtering it through a white-list of permitted
     tags and attributes.

     @param bodyHtml  input untrusted HTML (body fragment)
     @param whitelist white-list of permitted HTML elements
     @return safe HTML (body fragment)

     @see Cleaner#clean(Document)
     */
    public static String clean(String bodyHtml, Whitelist whitelist) {
        int PROBE_START_LINE_212 = 212;
		String p_body_html_31_line_212 = bodyHtml;
		org.jsoup.safety.Whitelist p_whitelist_32_line_212 = whitelist;
		String jsoup_1_expr8_line_212 = clean(p_body_html_31_line_212, "", p_whitelist_32_line_212);
		int PROBE_END_LINE_212 = 212;
		return jsoup_1_expr8_line_212;
    }

    /**
     * Get safe HTML from untrusted input HTML, by parsing input HTML and filtering it through a white-list of
     * permitted
     * tags and attributes.
     *
     * @param bodyHtml input untrusted HTML (body fragment)
     * @param baseUri URL to resolve relative URLs against
     * @param whitelist white-list of permitted HTML elements
     * @param outputSettings document output settings; use to control pretty-printing and entity escape modes
     * @return safe HTML (body fragment)
     * @see Cleaner#clean(Document)
     */
    public static String clean(String bodyHtml, String baseUri, Whitelist whitelist, Document.OutputSettings outputSettings) {
        Document dirty = parseBodyFragment(bodyHtml, baseUri);
        Cleaner cleaner = new Cleaner(whitelist);
        Document clean = cleaner.clean(dirty);
        clean.outputSettings(outputSettings);
        return clean.body().html();
    }

    /**
     Test if the input HTML has only tags and attributes allowed by the Whitelist. Useful for form validation. The input HTML should
     still be run through the cleaner to set up enforced attributes, and to tidy the output.
     @param bodyHtml HTML to test
     @param whitelist whitelist to test against
     @return true if no tags or attributes were removed; false otherwise
     @see #clean(String, org.jsoup.safety.Whitelist) 
     */
    public static boolean isValid(String bodyHtml, Whitelist whitelist) {
        Document dirty = parseBodyFragment(bodyHtml, "");
        Cleaner cleaner = new Cleaner(whitelist);
        return cleaner.isValid(dirty);
    }
    
}
