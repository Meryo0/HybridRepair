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

package org.apache.commons.io.charset;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;

/**
 * Works with {@link CharsetDecoder}.
 *
 * @since 2.12.0
 */
public class CharsetDecoders {

    /**
     * Returns the given non-null CharsetDecoder or a new default CharsetDecoder.
     *
     * @param charsetDecoder The CharsetDecoder to test.
     * @return the given non-null CharsetDecoder or a new default CharsetDecoder.
     */
    public static CharsetDecoder toCharsetDecoder(CharsetDecoder charsetDecoder) {
        int PROBE_START_LINE_37 = 37;
		java.nio.charset.CharsetDecoder p_charset_decoder_17_line_37 = charsetDecoder;
		boolean charset_decoders_1_expr2_line_37 = p_charset_decoder_17_line_37 != null;
		java.nio.charset.CharsetDecoder p_charset_decoder_17_line_37_v1 = null;
		java.nio.charset.CharsetDecoder charset_decoders_1_expr3_line_37 = null;
		if (charset_decoders_1_expr2_line_37) {
			p_charset_decoder_17_line_37_v1 = charsetDecoder;
		} else {
			java.nio.charset.Charset charset_decoders_1_expr4_line_37 = Charset.defaultCharset();
			charset_decoders_1_expr3_line_37 = charset_decoders_1_expr4_line_37.newDecoder();
		}
		java.nio.charset.CharsetDecoder charset_decoders_1_expr1_line_37 = charset_decoders_1_expr2_line_37
				? p_charset_decoder_17_line_37_v1
				: charset_decoders_1_expr3_line_37;
		int PROBE_END_LINE_37 = 37;
		return charset_decoders_1_expr1_line_37;
    }

}
