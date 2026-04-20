/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito;

import static java.lang.annotation.ElementType.*;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;

import org.mockito.configuration.AnnotationEngine;
import org.mockito.exceptions.base.MockitoException;
import org.mockito.internal.configuration.GlobalConfiguration;
import org.mockito.runners.MockitoJUnitRunner;

/**
 * <ul>
 * <li>Allows shorthand mock creation.</li> 
 * <li>Minimizes repetitive mock creation code.</li> 
 * <li>Makes the test class more readable.</li>
 * <li>Makes the verification error easier to read because <b>field name</b> is used to identify the mock.</li>
 * </ul>
 * 
 * <pre>
 *   public class ArticleManagerTest extends SampleBaseTestCase { 
 *     
 *       &#064;Mock private ArticleCalculator calculator;
 *       &#064;Mock private ArticleDatabase database;
 *       &#064;Mock private UserProvider userProvider;
 *     
 *       private ArticleManager manager;
 *     
 *       &#064;Before public void setup() {
 *           manager = new ArticleManager(userProvider, database, calculator);
 *       }
 *   }
 *   
 *   public class SampleBaseTestCase {
 *   
 *       &#064;Before public void initMocks() {
 *           MockitoAnnotations.initMocks(this);
 *       }
 *   }
 * </pre>
 * 
 * <b><code>MockitoAnnotations.initMocks(this)</code></b> method has to called to initialize annotated mocks.
 * <p>
 * In above example, <code>initMocks()</code> is called in &#064;Before (JUnit4) method of test's base class. 
 * For JUnit3 <code>initMocks()</code> can go to <code>setup()</code> method of a base class.
 * You can also put initMocks() in your JUnit runner (&#064;RunWith) or use built-in runner: {@link MockitoJUnitRunner}
 */
public class MockitoAnnotations {

    /**
     * Use top-level {@link org.mockito.Mock} annotation instead
     * <p>
     * When &#064;Mock annotation was implemented as an inner class then users experienced problems with autocomplete features in IDEs. 
     * Hence &#064;Mock was made a top-level class.  
     * <p>
     * How to fix deprecation warnings? 
     * Typically, you can just <b>search:</b> import org.mockito.MockitoAnnotations.Mock; <b>and replace with:</b> import org.mockito.Mock;
     * <p>
     * If you're an existing user then sorry for making your code littered with deprecation warnings. 
     * This change was required to make Mockito better.
     */
    @Target( { FIELD })
    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    public @interface Mock {}
    
    /**
     * Initializes objects annotated with &#064;Mock for given testClass.
     * <p>
     * See examples in javadoc for {@link MockitoAnnotations} class.
     */
    public static void initMocks(Object testClass) {
        int PROBE_START_LINE_81 = 83;
		Object p_test_class_66_line_81 = testClass;
		boolean mockito_annotations_1_expr1_line_81 = p_test_class_66_line_81 == null;
		int PROBE_END_LINE_81 = 83;
		if (mockito_annotations_1_expr1_line_81) {
            throw new MockitoException("testClass cannot be null. For info how to use @Mock annotations see examples in javadoc for MockitoAnnotations class");
        }
        
        int PROBE_START_LINE_85 = 85;
		Object p_test_class_66_line_85 = testClass;
		Class<?> mockito_annotations_1_expr2_line_85 = p_test_class_66_line_85.getClass();
		int PROBE_END_LINE_85 = 85;
		Class<?> clazz = mockito_annotations_1_expr2_line_85;
        while (true) {
            int PROBE_START_LINE_86 = 86;
			Class<?> v_clazz_67_line_86 = clazz;
			boolean mockito_annotations_1_expr3_line_86 = v_clazz_67_line_86 != Object.class;
			if (!(mockito_annotations_1_expr3_line_86)) {
				break;
			}
			int PROBE_END_LINE_86 = 86;
			int PROBE_START_LINE_87 = 87;
			Object p_test_class_66_line_87 = testClass;
			Class<?> v_clazz_67_line_87 = clazz;
			int PROBE_END_LINE_87 = 87;
			scan(p_test_class_66_line_87, v_clazz_67_line_87);
            int PROBE_START_LINE_88 = 88;
			Class<?> v_clazz_67_line_88 = clazz;
			Class<?> mockito_annotations_1_expr7_line_88 = v_clazz_67_line_88.getSuperclass();
			int PROBE_END_LINE_88 = 88;
			clazz = mockito_annotations_1_expr7_line_88;
        }
    }

    private static void scan(Object testClass, Class<?> clazz) {
        int PROBE_START_LINE_93 = 93;
		AnnotationEngine mockito_annotations_1_expr8_line_93 = new GlobalConfiguration().getAnnotationEngine();
		int PROBE_END_LINE_93 = 93;
		AnnotationEngine annotationEngine = mockito_annotations_1_expr8_line_93;
        int PROBE_START_LINE_94 = 94;
		Class<?> p_clazz_69_line_94 = clazz;
		Field[] mockito_annotations_1_expr10_line_94 = p_clazz_69_line_94.getDeclaredFields();
		int PROBE_END_LINE_94 = 94;
		Field[] fields = mockito_annotations_1_expr10_line_94;
        int PROBE_START_LINE_95 = 110;
		java.lang.reflect.Field[] v_fields_71_line_95 = fields;
		int PROBE_END_LINE_95 = 110;
		for (Field field : v_fields_71_line_95) {
            int PROBE_START_LINE_96 = 109;
			java.lang.reflect.Field v_field_72_line_96 = field;
			java.lang.annotation.Annotation[] mockito_annotations_1_expr11_line_96 = v_field_72_line_96
					.getAnnotations();
			int PROBE_END_LINE_96 = 109;
			for(Annotation annotation : mockito_annotations_1_expr11_line_96) {
                Object mock = annotationEngine.createMockFor(annotation, field);
                if (mock != null) {
                    boolean wasAccessible = field.isAccessible();
                    field.setAccessible(true);
                    try {
                        field.set(testClass, mock);
                    } catch (IllegalAccessException e) {
                        throw new MockitoException("Problems initiating mocks annotated with " + annotation, e);
                    } finally {
                        field.setAccessible(wasAccessible);
                    }    
                }
            }
        }
    }
}