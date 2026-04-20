package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;

/**
 * Interface that defines API used by members (like {@link AnnotatedMethod})
 * to dynamically resolve types they have.
 *
 * @since 2.7
 */
public interface TypeResolutionContext {
    public JavaType resolveType(Type t);

    public static class Basic
        implements TypeResolutionContext
    {
        private final TypeFactory _typeFactory;
        private final TypeBindings _bindings;

        public Basic(TypeFactory tf, TypeBindings b) {
            int PROBE_START_LINE_25 = 25;
			com.fasterxml.jackson.databind.type.TypeFactory p_tf_4417_line_25 = tf;
			int PROBE_END_LINE_25 = 25;
			_typeFactory = p_tf_4417_line_25;
            int PROBE_START_LINE_26 = 26;
			com.fasterxml.jackson.databind.type.TypeBindings p_b_4418_line_26 = b;
			int PROBE_END_LINE_26 = 26;
			_bindings = p_b_4418_line_26;
        }

        @Override
        public JavaType resolveType(Type type) {
            return _typeFactory.constructType(type, _bindings);
        }
    }
}
