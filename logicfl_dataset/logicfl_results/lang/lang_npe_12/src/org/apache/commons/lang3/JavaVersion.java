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
package org.apache.commons.lang3;

/**
 * <p>An enum representing all the versions of the Java specification.
 * This is intended to mirror available values from the
 * <em>java.specification.version</em> System property. </p>
 *
 * @since 3.0
 */
public enum JavaVersion {
    
    /**
     * The Java version reported by Android. This is not an official Java version number.
     */
    JAVA_0_9(1.5f, "0.9"),
    
    /**
     * Java 1.1.
     */
    JAVA_1_1(1.1f, "1.1"),

    /**
     * Java 1.2.
     */
    JAVA_1_2(1.2f, "1.2"),

    /**
     * Java 1.3.
     */
    JAVA_1_3(1.3f, "1.3"),

    /**
     * Java 1.4.
     */
    JAVA_1_4(1.4f, "1.4"),

    /**
     * Java 1.5.
     */
    JAVA_1_5(1.5f, "1.5"),

    /**
     * Java 1.6.
     */
    JAVA_1_6(1.6f, "1.6"),

    /**
     * Java 1.7.
     */
    JAVA_1_7(1.7f, "1.7"),

    /**
     * Java 1.8.
     */
    JAVA_1_8(1.8f, "1.8"),

    /**
     * Java 1.9.
     */
    JAVA_1_9(1.9f, "1.9"),

    /**
     * Java 1.x, x &gt; 9. Mainly introduced to avoid to break when a new version of Java is used.
     */
    JAVA_RECENT(maxVersion(), Float.toString(maxVersion()));

    /**
     * The float value.
     */
    private final float value;
    /**
     * The standard name.
     */
    private final String name;

    /**
     * Constructor.
     *
     * @param value  the float value
     * @param name  the standard name, not null
     */
    JavaVersion(final float value, final String name) {
        int PROBE_START_LINE_99 = 99;
		float p_value_91_line_99 = value;
		int PROBE_END_LINE_99 = 99;
		this.value = p_value_91_line_99;
        int PROBE_START_LINE_100 = 100;
		String p_name_92_line_100 = name;
		int PROBE_END_LINE_100 = 100;
		this.name = p_name_92_line_100;
    }

    //-----------------------------------------------------------------------
    /**
     * <p>Whether this version of Java is at least the version of Java passed in.</p>
     *
     * <p>For example:<br>
     *  {@code myVersion.atLeast(JavaVersion.JAVA_1_4)}<p>
     *
     * @param requiredVersion  the version to check against, not null
     * @return true if this version is equal to or greater than the specified version
     */
    public boolean atLeast(final JavaVersion requiredVersion) {
        int PROBE_START_LINE_114 = 114;
		float f_value_93_line_114 = this.value;
		org.apache.commons.lang3.JavaVersion p_required_version_95_line_114 = requiredVersion;
		float q_value_11_line_114 = p_required_version_95_line_114.value;
		boolean java_version_1_expr10_line_114 = f_value_93_line_114 >= q_value_11_line_114;
		int PROBE_END_LINE_114 = 114;
		return java_version_1_expr10_line_114;
    }

    /**
     * Transforms the given string with a Java version number to the
     * corresponding constant of this enumeration class. This method is used
     * internally.
     *
     * @param nom the Java version as string
     * @return the corresponding enumeration constant or <b>null</b> if the
     * version is unknown
     */
    // helper for static importing
    static JavaVersion getJavaVersion(final String nom) {
        return get(nom);
    }

    /**
     * Transforms the given string with a Java version number to the
     * corresponding constant of this enumeration class. This method is used
     * internally.
     *
     * @param nom the Java version as string
     * @return the corresponding enumeration constant or <b>null</b> if the
     * version is unknown
     */
    static JavaVersion get(final String nom) {
        int PROBE_START_LINE_141 = 161;
		String p_nom_97_line_141 = nom;
		boolean java_version_1_expr13_line_141 = "0.9".equals(p_nom_97_line_141);
		int PROBE_END_LINE_141 = 161;
		if (java_version_1_expr13_line_141) {
            return JAVA_0_9;
        } else {
			int PROBE_START_LINE_143 = 161;
			String p_nom_97_line_143 = nom;
			boolean java_version_1_expr14_line_143 = "1.1".equals(p_nom_97_line_143);
			int PROBE_END_LINE_143 = 161;
			if (java_version_1_expr14_line_143) {
				return JAVA_1_1;
			} else {
				int PROBE_START_LINE_145 = 161;
				String p_nom_97_line_145 = nom;
				boolean java_version_1_expr15_line_145 = "1.2".equals(p_nom_97_line_145);
				int PROBE_END_LINE_145 = 161;
				if (java_version_1_expr15_line_145) {
					return JAVA_1_2;
				} else {
					int PROBE_START_LINE_147 = 161;
					String p_nom_97_line_147 = nom;
					boolean java_version_1_expr16_line_147 = "1.3".equals(p_nom_97_line_147);
					int PROBE_END_LINE_147 = 161;
					if (java_version_1_expr16_line_147) {
						return JAVA_1_3;
					} else {
						int PROBE_START_LINE_149 = 161;
						String p_nom_97_line_149 = nom;
						boolean java_version_1_expr17_line_149 = "1.4".equals(p_nom_97_line_149);
						int PROBE_END_LINE_149 = 161;
						if (java_version_1_expr17_line_149) {
							return JAVA_1_4;
						} else {
							int PROBE_START_LINE_151 = 161;
							String p_nom_97_line_151 = nom;
							boolean java_version_1_expr18_line_151 = "1.5".equals(p_nom_97_line_151);
							int PROBE_END_LINE_151 = 161;
							if (java_version_1_expr18_line_151) {
								return JAVA_1_5;
							} else {
								int PROBE_START_LINE_153 = 161;
								String p_nom_97_line_153 = nom;
								boolean java_version_1_expr19_line_153 = "1.6".equals(p_nom_97_line_153);
								int PROBE_END_LINE_153 = 161;
								if (java_version_1_expr19_line_153) {
									return JAVA_1_6;
								} else {
									int PROBE_START_LINE_155 = 161;
									String p_nom_97_line_155 = nom;
									boolean java_version_1_expr20_line_155 = "1.7".equals(p_nom_97_line_155);
									int PROBE_END_LINE_155 = 161;
									if (java_version_1_expr20_line_155) {
										return JAVA_1_7;
									} else {
										int PROBE_START_LINE_157 = 161;
										String p_nom_97_line_157 = nom;
										boolean java_version_1_expr21_line_157 = "1.8".equals(p_nom_97_line_157);
										int PROBE_END_LINE_157 = 161;
										if (java_version_1_expr21_line_157) {
											return JAVA_1_8;
										} else {
											int PROBE_START_LINE_159 = 161;
											String p_nom_97_line_159 = nom;
											boolean java_version_1_expr22_line_159 = "1.9".equals(p_nom_97_line_159);
											int PROBE_END_LINE_159 = 161;
											if (java_version_1_expr22_line_159) {
												return JAVA_1_9;
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
        int PROBE_START_LINE_162 = 164;
		String p_nom_97_line_162 = nom;
		boolean java_version_1_expr23_line_162 = p_nom_97_line_162 == null;
		int PROBE_END_LINE_162 = 164;
		if (java_version_1_expr23_line_162) {
            return null;
        }
        int PROBE_START_LINE_165 = 165;
		String p_nom_97_line_165 = nom;
		float java_version_1_expr24_line_165 = toFloatVersion(p_nom_97_line_165);
		int PROBE_END_LINE_165 = 165;
		final float v = java_version_1_expr24_line_165;
        int PROBE_START_LINE_166 = 172;
		float v_v_98_line_166 = v;
		double java_version_1_expr27_line_166 = v_v_98_line_166 - 1.;
		double java_version_1_expr26_line_166 = (java_version_1_expr27_line_166);
		boolean java_version_1_expr25_line_166 = java_version_1_expr26_line_166 < 1.;
		int PROBE_END_LINE_166 = 172;
		if (java_version_1_expr25_line_166) { // then we need to check decimals > .9
            int PROBE_START_LINE_167 = 167;
			String p_nom_97_line_167 = nom;
			int java_version_1_expr29_line_167 = p_nom_97_line_167.indexOf('.');
			String p_nom_97_line_167_v1 = nom;
			int java_version_1_expr30_line_167 = p_nom_97_line_167_v1.indexOf(',');
			int java_version_1_expr28_line_167 = Math.max(java_version_1_expr29_line_167,
					java_version_1_expr30_line_167);
			int PROBE_END_LINE_167 = 167;
			final int firstComma = java_version_1_expr28_line_167;
            int PROBE_START_LINE_168 = 168;
			String p_nom_97_line_168 = nom;
			int java_version_1_expr32_line_168 = p_nom_97_line_168.length();
			String p_nom_97_line_168_v1 = nom;
			int v_first_comma_99_line_168 = firstComma;
			int java_version_1_expr33_line_168 = p_nom_97_line_168_v1.indexOf(',', v_first_comma_99_line_168);
			int java_version_1_expr31_line_168 = Math.max(java_version_1_expr32_line_168,
					java_version_1_expr33_line_168);
			int PROBE_END_LINE_168 = 168;
			final int end = java_version_1_expr31_line_168;
            int PROBE_START_LINE_169 = 171;
			String p_nom_97_line_169 = nom;
			int v_first_comma_99_line_169 = firstComma;
			int java_version_1_expr37_line_169 = v_first_comma_99_line_169 + 1;
			int v_end_100_line_169 = end;
			String java_version_1_expr36_line_169 = p_nom_97_line_169.substring(java_version_1_expr37_line_169,
					v_end_100_line_169);
			float java_version_1_expr35_line_169 = Float.parseFloat(java_version_1_expr36_line_169);
			boolean java_version_1_expr34_line_169 = java_version_1_expr35_line_169 > .9f;
			int PROBE_END_LINE_169 = 171;
			if (java_version_1_expr34_line_169) {
                int PROBE_START_LINE_170 = 170;
				org.apache.commons.lang3.JavaVersion f_java_recent_90_line_170 = JAVA_RECENT;
				int PROBE_END_LINE_170 = 170;
				return f_java_recent_90_line_170;
            }
        }
        return null;
    }

    //-----------------------------------------------------------------------
    /**
     * <p>The string value is overridden to return the standard name.</p>
     *
     * <p>For example, <code>"1.5"</code>.</p>
     *
     * @return the name, not null
     */
    @Override
    public String toString() {
        return name;
    }

    /**
     * Gets the Java Version from the system or 2.0 if the {@code java.version} system property is not set.
     * 
     * @return the value of {@code java.version} system property or 2.0 if it is not set.
     */
    private static float maxVersion() {
        int PROBE_START_LINE_195 = 195;
		String java_version_1_expr39_line_195 = System.getProperty("java.version", "2.0");
		float java_version_1_expr38_line_195 = toFloatVersion(java_version_1_expr39_line_195);
		int PROBE_END_LINE_195 = 195;
		final float v = java_version_1_expr38_line_195;
        int PROBE_START_LINE_196 = 198;
		float v_v_101_line_196 = v;
		boolean java_version_1_expr40_line_196 = v_v_101_line_196 > 0;
		int PROBE_END_LINE_196 = 198;
		if (java_version_1_expr40_line_196) {
            int PROBE_START_LINE_197 = 197;
			float v_v_101_line_197 = v;
			int PROBE_END_LINE_197 = 197;
			return v_v_101_line_197;
        }
        return 2f;
    }

    /**
     * Parses a float value from a String.
     * 
     * @param value the String to parse.
     * @return the float value represented by teh string or -1 if the given String can not be parsed.
     */
    private static float toFloatVersion(final String value) {
        int PROBE_START_LINE_209 = 209;
		String p_value_102_line_209 = value;
		String[] java_version_1_expr41_line_209 = p_value_102_line_209.split("\\.");
		int PROBE_END_LINE_209 = 209;
		final String[] toParse = java_version_1_expr41_line_209;
        int PROBE_START_LINE_210 = 216;
		String[] v_to_parse_103_line_210 = toParse;
		int q_length_12_line_210 = v_to_parse_103_line_210.length;
		boolean java_version_1_expr42_line_210 = q_length_12_line_210 >= 2;
		int PROBE_END_LINE_210 = 216;
		if (java_version_1_expr42_line_210) {
            try {
                int PROBE_START_LINE_212 = 212;
				String[] v_to_parse_103_line_212 = toParse;
				String java_version_1_expr45_line_212 = v_to_parse_103_line_212[0];
				String[] v_to_parse_103_line_212_v1 = toParse;
				String java_version_1_expr46_line_212 = v_to_parse_103_line_212_v1[1];
				String java_version_1_expr44_line_212 = java_version_1_expr45_line_212 + '.'
						+ java_version_1_expr46_line_212;
				float java_version_1_expr43_line_212 = Float.parseFloat(java_version_1_expr44_line_212);
				int PROBE_END_LINE_212 = 212;
				return java_version_1_expr43_line_212;
            } catch (final NumberFormatException nfe) {
                // no-op, let use default
            }
        }
        int PROBE_START_LINE_217 = 217;
		int java_version_1_expr47_line_217 = -1;
		int PROBE_END_LINE_217 = 217;
		return java_version_1_expr47_line_217;
    }
}
