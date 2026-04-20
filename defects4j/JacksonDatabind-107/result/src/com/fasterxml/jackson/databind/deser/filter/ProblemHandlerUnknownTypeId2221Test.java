package com.fasterxml.jackson.databind.deser.filter;

import java.io.*;
import java.util.Collection;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.ObjectMapper;

// for [databind#2221]
public class ProblemHandlerUnknownTypeId2221Test extends BaseMapTest
{
    @SuppressWarnings("rawtypes")
    @JsonTypeInfo(use = JsonTypeInfo.Id.CLASS, include = JsonTypeInfo.As.PROPERTY, property = "_class")
    @JsonInclude(Include.NON_EMPTY)
    static class GenericContent {

        private Collection innerObjects;

        public Collection getInnerObjects() {
            return innerObjects;
        }

        public void setInnerObjects(Collection innerObjects) {
            this.innerObjects = innerObjects;
        }
    }

    static class DummyContent {
        private String aField;

        public DummyContent() {
            super();
        }

        public DummyContent(String aField) {
            super();
            this.aField = aField;
        }

        public String getaField() {
            return aField;
        }

        public void setaField(String aField) {
            this.aField = aField;
        }

        @Override
        public String toString() {
            return "DummyContent [aField=" + aField + "]";
        }
    }

    int PROBE_START_LINE_59 = 59;

	private static final String problem_handler_unknown_type_id2221_test_1_expr1_line_59 = GenericContent.class
			.getName();

	int PROBE_END_LINE_59 = 59;

	private final static String CLASS_GENERIC_CONTENT = problem_handler_unknown_type_id2221_test_1_expr1_line_59;
    int PROBE_START_LINE_60 = 60;

	private static final String problem_handler_unknown_type_id2221_test_1_expr3_line_60 = DummyContent.class.getName();

	int PROBE_END_LINE_60 = 60;

	private final static String CLASS_DUMMY_CONTENT = problem_handler_unknown_type_id2221_test_1_expr3_line_60;
    int PROBE_START_LINE_61 = 83;

	private static final String problem_handler_unknown_type_id2221_test_1_expr5_line_61 = aposToQuotes("{\n"
			+ "          \"_class\":\"" + CLASS_GENERIC_CONTENT + "\",\n" + "          \"innerObjects\":\n"
			+ "               [\n" + "                    \"java.util.ArrayList\",\n" + "                    [\n"
			+ "                         [\n" + "                              \"" + CLASS_DUMMY_CONTENT + "\",\n"
			+ "                              {\n" + "                                   \"aField\":\"some value\"\n"
			+ "                              }\n" + "                         ],\n" + "                         [\n"
			+ "                              \"com.fasterxml.jackson.databind.deser.NoSuchClass$AnInventedClassBeingNotOnTheClasspath\",\n"
			+ "                              {\n" + "                                   \"aField\":\"some value\"\n"
			+ "                              }\n" + "                         ]\n" + "                    ]\n"
			+ "               ]\n" + "     }");

	int PROBE_END_LINE_61 = 83;

	private final static String JSON = problem_handler_unknown_type_id2221_test_1_expr5_line_61;

    public void testWithDeserializationProblemHandler() throws Exception {
        int PROBE_START_LINE_86 = 87;
		ObjectMapper problem_handler_unknown_type_id2221_test_1_expr7_line_86 = new ObjectMapper()
				.enableDefaultTyping();
		int PROBE_END_LINE_86 = 87;
		final ObjectMapper mapper = problem_handler_unknown_type_id2221_test_1_expr7_line_86;
        int PROBE_START_LINE_88 = 94;
		com.fasterxml.jackson.databind.ObjectMapper v_mapper_2553_line_88 = mapper;
		int PROBE_END_LINE_88 = 94;
		v_mapper_2553_line_88.addHandler(new DeserializationProblemHandler() {
            @Override
            public JavaType handleUnknownTypeId(DeserializationContext ctxt, JavaType baseType, String subTypeId, TypeIdResolver idResolver, String failureMsg) throws IOException {
//                System.out.println("Print out a warning here");
                return ctxt.constructType(Void.class);
            }
        });
        int PROBE_START_LINE_95 = 95;
		com.fasterxml.jackson.databind.ObjectMapper v_mapper_2553_line_95 = mapper;
		String f_json_2552_line_95 = JSON;
		GenericContent problem_handler_unknown_type_id2221_test_1_expr11_line_95 = v_mapper_2553_line_95
				.readValue(f_json_2552_line_95, GenericContent.class);
		int PROBE_END_LINE_95 = 95;
		GenericContent processableContent = problem_handler_unknown_type_id2221_test_1_expr11_line_95;
        assertNotNull(processableContent.getInnerObjects());
        assertEquals(2, processableContent.getInnerObjects().size());
    }

    public void testWithDisabledFAIL_ON_INVALID_SUBTYPE() throws Exception {
        final ObjectMapper mapper = new ObjectMapper()
                .disable(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE)
                .enableDefaultTyping()
        ;
        GenericContent processableContent = mapper.readValue(JSON, GenericContent.class);
        assertNotNull(processableContent.getInnerObjects());
        assertEquals(2, processableContent.getInnerObjects().size());
    }
}
