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
 *   John Lenz
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

import java.io.Serializable;

/**
 * An id used uniquely identify a CompilerInput
 * @author johnlenz@google.com (John Lenz)
 */
public class InputId implements Serializable {
  public static final long serialVersionUID = 1L;
  private final String id;

  public InputId(String id) {
    int PROBE_START_LINE_52 = 52;
	String p_id_4837_line_52 = id;
	int PROBE_END_LINE_52 = 52;
	this.id = p_id_4837_line_52;
  }

  public String getIdName() {
    int PROBE_START_LINE_56 = 56;
	String f_id_4838_line_56 = id;
	int PROBE_END_LINE_56 = 56;
	return f_id_4838_line_56;
  }

  @Override
  public int hashCode() {
    int PROBE_START_LINE_61 = 61;
	String f_id_4838_line_61 = id;
	int input_id_1_expr4_line_61 = f_id_4838_line_61.hashCode();
	int PROBE_END_LINE_61 = 61;
	return input_id_1_expr4_line_61;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    return id.equals(((InputId) obj).id);
  }

  @Override
  public String toString() {
    return "InputId: " + getIdName();
  }
}
