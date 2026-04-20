package com.fasterxml.jackson.databind.type;

import java.io.IOException;
import java.util.*;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
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
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_230_line_46 = bindings;
		boolean type_base_1_expr7_line_46 = p_bindings_230_line_46 == null;
		boolean type_base_1_expr6_line_46 = (type_base_1_expr7_line_46);
		com.fasterxml.jackson.databind.type.TypeBindings f_no_bindings_227_line_46 = null;
		com.fasterxml.jackson.databind.type.TypeBindings p_bindings_230_line_46_v1 = null;
		if (type_base_1_expr6_line_46) {
			f_no_bindings_227_line_46 = NO_BINDINGS;
		} else {
			p_bindings_230_line_46_v1 = bindings;
		}
		com.fasterxml.jackson.databind.type.TypeBindings type_base_1_expr5_line_46 = type_base_1_expr6_line_46
				? f_no_bindings_227_line_46
				: p_bindings_230_line_46_v1;
		int PROBE_END_LINE_46 = 46;
		_bindings = type_base_1_expr5_line_46;
        int PROBE_START_LINE_47 = 47;
		com.fasterxml.jackson.databind.JavaType p_super_class_231_line_47 = superClass;
		int PROBE_END_LINE_47 = 47;
		_superClass = p_super_class_231_line_47;
        int PROBE_START_LINE_48 = 48;
		com.fasterxml.jackson.databind.JavaType[] p_super_ints_232_line_48 = superInts;
		int PROBE_END_LINE_48 = 48;
		_superInterfaces = p_super_ints_232_line_48;
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
        int PROBE_START_LINE_66 = 66;
		String f__canonical_name_241_line_66 = _canonicalName;
		int PROBE_END_LINE_66 = 66;
		String str = f__canonical_name_241_line_66;
        int PROBE_START_LINE_67 = 69;
		String v_str_240_line_67 = str;
		boolean type_base_1_expr10_line_67 = v_str_240_line_67 == null;
		int PROBE_END_LINE_67 = 69;
		if (type_base_1_expr10_line_67) {
            int PROBE_START_LINE_68 = 68;
			String type_base_1_expr12_line_68 = buildCanonicalName();
			int PROBE_END_LINE_68 = 68;
			str = type_base_1_expr12_line_68;
        }
        int PROBE_START_LINE_70 = 70;
		String v_str_240_line_70 = str;
		int PROBE_END_LINE_70 = 70;
		return v_str_240_line_70;
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
        return _bindings;
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
        return _superClass;
    }

    @Override
    public List<JavaType> getInterfaces() {
        if (_superInterfaces == null) {
            return Collections.emptyList();
        }
        switch (_superInterfaces.length) {
        case 0:
            return Collections.emptyList();
        case 1:
            return Collections.singletonList(_superInterfaces[0]);
        }
        return Arrays.asList(_superInterfaces);
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
