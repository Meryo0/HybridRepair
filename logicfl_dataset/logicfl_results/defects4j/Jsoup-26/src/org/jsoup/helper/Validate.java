package org.jsoup.helper;

/**
 * Simple validation methods. Designed for jsoup internal use
 */
public final class Validate {
    
    private Validate() {}

    /**
     * Validates that the object is not null
     * @param obj object to test
     */
    public static void notNull(Object obj) {
        int PROBE_START_LINE_15 = 16;
		Object p_obj_55_line_15 = obj;
		boolean validate_1_expr1_line_15 = p_obj_55_line_15 == null;
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
        int PROBE_START_LINE_25 = 26;
		Object p_obj_56_line_25 = obj;
		boolean validate_1_expr2_line_25 = p_obj_56_line_25 == null;
		int PROBE_END_LINE_25 = 26;
		if (validate_1_expr2_line_25)
            throw new IllegalArgumentException(msg);
    }

    /**
     * Validates that the value is true
     * @param val object to test
     */
    public static void isTrue(boolean val) {
        int PROBE_START_LINE_34 = 35;
		boolean p_val_58_line_34 = val;
		boolean validate_1_expr3_line_34 = !p_val_58_line_34;
		int PROBE_END_LINE_34 = 35;
		if (validate_1_expr3_line_34)
            throw new IllegalArgumentException("Must be true");
    }

    /**
     * Validates that the value is true
     * @param val object to test
     * @param msg message to output if validation fails
     */
    public static void isTrue(boolean val, String msg) {
        int PROBE_START_LINE_44 = 45;
		boolean p_val_59_line_44 = val;
		boolean validate_1_expr4_line_44 = !p_val_59_line_44;
		int PROBE_END_LINE_44 = 45;
		if (validate_1_expr4_line_44)
            throw new IllegalArgumentException(msg);
    }

    /**
     * Validates that the value is false
     * @param val object to test
     */
    public static void isFalse(boolean val) {
        int PROBE_START_LINE_53 = 54;
		boolean p_val_61_line_53 = val;
		int PROBE_END_LINE_53 = 54;
		if (p_val_61_line_53)
            throw new IllegalArgumentException("Must be false");
    }

    /**
     * Validates that the value is false
     * @param val object to test
     * @param msg message to output if validation fails
     */
    public static void isFalse(boolean val, String msg) {
        int PROBE_START_LINE_63 = 64;
		boolean p_val_62_line_63 = val;
		int PROBE_END_LINE_63 = 64;
		if (p_val_62_line_63)
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
		String p_string_67_line_91 = string;
		boolean validate_1_expr6_line_91 = p_string_67_line_91 == null;
		boolean validate_1_expr7_line_91 = false;
		if (!validate_1_expr6_line_91) {
			String p_string_67_line_91_v1 = string;
			int validate_1_expr8_line_91 = p_string_67_line_91_v1.length();
			validate_1_expr7_line_91 = validate_1_expr8_line_91 == 0;
		}
		boolean validate_1_expr5_line_91 = validate_1_expr6_line_91 || validate_1_expr7_line_91;
		int PROBE_END_LINE_91 = 92;
		if (validate_1_expr5_line_91)
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
