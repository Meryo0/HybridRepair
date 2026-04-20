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
		Object p_obj_1_line_15 = obj;
		boolean validate_1_expr1_line_15 = p_obj_1_line_15 == null;
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
        if (!val)
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
     * Validates that the value is false
     * @param val object to test
     */
    public static void isFalse(boolean val) {
        if (val)
            throw new IllegalArgumentException("Must be false");
    }

    /**
     * Validates that the value is false
     * @param val object to test
     * @param msg message to output if validation fails
     */
    public static void isFalse(boolean val, String msg) {
        if (val)
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
        int PROBE_START_LINE_91 = 92;
		String p_string_13_line_91 = string;
		boolean validate_1_expr3_line_91 = p_string_13_line_91 == null;
		boolean validate_1_expr4_line_91 = false;
		if (!validate_1_expr3_line_91) {
			String p_string_13_line_91_v1 = string;
			int validate_1_expr5_line_91 = p_string_13_line_91_v1.length();
			validate_1_expr4_line_91 = validate_1_expr5_line_91 == 0;
		}
		boolean validate_1_expr2_line_91 = validate_1_expr3_line_91 || validate_1_expr4_line_91;
		int PROBE_END_LINE_91 = 92;
		if (validate_1_expr2_line_91)
            throw new IllegalArgumentException("String must not be empty");
    }

    /**
     * Validates that the string is not empty
     * @param string the string to test
     * @param msg message to output if validation fails
     */
    public static void notEmpty(String string, String msg) {
        if (string == null || string.length() == 0)
            throw new IllegalArgumentException(msg);
    }

    /**
     Cause a failure.
     @param msg message to output.
     */
    public static void fail(String msg) {
        throw new IllegalArgumentException(msg);
    }
}
