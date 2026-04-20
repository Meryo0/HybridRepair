package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.Reader;
import java.util.ArrayList;

/**
 * @author Jonathan Hedley
 */
abstract class TreeBuilder {
    CharacterReader reader;
    Tokeniser tokeniser;
    protected Document doc; // current doc we are building into
    protected ArrayList<Element> stack; // the stack of open elements
    protected String baseUri; // current base uri, for creating new elements
    protected Token currentToken; // currentToken is used only for error tracking.
    protected ParseErrorList errors; // null when not tracking errors
    protected ParseSettings settings;

    private Token.StartTag start = new Token.StartTag(); // start tag to process
    private Token.EndTag end  = new Token.EndTag();

    abstract ParseSettings defaultSettings();

    protected void initialiseParse(Reader input, String baseUri, ParseErrorList errors, ParseSettings settings) {
        int PROBE_START_LINE_30 = 30;
		java.io.Reader p_input_1219_line_30 = input;
		int PROBE_END_LINE_30 = 30;
		Validate.notNull(p_input_1219_line_30, "String input must not be null");
        int PROBE_START_LINE_31 = 31;
		String p_base_uri_1220_line_31 = baseUri;
		int PROBE_END_LINE_31 = 31;
		Validate.notNull(p_base_uri_1220_line_31, "BaseURI must not be null");

        int PROBE_START_LINE_33 = 33;
		String p_base_uri_1220_line_33 = baseUri;
		int PROBE_END_LINE_33 = 33;
		doc = new Document(p_base_uri_1220_line_33);
        int PROBE_START_LINE_34 = 34;
		org.jsoup.parser.ParseSettings p_settings_1222_line_34 = settings;
		int PROBE_END_LINE_34 = 34;
		this.settings = p_settings_1222_line_34;
        int PROBE_START_LINE_35 = 35;
		java.io.Reader p_input_1219_line_35 = input;
		int PROBE_END_LINE_35 = 35;
		reader = new CharacterReader(p_input_1219_line_35);
        int PROBE_START_LINE_36 = 36;
		org.jsoup.parser.ParseErrorList p_errors_1221_line_36 = errors;
		int PROBE_END_LINE_36 = 36;
		this.errors = p_errors_1221_line_36;
        currentToken = null;
        int PROBE_START_LINE_38 = 38;
		org.jsoup.parser.CharacterReader f_reader_1223_line_38 = reader;
		org.jsoup.parser.ParseErrorList p_errors_1221_line_38 = errors;
		int PROBE_END_LINE_38 = 38;
		tokeniser = new Tokeniser(f_reader_1223_line_38, p_errors_1221_line_38);
        stack = new ArrayList<>(32);
        int PROBE_START_LINE_40 = 40;
		String p_base_uri_1220_line_40 = baseUri;
		int PROBE_END_LINE_40 = 40;
		this.baseUri = p_base_uri_1220_line_40;
    }

    Document parse(Reader input, String baseUri, ParseErrorList errors, ParseSettings settings) {
        int PROBE_START_LINE_44 = 44;
		java.io.Reader p_input_1225_line_44 = input;
		String p_base_uri_1226_line_44 = baseUri;
		org.jsoup.parser.ParseErrorList p_errors_1227_line_44 = errors;
		org.jsoup.parser.ParseSettings p_settings_1228_line_44 = settings;
		int PROBE_END_LINE_44 = 44;
		initialiseParse(p_input_1225_line_44, p_base_uri_1226_line_44, p_errors_1227_line_44, p_settings_1228_line_44);
        runParser();
        int PROBE_START_LINE_46 = 46;
		org.jsoup.nodes.Document f_doc_600_line_46 = doc;
		int PROBE_END_LINE_46 = 46;
		return f_doc_600_line_46;
    }

    protected void runParser() {
        while (true) {
            int PROBE_START_LINE_51 = 51;
			org.jsoup.parser.Tokeniser f_tokeniser_602_line_51 = tokeniser;
			Token tree_builder_1_expr25_line_51 = f_tokeniser_602_line_51.read();
			int PROBE_END_LINE_51 = 51;
			Token token = tree_builder_1_expr25_line_51;
            int PROBE_START_LINE_52 = 52;
			org.jsoup.parser.Token v_token_1229_line_52 = token;
			int PROBE_END_LINE_52 = 52;
			process(v_token_1229_line_52);
            int PROBE_START_LINE_53 = 53;
			org.jsoup.parser.Token v_token_1229_line_53 = token;
			int PROBE_END_LINE_53 = 53;
			v_token_1229_line_53.reset();

            int PROBE_START_LINE_55 = 56;
			org.jsoup.parser.Token v_token_1229_line_55 = token;
			org.jsoup.parser.Token.TokenType q_type_64_line_55 = v_token_1229_line_55.type;
			org.jsoup.parser.Token.TokenType q_eof_65_line_55 = Token.TokenType.EOF;
			boolean tree_builder_1_expr28_line_55 = q_type_64_line_55 == q_eof_65_line_55;
			int PROBE_END_LINE_55 = 56;
			if (tree_builder_1_expr28_line_55)
                break;
        }
    }

    protected abstract boolean process(Token token);

    protected boolean processStartTag(String name) {
        if (currentToken == start) { // don't recycle an in-use token
            return process(new Token.StartTag().name(name));
        }
        return process(start.reset().name(name));
    }

    public boolean processStartTag(String name, Attributes attrs) {
        if (currentToken == start) { // don't recycle an in-use token
            return process(new Token.StartTag().nameAttr(name, attrs));
        }
        start.reset();
        start.nameAttr(name, attrs);
        return process(start);
    }

    protected boolean processEndTag(String name) {
        if (currentToken == end) { // don't recycle an in-use token
            return process(new Token.EndTag().name(name));
        }
        return process(end.reset().name(name));
    }


    protected Element currentElement() {
        int PROBE_START_LINE_87 = 87;
		ArrayList<org.jsoup.nodes.Element> f_stack_603_line_87 = stack;
		int tree_builder_1_expr29_line_87 = f_stack_603_line_87.size();
		int PROBE_END_LINE_87 = 87;
		int size = tree_builder_1_expr29_line_87;
        int PROBE_START_LINE_88 = 88;
		int v_size_1235_line_88 = size;
		boolean tree_builder_1_expr31_line_88 = v_size_1235_line_88 > 0;
		org.jsoup.nodes.Element tree_builder_1_expr32_line_88 = null;
		if (tree_builder_1_expr31_line_88) {
			ArrayList<org.jsoup.nodes.Element> f_stack_603_line_88 = stack;
			int v_size_1235_line_88_v1 = size;
			int tree_builder_1_expr33_line_88 = v_size_1235_line_88_v1 - 1;
			tree_builder_1_expr32_line_88 = f_stack_603_line_88.get(tree_builder_1_expr33_line_88);
		}
		org.jsoup.nodes.Element tree_builder_1_expr30_line_88 = tree_builder_1_expr31_line_88
				? tree_builder_1_expr32_line_88
				: null;
		int PROBE_END_LINE_88 = 88;
		return tree_builder_1_expr30_line_88;
    }
}
