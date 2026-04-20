/*
 *
 * ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Rhino code, released
 * May 6, 1999.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1997-1999
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Bob Jervis
 *   Google Inc.
 *
 * Alternatively, the contents of this file may be used under the terms of
 * the GNU General Public License Version 2 or later (the "GPL"), in which
 * case the provisions of the GPL are applicable instead of those above. If
 * you wish to allow use of your version of this file only under the terms of
 * the GPL and not to allow others to use your version of this file under the
 * MPL, indicate your decision by deleting the provisions above and replacing
 * them with the notice and other provisions required by the GPL. If you do
 * not delete the provisions above, a recipient may use your version of this
 * file under either the MPL or the GPL.
 *
 * ***** END LICENSE BLOCK ***** */

package com.google.javascript.rhino;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * A simple {@link ErrorReporter} that collects warnings and errors and makes
 * them accessible via {@link #errors()} and {@link #warnings()}.
 *
 */
public class SimpleErrorReporter implements ErrorReporter {
    private List<String> warnings = null;
    private List<String> errors = null;

    @Override
    public void warning(String message, String sourceName, int line,
                        int lineOffset) {
        if (warnings == null) {
            warnings = new ArrayList<String>();
        }
        warnings.add(formatDetailedMessage(message, sourceName, line));
    }

    @Override
    public void error(String message, String sourceName, int line,
                      int lineOffset) {
        if (errors == null) {
            errors = new ArrayList<String>();
        }
        errors.add(formatDetailedMessage(message, sourceName, line));
    }

    /**
     * Returns the list of errors, or {@code null} if there were none.
     */
    public List<String> errors() {
        return errors;
    }

    /**
     * Returns the list of warnings, or {@code null} if there were none.
     */
    public List<String> warnings() {
        return warnings;
    }

    private String formatDetailedMessage(
        String message, String sourceName, int lineNumber) {
      String details = message;
      if (sourceName == null || lineNumber <= 0) {
        return details;
      }
      StringBuilder buf = new StringBuilder(details);
      buf.append(" (");
      if (sourceName != null) {
        buf.append(sourceName);
      }
      if (lineNumber > 0) {
        buf.append('#');
        buf.append(lineNumber);
      }
      buf.append(')');
      return buf.toString();
    }

    public static String getMessage0(String messageId) {
      int PROBE_START_LINE_109 = 109;
		String p_message_id_5283_line_109 = messageId;
		String simple_error_reporter_1_expr1_line_109 = getMessage(p_message_id_5283_line_109, null);
		int PROBE_END_LINE_109 = 109;
	return simple_error_reporter_1_expr1_line_109;
    }

    public static String getMessage1(String messageId, Object arg1) {
      Object[] arguments = {arg1};
      return getMessage(messageId, arguments);
    }

    static String getMessage(String messageId, Object[] arguments) {
      final String defaultResource
          = "rhino_ast.java.com.google.javascript.rhino.Messages";

      int PROBE_START_LINE_121 = 121;
	Locale simple_error_reporter_1_expr2_line_121 = Locale.getDefault();
	int PROBE_END_LINE_121 = 121;
	Locale locale = simple_error_reporter_1_expr2_line_121;

      int PROBE_START_LINE_124 = 124;
	String v_default_resource_5288_line_124 = defaultResource;
	java.util.Locale v_locale_5289_line_124 = locale;
	ResourceBundle simple_error_reporter_1_expr3_line_124 = ResourceBundle.getBundle(v_default_resource_5288_line_124,
			v_locale_5289_line_124);
	int PROBE_END_LINE_124 = 124;
	// ResourceBundle does caching.
      ResourceBundle rb = simple_error_reporter_1_expr3_line_124;

      String formatString = null;
      try {
          int PROBE_START_LINE_128 = 128;
		java.util.ResourceBundle v_rb_5290_line_128 = rb;
		String p_message_id_5286_line_128 = messageId;
		String simple_error_reporter_1_expr5_line_128 = v_rb_5290_line_128.getString(p_message_id_5286_line_128);
		int PROBE_END_LINE_128 = 128;
		formatString = simple_error_reporter_1_expr5_line_128;
      } catch (java.util.MissingResourceException mre) {
          throw new RuntimeException
              ("no message resource found for message property " + messageId);
      }

      int PROBE_START_LINE_139 = 139;
	String v_format_string_5291_line_139 = formatString;
	int PROBE_END_LINE_139 = 139;
	/*
       * It's OK to format the string, even if 'arguments' is null;
       * we need to format it anyway, to make double ''s collapse to
       * single 's.
       */
      MessageFormat formatter = new MessageFormat(v_format_string_5291_line_139);
      int PROBE_START_LINE_140 = 140;
	java.text.MessageFormat v_formatter_5292_line_140 = formatter;
	Object[] p_arguments_5287_line_140 = arguments;
	String simple_error_reporter_1_expr7_line_140 = v_formatter_5292_line_140.format(p_arguments_5287_line_140);
	int PROBE_END_LINE_140 = 140;
	return simple_error_reporter_1_expr7_line_140;
    }

}
