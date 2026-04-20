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
 *   Roger Lawrence
 *   Mike McCabe
 *   Igor Bukanov
 *   Ethan Hugg
 *   Bob Jervis
 *   Terry Lucas
 *   Milen Nankov
 *   Pascal-Louis Perez
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

/**
 * This class implements the JavaScript scanner.
 *
 * It is based on the C source files jsscan.c and jsscan.h
 * in the jsref package.
 *
 */

public class TokenStream {
    public static boolean isKeyword(String name) {
        boolean id = false;
        int PROBE_START_LINE_59 = 59;
		String p_name_5293_line_59 = name;
		int PROBE_END_LINE_59 = 59;
		String s = p_name_5293_line_59;
        complete: {
            String X = null;
            int c;
            int PROBE_START_LINE_63 = 183;
			String v_s_5295_line_63 = s;
			int token_stream_1_expr1_line_63 = v_s_5295_line_63.length();
			int PROBE_END_LINE_63 = 183;
			partial: switch (token_stream_1_expr1_line_63) {
            case 2: c=s.charAt(1);
                if (c=='f') {
                  if (s.charAt(0)=='i') {id=true; break complete;}
                } else if (c=='n') {
                  if (s.charAt(0)=='i') {id=true; break complete;}
                } else if (c=='o') {
                  if (s.charAt(0)=='d') {id=true; break complete;}
                }
                break partial;
            case 3: int PROBE_START_LINE_73 = 94;
			String v_s_5295_line_73 = s;
			char token_stream_1_expr2_line_73 = v_s_5295_line_73.charAt(0);
			int PROBE_END_LINE_73 = 94;
			switch (token_stream_1_expr2_line_73) {
                case 'f':
                  if (s.charAt(2)=='r' && s.charAt(1)=='o') {
                    id=true; break complete;
                  } break partial;
                case 'i':
                  if (s.charAt(2)=='t' && s.charAt(1)=='n') {
                    id=true; break complete;
                  } break partial;
                case 'n':
                  if (s.charAt(2)=='w' && s.charAt(1)=='e') {
                    id=true; break complete;
                  } break partial;
                case 't':
                  if (s.charAt(2)=='y' && s.charAt(1)=='r') {
                    id=true; break complete;
                  } break partial;
                case 'v':
                  if (s.charAt(2)=='r' && s.charAt(1)=='a') {
                    id=true; break complete;
                  } break partial;
                } break partial;
            case 4: switch (s.charAt(0)) {
                case 'b': X="byte";id=true; break partial;
                case 'c': c=s.charAt(3);
                    if (c=='e') { if (s.charAt(2)=='s' && s.charAt(1)=='a') {
                            id=true; break complete;} }
                    else if (c=='r') {
                      if (s.charAt(2)=='a' && s.charAt(1)=='h') {
                        id=true; break complete;
                      }
                    }
                    break partial;
                case 'e': c=s.charAt(3);
                    if (c=='e') { if (s.charAt(2)=='s' && s.charAt(1)=='l') {
                            id=true; break complete;} }
                    else if (c=='m') {
                      if (s.charAt(2)=='u' && s.charAt(1)=='n') {
                            id=true; break complete;} }
                    break partial;
                case 'g': X="goto";id=true; break partial;
                case 'l': X="long";id=true; break partial;
                case 'n': X="null";id=true; break partial;
                case 't': c=s.charAt(3);
                    if (c=='e') { if (s.charAt(2)=='u' && s.charAt(1)=='r') {
                            id=true; break complete;} }
                    else if (c=='s') {
                      if (s.charAt(2)=='i' && s.charAt(1)=='h') {
                            id=true; break complete;} }
                    break partial;
                case 'v': X="void";id=true; break partial;
                case 'w': X="with";id=true; break partial;
                } break partial;
            case 5: switch (s.charAt(2)) {
                case 'a': X="class";id=true; break partial;
                case 'e': X="break";id=true; break partial;
                case 'i': X="while";id=true; break partial;
                case 'l': X="false";id=true; break partial;
                case 'n': c=s.charAt(0);
                    if (c=='c') { X="const";id=true; }
                    else if (c=='f') { X="final";id=true; }
                    break partial;
                case 'o': c=s.charAt(0);
                    if (c=='f') { X="float";id=true; }
                    else if (c=='s') { X="short";id=true; }
                    break partial;
                case 'p': X="super";id=true; break partial;
                case 'r': X="throw";id=true; break partial;
                case 't': X="catch";id=true; break partial;
                } break partial;
            case 6: switch (s.charAt(1)) {
                case 'a': X="native";id=true; break partial;
                case 'e': c=s.charAt(0);
                    if (c=='d') { X="delete";id=true; }
                    else if (c=='r') { X="return";id=true; }
                    break partial;
                case 'h': X="throws";id=true; break partial;
                case 'm': X="import";id=true; break partial;
                case 'o': X="double";id=true; break partial;
                case 't': X="static";id=true; break partial;
                case 'u': X="public";id=true; break partial;
                case 'w': X="switch";id=true; break partial;
                case 'x': X="export";id=true; break partial;
                case 'y': X="typeof";id=true; break partial;
                } break partial;
            case 7: switch (s.charAt(1)) {
                case 'a': X="package";id=true; break partial;
                case 'e': X="default";id=true; break partial;
                case 'i': X="finally";id=true; break partial;
                case 'o': X="boolean";id=true; break partial;
                case 'r': X="private";id=true; break partial;
                case 'x': X="extends";id=true; break partial;
                } break partial;
            case 8: switch (s.charAt(0)) {
                case 'a': X="abstract";id=true; break partial;
                case 'c': X="continue";id=true; break partial;
                case 'd': X="debugger";id=true; break partial;
                case 'f': X="function";id=true; break partial;
                case 'v': X="volatile";id=true; break partial;
                } break partial;
            case 9: c=s.charAt(0);
                if (c=='i') { X="interface";id=true; }
                else if (c=='p') { X="protected";id=true; }
                else if (c=='t') { X="transient";id=true; }
                break partial;
            case 10: c=s.charAt(1);
                if (c=='m') { X="implements";id=true; }
                else if (c=='n') { X="instanceof";id=true; }
                break partial;
            case 12: X="synchronized";id=true; break partial;
            }
            int PROBE_START_LINE_185 = 185;
			String v_x_5296_line_185 = X;
			boolean token_stream_1_expr5_line_185 = v_x_5296_line_185 != null;
			boolean token_stream_1_expr6_line_185 = true;
			if (token_stream_1_expr5_line_185) {
				String v_x_5296_line_185_v1 = X;
				String v_s_5295_line_185 = s;
				token_stream_1_expr6_line_185 = v_x_5296_line_185_v1 != v_s_5295_line_185;
			}
			boolean token_stream_1_expr4_line_185 = token_stream_1_expr5_line_185 && token_stream_1_expr6_line_185;
			boolean token_stream_1_expr7_line_185 = true;
			if (token_stream_1_expr4_line_185) {
				String v_x_5296_line_185_v2 = X;
				String v_s_5295_line_185_v1 = s;
				boolean token_stream_1_expr8_line_185 = v_x_5296_line_185_v2.equals(v_s_5295_line_185_v1);
				token_stream_1_expr7_line_185 = !token_stream_1_expr8_line_185;
			}
			boolean token_stream_1_expr3_line_185 = token_stream_1_expr4_line_185 && token_stream_1_expr7_line_185;
			int PROBE_END_LINE_185 = 185;
			// partial match validate the entire string the one possibility
            if (token_stream_1_expr3_line_185) return false;
        }
        int PROBE_START_LINE_187 = 187;
		boolean v_id_5294_line_187 = id;
		int PROBE_END_LINE_187 = 187;
		return v_id_5294_line_187;
    }

    public static boolean isJSIdentifier(String s) {
      int PROBE_START_LINE_191 = 191;
		String p_s_5297_line_191 = s;
		int token_stream_1_expr9_line_191 = p_s_5297_line_191.length();
		int PROBE_END_LINE_191 = 191;
	int length = token_stream_1_expr9_line_191;

      int PROBE_START_LINE_193 = 197;
	int v_length_5298_line_193 = length;
	boolean token_stream_1_expr12_line_193 = v_length_5298_line_193 == 0;
	boolean token_stream_1_expr11_line_193 = token_stream_1_expr12_line_193
			|| Character.isIdentifierIgnorable(s.charAt(0));
	boolean token_stream_1_expr10_line_193 = token_stream_1_expr11_line_193
			|| !Character.isJavaIdentifierStart(s.charAt(0));
	int PROBE_END_LINE_193 = 197;
	if (token_stream_1_expr10_line_193) {
        return false;
      }

      for (int i = 1; true; i++) {
        int PROBE_START_LINE_200 = 203;
		int v_i_5299_line_199 = i;
		int v_length_5298_line_199 = length;
		boolean token_stream_1_expr14_line_199 = v_i_5299_line_199 < v_length_5298_line_199;
		if (!(token_stream_1_expr14_line_199)) {
			break;
		}
		String p_s_5297_line_200 = s;
		int v_i_5299_line_200 = i;
		char token_stream_1_expr18_line_200 = p_s_5297_line_200.charAt(v_i_5299_line_200);
		boolean token_stream_1_expr17_line_200 = Character.isIdentifierIgnorable(token_stream_1_expr18_line_200);
		boolean token_stream_1_expr16_line_200 = token_stream_1_expr17_line_200
				|| !Character.isJavaIdentifierPart(s.charAt(i));
		int PROBE_END_LINE_200 = 203;
		if (token_stream_1_expr16_line_200) {
          return false;
        }
      }

      return true;
    }
}
