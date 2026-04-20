package com.fasterxml.jackson.databind.jsontype.impl;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.DatabindContext;

/**
 * {@link com.fasterxml.jackson.databind.jsontype.TypeIdResolver} implementation
 * that converts between fully-qualified
 * Java class names and (JSON) Strings.
 */
public class ClassNameIdResolver
    extends TypeIdResolverBase
{
    private final static String JAVA_UTIL_PKG = "java.util.";

    public ClassNameIdResolver(JavaType baseType, TypeFactory typeFactory) {
        super(baseType, typeFactory);
    }

    @Override
    public JsonTypeInfo.Id getMechanism() { return JsonTypeInfo.Id.CLASS; }

    public void registerSubtype(Class<?> type, String name) {
        // not used with class name - based resolvers
    }

    @Override
    public String idFromValue(Object value) {
        return _idFrom(value, value.getClass(), _typeFactory);
    }

    @Override
    public String idFromValueAndType(Object value, Class<?> type) {
        return _idFrom(value, type, _typeFactory);
    }

    @Override
    public JavaType typeFromId(DatabindContext context, String id) throws IOException {
        int PROBE_START_LINE_44 = 44;
		String p_id_4593_line_44 = id;
		com.fasterxml.jackson.databind.DatabindContext p_context_4592_line_44 = context;
		com.fasterxml.jackson.databind.JavaType class_name_id_resolver_1_expr2_line_44 = _typeFromId(p_id_4593_line_44,
				p_context_4592_line_44);
		int PROBE_END_LINE_44 = 44;
		return class_name_id_resolver_1_expr2_line_44;
    }

    protected JavaType _typeFromId(String id, DatabindContext ctxt) throws IOException
    {
        int PROBE_START_LINE_49 = 49;
		com.fasterxml.jackson.databind.DatabindContext p_ctxt_4595_line_49 = ctxt;
		com.fasterxml.jackson.databind.JavaType f__base_type_4597_line_49 = _baseType;
		String p_id_4594_line_49 = id;
		JavaType class_name_id_resolver_1_expr3_line_49 = p_ctxt_4595_line_49.resolveSubType(f__base_type_4597_line_49,
				p_id_4594_line_49);
		int PROBE_END_LINE_49 = 49;
		JavaType t = class_name_id_resolver_1_expr3_line_49;
        int PROBE_START_LINE_50 = 56;
		com.fasterxml.jackson.databind.JavaType v_t_4596_line_50 = t;
		boolean class_name_id_resolver_1_expr4_line_50 = v_t_4596_line_50 == null;
		int PROBE_END_LINE_50 = 56;
		if (class_name_id_resolver_1_expr4_line_50) {
            int PROBE_START_LINE_51 = 54;
			com.fasterxml.jackson.databind.DatabindContext p_ctxt_4595_line_51 = ctxt;
			boolean class_name_id_resolver_1_expr5_line_51 = p_ctxt_4595_line_51 instanceof DeserializationContext;
			int PROBE_END_LINE_51 = 54;
			if (class_name_id_resolver_1_expr5_line_51) {
                int PROBE_START_LINE_53 = 53;
				com.fasterxml.jackson.databind.DatabindContext p_ctxt_4595_line_53 = ctxt;
				com.fasterxml.jackson.databind.DeserializationContext class_name_id_resolver_1_expr8_line_53 = ((DeserializationContext) p_ctxt_4595_line_53);
				com.fasterxml.jackson.databind.JavaType f__base_type_4597_line_53 = _baseType;
				String p_id_4594_line_53 = id;
				com.fasterxml.jackson.databind.JavaType class_name_id_resolver_1_expr6_line_53 = class_name_id_resolver_1_expr8_line_53
						.handleUnknownTypeId(f__base_type_4597_line_53, p_id_4594_line_53, this, "no such class found");
				int PROBE_END_LINE_53 = 53;
				// First: we may have problem handlers that can deal with it?
                return class_name_id_resolver_1_expr6_line_53;
            }
            // ... meaning that we really should never get here.
        }
        int PROBE_START_LINE_57 = 57;
		com.fasterxml.jackson.databind.JavaType v_t_4596_line_57 = t;
		int PROBE_END_LINE_57 = 57;
		return v_t_4596_line_57;
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    protected String _idFrom(Object value, Class<?> cls, TypeFactory typeFactory)
    {
        // Need to ensure that "enum subtypes" work too
        if (Enum.class.isAssignableFrom(cls)) {
            if (!cls.isEnum()) { // means that it's sub-class of base enum, so:
                cls = cls.getSuperclass();
            }
        }
        String str = cls.getName();
        if (str.startsWith(JAVA_UTIL_PKG)) {
            // 25-Jan-2009, tatu: There are some internal classes that we cannot access as is.
            //     We need better mechanism; for now this has to do...

            // Enum sets and maps are problematic since we MUST know type of
            // contained enums, to be able to deserialize.
            // In addition, EnumSet is not a concrete type either
            if (value instanceof EnumSet<?>) { // Regular- and JumboEnumSet...
                Class<?> enumClass = ClassUtil.findEnumType((EnumSet<?>) value);
                // not optimal: but EnumSet is not a customizable type so this is sort of ok
               str = typeFactory.constructCollectionType(EnumSet.class, enumClass).toCanonical();
            } else if (value instanceof EnumMap<?,?>) {
                Class<?> enumClass = ClassUtil.findEnumType((EnumMap<?,?>) value);
                Class<?> valueClass = Object.class;
                // not optimal: but EnumMap is not a customizable type so this is sort of ok
                str = typeFactory.constructMapType(EnumMap.class, enumClass, valueClass).toCanonical();
            }
            // 10-Jan-2018, tatu: Up until 2.9.4 we used to have other conversions for `Collections.xxx()`
            //    and `Arrays.asList(...)`; but it was changed to be handled on receiving end instead
        } else if (str.indexOf('$') >= 0) {
            /* Other special handling may be needed for inner classes,
             * The best way to handle would be to find 'hidden' constructor; pass parent
             * value etc (which is actually done for non-anonymous static classes!),
             * but that is just not possible due to various things. So, we will instead
             * try to generalize type into something we will be more likely to be able
             * construct.
             */
            Class<?> outer = ClassUtil.getOuterClass(cls);
            if (outer != null) {
                // one more check: let's actually not worry if the declared static type is
                // non-static as well; if so, deserializer does have a chance at figuring it all out.
                Class<?> staticType = _baseType.getRawClass();
                if (ClassUtil.getOuterClass(staticType) == null) {
                    // Is this always correct? Seems like it should be...
                    cls = _baseType.getRawClass();
                    str = cls.getName();
                }
            }
        }
        return str;
    }

    @Override
    public String getDescForKnownTypeIds() {
        return "class name used as type id";
    }
}
