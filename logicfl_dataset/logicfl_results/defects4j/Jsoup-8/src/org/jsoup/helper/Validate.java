package org.jsoup.helper;

/**
 * Simple validation methods. Designed for jsoup internal use
 */
public final class Validate {
    
    private Validate() {}

    /**
     * Validates that the obect is not null
     * @param obj object to test
     */
    public static void notNull(Object obj) {
        int PROBE_START_LINE_15 = 16;
		Object p_obj_34_line_15 = obj;
		boolean validate_1_expr1_line_15 = p_obj_34_line_15 == null;
		int PROBE_END_LINE_15 = 16;
		if (validate_1_expr1_line_15)
            throw new IllegalArgumentException("Object must not be null");
    }

    /**
     * Validates that the object is not null
     * @param obj object to test
     * @param msg message to output if validation fails
     */
    public static void notNull(Object obj, String msg) {
        if (obj == null)
            throw new IllegalArgumentException(msg);
    }

    /**
     * Validates that the value is true
     * @param val object to test
     */
    public static void isTrue(boolean val) {
        int PROBE_START_LINE_34 = 35;
		boolean p_val_37_line_34 = val;
		boolean validate_1_expr2_line_34 = !p_val_37_line_34;
		int PROBE_END_LINE_34 = 35;
		if (validate_1_expr2_line_34)
            throw new IllegalArgumentException("Must be true");
    }

    /**
     * Validates that the value is true
     * @param val object to test
     * @param msg message to output if validation fails
     */
    public static void isTrue(boolean val, String msg) {
        if (!val)
            throw new IllegalArgumentException(msg);
    }

    /**
     * Validates that the array contains no null elements
     * @param objects the array to test
     */
    public static void noNullElements(Object[] objects) {
        noNullElements(objects, "Array must not contain any null objects");
    }

    /**
     * Validates that the array contains no null elements
     * @param objects the array to test
     * @param msg message to output if validation fails
     */
    public static void noNullElements(Object[] objects, String msg) {
        for (Object obj : objects)
            if (obj == null)
                throw new IllegalArgumentException(msg);
    }

    /**
     * Validates that the string is not empty
     * @param string the string to test
     */
    public static void notEmpty(String string) {
        int PROBE_START_LINE_72 = 73;
		String p_string_43_line_72 = string;
		boolean validate_1_expr4_line_72 = p_string_43_line_72 == null;
		boolean validate_1_expr5_line_72 = false;
		if (!validate_1_expr4_line_72) {
			String p_string_43_line_72_v1 = string;
			int validate_1_expr6_line_72 = p_string_43_line_72_v1.length();
			validate_1_expr5_line_72 = validate_1_expr6_line_72 == 0;
		}
		boolean validate_1_expr3_line_72 = validate_1_expr4_line_72 || validate_1_expr5_line_72;
		int PROBE_END_LINE_72 = 73;
		if (validate_1_expr3_line_72)
            throw new IllegalArgumentException("String must not be empty");
    }

    /**
     * Validates that the string is not empty
     * @param string the string to test
     * @param msg message to output if validation fails
     */
    public static void notEmpty(String string, String msg) {
        int PROBE_START_LINE_82 = 83;
		String p_string_44_line_82 = string;
		boolean validate_1_expr8_line_82 = p_string_44_line_82 == null;
		boolean validate_1_expr9_line_82 = false;
		if (!validate_1_expr8_line_82) {
			String p_string_44_line_82_v1 = string;
			int validate_1_expr10_line_82 = p_string_44_line_82_v1.length();
			validate_1_expr9_line_82 = validate_1_expr10_line_82 == 0;
		}
		boolean validate_1_expr7_line_82 = validate_1_expr8_line_82 || validate_1_expr9_line_82;
		int PROBE_END_LINE_82 = 83;
		if (validate_1_expr7_line_82)
            throw new IllegalArgumentException(msg);
    }
}
