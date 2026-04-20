package org.jsoup.parser;

import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Jonathan Hedley
 */
abstract class TreeBuilder {
    CharacterReader reader;
    Tokeniser tokeniser;
    protected Document doc; // current doc we are building into
    protected DescendableLinkedList<Element> stack; // the stack of open elements
    protected String baseUri; // current base uri, for creating new elements
    protected Token currentToken; // currentToken is used only for error tracking.
    protected ParseErrorList errors; // null when not tracking errors

    protected void initialiseParse(String input, String baseUri, ParseErrorList errors) {
        int PROBE_START_LINE_24 = 24;
		String p_input_882_line_24 = input;
		int PROBE_END_LINE_24 = 24;
		Validate.notNull(p_input_882_line_24, "String input must not be null");
        int PROBE_START_LINE_25 = 25;
		String p_base_uri_883_line_25 = baseUri;
		int PROBE_END_LINE_25 = 25;
		Validate.notNull(p_base_uri_883_line_25, "BaseURI must not be null");

        int PROBE_START_LINE_27 = 27;
		String p_base_uri_883_line_27 = baseUri;
		int PROBE_END_LINE_27 = 27;
		doc = new Document(p_base_uri_883_line_27);
        int PROBE_START_LINE_28 = 28;
		String p_input_882_line_28 = input;
		int PROBE_END_LINE_28 = 28;
		reader = new CharacterReader(p_input_882_line_28);
        int PROBE_START_LINE_29 = 29;
		org.jsoup.parser.ParseErrorList p_errors_884_line_29 = errors;
		int PROBE_END_LINE_29 = 29;
		this.errors = p_errors_884_line_29;
        int PROBE_START_LINE_30 = 30;
		org.jsoup.parser.CharacterReader f_reader_885_line_30 = reader;
		org.jsoup.parser.ParseErrorList p_errors_884_line_30 = errors;
		int PROBE_END_LINE_30 = 30;
		tokeniser = new Tokeniser(f_reader_885_line_30, p_errors_884_line_30);
        stack = new DescendableLinkedList<Element>();
        int PROBE_START_LINE_32 = 32;
		String p_base_uri_883_line_32 = baseUri;
		int PROBE_END_LINE_32 = 32;
		this.baseUri = p_base_uri_883_line_32;
    }

    Document parse(String input, String baseUri) {
        return parse(input, baseUri, ParseErrorList.noTracking());
    }

    Document parse(String input, String baseUri, ParseErrorList errors) {
        int PROBE_START_LINE_40 = 40;
		String p_input_888_line_40 = input;
		String p_base_uri_889_line_40 = baseUri;
		org.jsoup.parser.ParseErrorList p_errors_890_line_40 = errors;
		int PROBE_END_LINE_40 = 40;
		initialiseParse(p_input_888_line_40, p_base_uri_889_line_40, p_errors_890_line_40);
        runParser();
        int PROBE_START_LINE_42 = 42;
		org.jsoup.nodes.Document f_doc_345_line_42 = doc;
		int PROBE_END_LINE_42 = 42;
		return f_doc_345_line_42;
    }

    protected void runParser() {
        while (true) {
            int PROBE_START_LINE_47 = 47;
			org.jsoup.parser.Tokeniser f_tokeniser_347_line_47 = tokeniser;
			Token tree_builder_1_expr19_line_47 = f_tokeniser_347_line_47.read();
			int PROBE_END_LINE_47 = 47;
			Token token = tree_builder_1_expr19_line_47;
            int PROBE_START_LINE_48 = 48;
			org.jsoup.parser.Token v_token_891_line_48 = token;
			int PROBE_END_LINE_48 = 48;
			process(v_token_891_line_48);

            int PROBE_START_LINE_50 = 51;
			org.jsoup.parser.Token v_token_891_line_50 = token;
			org.jsoup.parser.Token.TokenType q_type_49_line_50 = v_token_891_line_50.type;
			org.jsoup.parser.Token.TokenType q_eof_50_line_50 = Token.TokenType.EOF;
			boolean tree_builder_1_expr21_line_50 = q_type_49_line_50 == q_eof_50_line_50;
			int PROBE_END_LINE_50 = 51;
			if (tree_builder_1_expr21_line_50)
                break;
        }
    }

    protected abstract boolean process(Token token);

    protected Element currentElement() {
        int PROBE_START_LINE_58 = 58;
		DescendableLinkedList<org.jsoup.nodes.Element> f_stack_348_line_58 = stack;
		org.jsoup.nodes.Element tree_builder_1_expr22_line_58 = f_stack_348_line_58.getLast();
		int PROBE_END_LINE_58 = 58;
		return tree_builder_1_expr22_line_58;
    }
}
