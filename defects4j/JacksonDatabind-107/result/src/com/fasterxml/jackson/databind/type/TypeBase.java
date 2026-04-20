package com.fasterxml.jackson.databind.type;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.util.List;
import com.fasterxml.jackson.databind.JavaType;

public abstract class TypeBase
    extends JavaType
    implements JsonSerializable
{
    private static final long serialVersionUID = 1;

    int PROBE_START_LINE_19 = 19;

	private static final com.fasterxml.jackson.databind.type.TypeBindings type_base_1_expr1_line_19 = TypeBindings
			.emptyBindings();

	int PROBE_END_LINE_19 = 19;

	private final static TypeBindings NO_BINDINGS = type_base_1_expr1_line_19;
    private final static JavaType[] NO_TYPES = new JavaType[0];

    protected final JavaType _superClass;

    protected final JavaType[] _superInterfaces;
    
    /**
     * Bindings in effect for this type instance; possibly empty.
     * Needed when resolving types declared in members of this type
     * (if any).
     *
     * @since 2.7
     */
    protected final TypeBindings _bindings;
    
    /**
     * Lazily initialized external representation of the type
     */
    volatile transient String _canonicalName;

    /**
     * Main constructor to use by extending classes.
     */
    protected TypeBase(Class<?> raw, TypeBindings bindings, JavaType superClass, JavaType[] superInts,
            int hash,
            Object valueHandler, Object typeHandler, boolean asStatic)
    {
        super(raw, hash, valueHandler, typeHandler, asStatic);
        int PROBE_START_LINE_48 = 48;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5533_line_48 = bindings;
		boolean type_base_1_expr7_line_48 = p_bindings_5533_line_48 == null;
		boolean type_base_1_expr6_line_48 = (type_base_1_expr7_line_48);
		com.fasterxml.jackson.databind.type.TypeBindings f_no_bindings_5530_line_48 = null;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_5533_line_48_v1 = null;
		if (type_base_1_expr6_line_48) {
			f_no_bindings_5530_line_48 = NO_BINDINGS;
		} else {
			p_bindings_5533_line_48_v1 = bindings;
		}
		com.fasterxml.jackson.databind.type.TypeBindings type_base_1_expr5_line_48 = type_base_1_expr6_line_48
				? f_no_bindings_5530_line_48
				: p_bindings_5533_line_48_v1;
		int PROBE_END_LINE_48 = 48;
		_bindings = type_base_1_expr5_line_48;
        int PROBE_START_LINE_49 = 49;
		com.fasterxml.jackson.databind.JavaType p_super_class_5534_line_49 = superClass;
		int PROBE_END_LINE_49 = 49;
		_superClass = p_super_class_5534_line_49;
        int PROBE_START_LINE_50 = 50;
		com.fasterxml.jackson.databind.JavaType[] p_super_ints_5535_line_50 = superInts;
		int PROBE_END_LINE_50 = 50;
		_superInterfaces = p_super_ints_5535_line_50;
    }

    /**
     * Copy-constructor used when refining/upgrading type instances.
     *
     * @since 2.7
     */
    protected TypeBase(TypeBase base) {
        super(base);
        _superClass = base._superClass;
        _superInterfaces = base._superInterfaces;
        _bindings = base._bindings;
    }

    @Override
    public String toCanonical()
    {
        String str = _canonicalName;
        if (str == null) {
            str = buildCanonicalName();
        }
        return str;
    }

    protected String buildCanonicalName() {
        return _class.getName();
    }

    @Override
    public abstract StringBuilder getGenericSignature(StringBuilder sb);

    @Override
    public abstract StringBuilder getErasedSignature(StringBuilder sb);

    @Override
    public TypeBindings getBindings() {
        int PROBE_START_LINE_87 = 87;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_5398_line_87 = _bindings;
		int PROBE_END_LINE_87 = 87;
		return f__bindings_5398_line_87;
    }

    @Override
    public int containedTypeCount() {
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_5398_line_92 = _bindings;
		int type_base_1_expr10_line_92 = f__bindings_5398_line_92.size();
		int PROBE_END_LINE_92 = 92;
		return type_base_1_expr10_line_92;
    }

    @Override
    public JavaType containedType(int index) {
        return _bindings.getBoundType(index);
    }

    @Override
    @Deprecated
    public String containedTypeName(int index) {
        return _bindings.getBoundName(index);
    }

    @Override
    public JavaType getSuperClass() {
        int PROBE_START_LINE_108 = 108;
		com.fasterxml.jackson.databind.JavaType f__super_class_5399_line_108 = _superClass;
		int PROBE_END_LINE_108 = 108;
		return f__super_class_5399_line_108;
    }

    @Override
    public List<JavaType> getInterfaces() {
        int PROBE_START_LINE_113 = 115;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_5400_line_113 = _superInterfaces;
		boolean type_base_1_expr11_line_113 = f__super_interfaces_5400_line_113 == null;
		int PROBE_END_LINE_113 = 115;
		if (type_base_1_expr11_line_113) {
            return Collections.emptyList();
        }
        int PROBE_START_LINE_116 = 121;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_5400_line_116 = _superInterfaces;
		int q_length_184_line_116 = f__super_interfaces_5400_line_116.length;
		int PROBE_END_LINE_116 = 121;
		switch (q_length_184_line_116) {
        case 0:
		int PROBE_START_LINE_118 = 118;
		List<com.fasterxml.jackson.databind.JavaType> type_base_1_expr12_line_118 = Collections.emptyList();
		int PROBE_END_LINE_118 = 118;
		return type_base_1_expr12_line_118;
        case 1:
		int PROBE_START_LINE_120 = 120;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_5400_line_120 = _superInterfaces;
		com.fasterxml.jackson.databind.JavaType type_base_1_expr14_line_120 = f__super_interfaces_5400_line_120[0];
		List<com.fasterxml.jackson.databind.JavaType> type_base_1_expr13_line_120 = Collections
				.singletonList(type_base_1_expr14_line_120);
		int PROBE_END_LINE_120 = 120;
		return type_base_1_expr13_line_120;
        }
        int PROBE_START_LINE_122 = 122;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_5400_line_122 = _superInterfaces;
		List<com.fasterxml.jackson.databind.JavaType> type_base_1_expr15_line_122 = Arrays
				.asList(f__super_interfaces_5400_line_122);
		int PROBE_END_LINE_122 = 122;
		return type_base_1_expr15_line_122;
    }

    @Override
    public final JavaType findSuperType(Class<?> rawTarget)
    {
        if (rawTarget == _class) {
            return this;
        }
        // Check super interfaces first:
        if (rawTarget.isInterface() && (_superInterfaces != null)) {
            for (int i = 0, count = _superInterfaces.length; i < count; ++i) {
                JavaType type = _superInterfaces[i].findSuperType(rawTarget);
                if (type != null) {
                    return type;
                }
            }
        }
        // and if not found, super class and its supertypes
        if (_superClass != null) {
            JavaType type = _superClass.findSuperType(rawTarget);
            if (type != null) {
                return type;
            }
        }
        return null;
    }

    @Override
    public JavaType[] findTypeParameters(Class<?> expType)
    {
        JavaType match = findSuperType(expType);
        if (match == null) {
            return NO_TYPES;
        }
        return match.getBindings().typeParameterArray();
    }
    
    /*
    /**********************************************************
    /* JsonSerializable base implementation
    /**********************************************************
     */

    @Override
    public void serializeWithType(JsonGenerator g, SerializerProvider provider,
            TypeSerializer typeSer)
        throws IOException
    {
        WritableTypeId typeIdDef = new WritableTypeId(this, JsonToken.VALUE_STRING);
        typeSer.writeTypePrefix(g, typeIdDef);
        this.serialize(g, provider);
        typeSer.writeTypeSuffix(g, typeIdDef);
    }

    @Override
    public void serialize(JsonGenerator gen, SerializerProvider provider)
            throws IOException, JsonProcessingException
    {
        gen.writeString(toCanonical());
    } 

    /*
    /**********************************************************
    /* Methods for sub-classes to use
    /**********************************************************
     */

    /**
     * @param trailingSemicolon Whether to add trailing semicolon for non-primitive
     *   (reference) types or not
     */
    protected static StringBuilder _classSignature(Class<?> cls, StringBuilder sb,
           boolean trailingSemicolon)
    {
        if (cls.isPrimitive()) {
            if (cls == Boolean.TYPE) {                
                sb.append('Z');
            } else if (cls == Byte.TYPE) {
                sb.append('B');
            }
            else if (cls == Short.TYPE) {
                sb.append('S');
            }
            else if (cls == Character.TYPE) {
                sb.append('C');
            }
            else if (cls == Integer.TYPE) {
                sb.append('I');
            }
            else if (cls == Long.TYPE) {
                sb.append('J');
            }
            else if (cls == Float.TYPE) {
                sb.append('F');
            }
            else if (cls == Double.TYPE) {
                sb.append('D');
            }
            else if (cls == Void.TYPE) {
                sb.append('V');
            } else {
                throw new IllegalStateException("Unrecognized primitive type: "+cls.getName());
            }
        } else {
            sb.append('L');
            String name = cls.getName();
            for (int i = 0, len = name.length(); i < len; ++i) {
                char c = name.charAt(i);
                if (c == '.') c = '/';
                sb.append(c);
            }
            if (trailingSemicolon) {
                sb.append(';');
            }
        }
        return sb;
    }

    /**
     * Internal helper method used to figure out nominal super-class for
     * deprecated factory methods / constructors, where we are not given
     * properly resolved supertype hierarchy.
     * Will basically give `JavaType` for `java.lang.Object` for classes
     * other than `java.lafgn.Object`; null for others.
     *
     * @since 2.7
     */
    protected static JavaType _bogusSuperClass(Class<?> cls) {
        Class<?> parent = cls.getSuperclass();
        if (parent == null) {
            return null;
        }
        return TypeFactory.unknownType();
    }
}
