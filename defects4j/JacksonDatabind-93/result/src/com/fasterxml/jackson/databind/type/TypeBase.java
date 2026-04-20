package com.fasterxml.jackson.databind.type;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.util.List;
import com.fasterxml.jackson.databind.JavaType;

public abstract class TypeBase
    extends JavaType
    implements JsonSerializable
{
    private static final long serialVersionUID = 1;

    int PROBE_START_LINE_17 = 17;

	private static final com.fasterxml.jackson.databind.type.TypeBindings type_base_1_expr1_line_17 = TypeBindings
			.emptyBindings();

	int PROBE_END_LINE_17 = 17;

	private final static TypeBindings NO_BINDINGS = type_base_1_expr1_line_17;
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
        int PROBE_START_LINE_46 = 46;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4421_line_46 = bindings;
		boolean type_base_1_expr7_line_46 = p_bindings_4421_line_46 == null;
		boolean type_base_1_expr6_line_46 = (type_base_1_expr7_line_46);
		com.fasterxml.jackson.databind.type.TypeBindings f_no_bindings_4418_line_46 = null;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_4421_line_46_v1 = null;
		if (type_base_1_expr6_line_46) {
			f_no_bindings_4418_line_46 = NO_BINDINGS;
		} else {
			p_bindings_4421_line_46_v1 = bindings;
		}
		com.fasterxml.jackson.databind.type.TypeBindings type_base_1_expr5_line_46 = type_base_1_expr6_line_46
				? f_no_bindings_4418_line_46
				: p_bindings_4421_line_46_v1;
		int PROBE_END_LINE_46 = 46;
		_bindings = type_base_1_expr5_line_46;
        int PROBE_START_LINE_47 = 47;
		com.fasterxml.jackson.databind.JavaType p_super_class_4422_line_47 = superClass;
		int PROBE_END_LINE_47 = 47;
		_superClass = p_super_class_4422_line_47;
        int PROBE_START_LINE_48 = 48;
		com.fasterxml.jackson.databind.JavaType[] p_super_ints_4423_line_48 = superInts;
		int PROBE_END_LINE_48 = 48;
		_superInterfaces = p_super_ints_4423_line_48;
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
        int PROBE_START_LINE_85 = 85;
		com.fasterxml.jackson.databind.type.TypeBindings f__bindings_4363_line_85 = _bindings;
		int PROBE_END_LINE_85 = 85;
		return f__bindings_4363_line_85;
    }

    @Override
    public int containedTypeCount() {
        return _bindings.size();
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
        int PROBE_START_LINE_106 = 106;
		com.fasterxml.jackson.databind.JavaType f__super_class_4364_line_106 = _superClass;
		int PROBE_END_LINE_106 = 106;
		return f__super_class_4364_line_106;
    }

    @Override
    public List<JavaType> getInterfaces() {
        int PROBE_START_LINE_111 = 113;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_4365_line_111 = _superInterfaces;
		boolean type_base_1_expr10_line_111 = f__super_interfaces_4365_line_111 == null;
		int PROBE_END_LINE_111 = 113;
		if (type_base_1_expr10_line_111) {
            return Collections.emptyList();
        }
        int PROBE_START_LINE_114 = 119;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_4365_line_114 = _superInterfaces;
		int q_length_140_line_114 = f__super_interfaces_4365_line_114.length;
		int PROBE_END_LINE_114 = 119;
		switch (q_length_140_line_114) {
        case 0:
		int PROBE_START_LINE_116 = 116;
		List<com.fasterxml.jackson.databind.JavaType> type_base_1_expr11_line_116 = Collections.emptyList();
		int PROBE_END_LINE_116 = 116;
		return type_base_1_expr11_line_116;
        case 1:
		int PROBE_START_LINE_118 = 118;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_4365_line_118 = _superInterfaces;
		com.fasterxml.jackson.databind.JavaType type_base_1_expr13_line_118 = f__super_interfaces_4365_line_118[0];
		List<com.fasterxml.jackson.databind.JavaType> type_base_1_expr12_line_118 = Collections
				.singletonList(type_base_1_expr13_line_118);
		int PROBE_END_LINE_118 = 118;
		return type_base_1_expr12_line_118;
        }
        int PROBE_START_LINE_120 = 120;
		com.fasterxml.jackson.databind.JavaType[] f__super_interfaces_4365_line_120 = _superInterfaces;
		List<com.fasterxml.jackson.databind.JavaType> type_base_1_expr14_line_120 = Arrays
				.asList(f__super_interfaces_4365_line_120);
		int PROBE_END_LINE_120 = 120;
		return type_base_1_expr14_line_120;
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
    public void serializeWithType(JsonGenerator gen, SerializerProvider provider,
            TypeSerializer typeSer)
        throws IOException, JsonProcessingException
    {
        typeSer.writeTypePrefixForScalar(this, gen);
        this.serialize(gen, provider);
        typeSer.writeTypeSuffixForScalar(this, gen);
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
