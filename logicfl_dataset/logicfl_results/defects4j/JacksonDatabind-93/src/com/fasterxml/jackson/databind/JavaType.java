package com.fasterxml.jackson.databind;

import java.lang.reflect.Modifier;
import java.util.List;

import com.fasterxml.jackson.core.type.ResolvedType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;

/**
 * Base class for type token classes used both to contain information
 * and as keys for deserializers.
 *<p>
 * Instances can (only) be constructed by
 * <code>com.fasterxml.jackson.databind.type.TypeFactory</code>.
 *<p>
 * Since 2.2 this implements {@link java.lang.reflect.Type} to allow
 * it to be pushed through interfaces that only expose that type.
 */
public abstract class JavaType
    extends ResolvedType
    implements java.io.Serializable, // 2.1
        java.lang.reflect.Type // 2.2
{
    private static final long serialVersionUID = 1;

    /**
     * This is the nominal type-erased Class that would be close to the
     * type represented (but not exactly type, due to type erasure: type
     * instance may have more information on this).
     * May be an interface or abstract class, so instantiation
     * may not be possible.
     */
    protected final Class<?> _class;

    protected final int _hash;

    /**
     * Optional handler (codec) that can be attached to indicate 
     * what to use for handling (serializing, deserializing) values of
     * this specific type.
     *<p>
     * Note: untyped (i.e. caller has to cast) because it is used for
     * different kinds of handlers, with unrelated types.
     */
    protected final Object _valueHandler;

    /**
     * Optional handler that can be attached to indicate how to handle
     * additional type metadata associated with this type.
     *<p>
     * Note: untyped (i.e. caller has to cast) because it is used for
     * different kinds of handlers, with unrelated types.
     */
    protected final Object _typeHandler;

    /**
     * Whether entities defined with this type should be handled using
     * static typing (as opposed to dynamic runtime type) or not.
     * 
     * @since 2.2
     */
    protected final boolean _asStatic;

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    /**
     * @param raw "Raw" (type-erased) class for this type
     * @param additionalHash Additional hash code to use, in addition
     *   to hash code of the class name 
     */
    protected JavaType(Class<?> raw, int additionalHash,
            Object valueHandler, Object typeHandler, boolean asStatic)
    {
        int PROBE_START_LINE_79 = 79;
		Class<?> p_raw_434_line_79 = raw;
		int PROBE_END_LINE_79 = 79;
		_class = p_raw_434_line_79;
        int PROBE_START_LINE_80 = 80;
		Class<?> p_raw_434_line_80 = raw;
		String java_type_1_expr5_line_80 = p_raw_434_line_80.getName();
		int java_type_1_expr4_line_80 = java_type_1_expr5_line_80.hashCode();
		int p_additional_hash_435_line_80 = additionalHash;
		int java_type_1_expr3_line_80 = java_type_1_expr4_line_80 + p_additional_hash_435_line_80;
		int PROBE_END_LINE_80 = 80;
		_hash = java_type_1_expr3_line_80;
        int PROBE_START_LINE_81 = 81;
		Object p_value_handler_436_line_81 = valueHandler;
		int PROBE_END_LINE_81 = 81;
		_valueHandler = p_value_handler_436_line_81;
        int PROBE_START_LINE_82 = 82;
		Object p_type_handler_437_line_82 = typeHandler;
		int PROBE_END_LINE_82 = 82;
		_typeHandler = p_type_handler_437_line_82;
        int PROBE_START_LINE_83 = 83;
		boolean p_as_static_438_line_83 = asStatic;
		int PROBE_END_LINE_83 = 83;
		_asStatic = p_as_static_438_line_83;
    }

    /**
     * Copy-constructor used when refining/upgrading type instances.
     *
     * @since 2.7
     */
    protected JavaType(JavaType base) 
    {
        _class = base._class;
        _hash = base._hash;
        _valueHandler = base._valueHandler;
        _typeHandler = base._typeHandler;
        _asStatic = base._asStatic;
    }

    /**
     * "Copy method" that will construct a new instance that is identical to
     * this instance, except that it will have specified type handler assigned.
     * 
     * @return Newly created type instance
     */
    public abstract JavaType withTypeHandler(Object h);

    /**
     * Mutant factory method that will construct a new instance that is identical to
     * this instance, except that it will have specified content type (element type
     * for arrays, value type for Maps and so forth) handler assigned.
     * 
     * @return Newly created type instance, with given 
     */
    public abstract JavaType withContentTypeHandler(Object h);

    /**
     * Mutant factory method that will construct a new instance that is identical to
     * this instance, except that it will have specified value handler assigned.
     * 
     * @return Newly created type instance
     */
    public abstract JavaType withValueHandler(Object h);

    /**
     * Mutant factory method that will construct a new instance that is identical to
     * this instance, except that it will have specified content value handler assigned.
     * 
     * @return Newly created type instance
     */
    public abstract JavaType withContentValueHandler(Object h);

    /**
     * Mutant factory method that will try to copy handlers that the specified
     * source type instance had, if any; this must be done recursively where
     * necessary (as content types may be structured).
     *
     * @since 2.8.4
     */
    public JavaType withHandlersFrom(JavaType src) {
        JavaType type = this;
        int PROBE_START_LINE_142 = 142;
		com.fasterxml.jackson.databind.JavaType p_src_449_line_142 = src;
		Object java_type_1_expr10_line_142 = p_src_449_line_142.getTypeHandler();
		int PROBE_END_LINE_142 = 142;
		Object h = java_type_1_expr10_line_142;
        int PROBE_START_LINE_143 = 145;
		Object v_h_451_line_143 = h;
		Object f__type_handler_442_line_143 = _typeHandler;
		boolean java_type_1_expr11_line_143 = v_h_451_line_143 != f__type_handler_442_line_143;
		int PROBE_END_LINE_143 = 145;
		if (java_type_1_expr11_line_143) {
            int PROBE_START_LINE_144 = 144;
			com.fasterxml.jackson.databind.JavaType v_type_450_line_144 = type;
			Object v_h_451_line_144 = h;
			com.fasterxml.jackson.databind.JavaType java_type_1_expr13_line_144 = v_type_450_line_144
					.withTypeHandler(v_h_451_line_144);
			int PROBE_END_LINE_144 = 144;
			type = java_type_1_expr13_line_144;
        }
        int PROBE_START_LINE_146 = 146;
		com.fasterxml.jackson.databind.JavaType p_src_449_line_146 = src;
		Object java_type_1_expr15_line_146 = p_src_449_line_146.getValueHandler();
		int PROBE_END_LINE_146 = 146;
		h = java_type_1_expr15_line_146;
        int PROBE_START_LINE_147 = 149;
		Object v_h_451_line_147 = h;
		Object f__value_handler_441_line_147 = _valueHandler;
		boolean java_type_1_expr16_line_147 = v_h_451_line_147 != f__value_handler_441_line_147;
		int PROBE_END_LINE_147 = 149;
		if (java_type_1_expr16_line_147) {
            type = type.withValueHandler(h);
        }
        int PROBE_START_LINE_150 = 150;
		com.fasterxml.jackson.databind.JavaType v_type_450_line_150 = type;
		int PROBE_END_LINE_150 = 150;
		return v_type_450_line_150;
    }

    /**
     * Mutant factory method that may be called on structured types
     * that have a so-called content type (element of arrays, value type
     * of Maps, referenced type of referential types),
     * and will construct a new instance that is identical to
     * this instance, except that it has specified content type, instead of current
     * one. If content type is already set to given type, <code>this</code> is returned.
     * If type does not have a content type (which is the case with
     * <code>SimpleType</code>), {@link IllegalArgumentException}
     * will be thrown.
     * 
     * @return Newly created type instance
     *
     * @since 2.7
     */
    public abstract JavaType withContentType(JavaType contentType);

    /**
     * Method that can be called to get a type instance that indicates
     * that values of the type should be handled using "static typing" for purposes
     * of serialization (as opposed to "dynamic" aka runtime typing):
     * meaning that no runtime information is needed for determining serializers to use.
     * The main use case is to allow forcing of specific root value serialization type,
     * and specifically in resolving serializers for contained types (element types
     * for arrays, Collections and Maps).
     * 
     * @since 2.2
     */
    public abstract JavaType withStaticTyping();
    
    /*
    /**********************************************************
    /* Type coercion fluent factory methods
    /**********************************************************
     */

    /**
     * Mutant factory method that will try to create and return a sub-type instance
     * for known parameterized types; for other types will return `null` to indicate
     * that no just refinement makes necessary sense, without trying to detect
     * special status through implemented interfaces.
     *
     * @since 2.7
     */
    public abstract JavaType refine(Class<?> rawType, TypeBindings bindings,
            JavaType superClass, JavaType[] superInterfaces);
    
    /**
     * Legacy method used for forcing sub-typing of this type into
     * type specified by specific type erasure.
     * Deprecated as of 2.7 as such specializations really ought to
     * go through {@link TypeFactory}, not directly via {@link JavaType}.
     *
     * @since 2.7
     */
    @Deprecated
    public JavaType forcedNarrowBy(Class<?> subclass)
    {
        if (subclass == _class) { // can still optimize for simple case
            return this;
        }
        JavaType result = _narrow(subclass);
        // TODO: these checks should NOT actually be needed; above should suffice:
        if (_valueHandler != result.<Object>getValueHandler()) {
            result = result.withValueHandler(_valueHandler);
        }
        if (_typeHandler != result.<Object>getTypeHandler()) {
            result = result.withTypeHandler(_typeHandler);
        }
        return result;
    }

    @Deprecated // since 2.7
    protected abstract JavaType _narrow(Class<?> subclass);

    /*
    /**********************************************************
    /* Implementation of ResolvedType API
    /**********************************************************
     */

    @Override
    public final Class<?> getRawClass() { int PROBE_START_LINE_235 = 235;
		Class<?> f__class_439_line_235 = _class;
		int PROBE_END_LINE_235 = 235;
	return f__class_439_line_235; }

    /**
     * Method that can be used to check whether this type has
     * specified Class as its type erasure. Put another way, returns
     * true if instantiation of this Type is given (type-erased) Class.
     */
    @Override
    public final boolean hasRawClass(Class<?> clz) { int PROBE_START_LINE_243 = 243;
		Class<?> f__class_439_line_243 = _class;
		Class<?> p_clz_459_line_243 = clz;
		boolean java_type_1_expr17_line_243 = f__class_439_line_243 == p_clz_459_line_243;
		int PROBE_END_LINE_243 = 243;
	return java_type_1_expr17_line_243; }

    /**
     * Accessor that allows determining whether {@link #getContentType()} should
     * return a non-null value (that is, there is a "content type") or not.
     * True if {@link #isContainerType()} or {@link #isReferenceType()} return true.
     *
     * @since 2.8
     */
    public boolean hasContentType() {
        return true;
    }

    /**
     * @since 2.6
     */
    public final boolean isTypeOrSubTypeOf(Class<?> clz) {
        return (_class == clz) || (clz.isAssignableFrom(_class));
    }

    @Override
    public boolean isAbstract() {
        int PROBE_START_LINE_265 = 265;
		Class<?> f__class_439_line_265 = _class;
		int java_type_1_expr19_line_265 = f__class_439_line_265.getModifiers();
		boolean java_type_1_expr18_line_265 = Modifier.isAbstract(java_type_1_expr19_line_265);
		int PROBE_END_LINE_265 = 265;
		return java_type_1_expr18_line_265;
    }

    /**
     * Convenience method for checking whether underlying Java type
     * is a concrete class or not: abstract classes and interfaces
     * are not.
     */
    @Override
    public boolean isConcrete() {
        int PROBE_START_LINE_275 = 275;
		Class<?> f__class_439_line_275 = _class;
		int java_type_1_expr20_line_275 = f__class_439_line_275.getModifiers();
		int PROBE_END_LINE_275 = 275;
		int mod = java_type_1_expr20_line_275;
        int PROBE_START_LINE_276 = 278;
		int v_mod_461_line_276 = mod;
		int q_interface_12_line_276 = Modifier.INTERFACE;
		int q_abstract_13_line_276 = Modifier.ABSTRACT;
		int java_type_1_expr25_line_276 = q_interface_12_line_276 | q_abstract_13_line_276;
		int java_type_1_expr24_line_276 = (java_type_1_expr25_line_276);
		int java_type_1_expr23_line_276 = v_mod_461_line_276 & java_type_1_expr24_line_276;
		int java_type_1_expr22_line_276 = (java_type_1_expr23_line_276);
		boolean java_type_1_expr21_line_276 = java_type_1_expr22_line_276 == 0;
		int PROBE_END_LINE_276 = 278;
		if (java_type_1_expr21_line_276) {
            return true;
        }
        /* 19-Feb-2010, tatus: Holy mackarel; primitive types
         *    have 'abstract' flag set...
         */
        return _class.isPrimitive();
    }

    @Override
    public boolean isThrowable() { int PROBE_START_LINE_286 = 286;
		Class<?> f__class_439_line_286 = _class;
		boolean java_type_1_expr26_line_286 = Throwable.class.isAssignableFrom(f__class_439_line_286);
		int PROBE_END_LINE_286 = 286;
	return java_type_1_expr26_line_286; }

    @Override
    public boolean isArrayType() { return false; }

    @Override
    public final boolean isEnumType() { int PROBE_START_LINE_292 = 292;
		Class<?> f__class_439_line_292 = _class;
		boolean java_type_1_expr28_line_292 = f__class_439_line_292.isEnum();
		int PROBE_END_LINE_292 = 292;
	return java_type_1_expr28_line_292; }

    @Override
    public final boolean isInterface() { int PROBE_START_LINE_295 = 295;
		Class<?> f__class_439_line_295 = _class;
		boolean java_type_1_expr29_line_295 = f__class_439_line_295.isInterface();
		int PROBE_END_LINE_295 = 295;
	return java_type_1_expr29_line_295; }

    @Override
    public final boolean isPrimitive() { int PROBE_START_LINE_298 = 298;
		Class<?> f__class_439_line_298 = _class;
		boolean java_type_1_expr30_line_298 = f__class_439_line_298.isPrimitive();
		int PROBE_END_LINE_298 = 298;
	return java_type_1_expr30_line_298; }

    @Override
    public final boolean isFinal() { int PROBE_START_LINE_301 = 301;
		Class<?> f__class_439_line_301 = _class;
		int java_type_1_expr32_line_301 = f__class_439_line_301.getModifiers();
		boolean java_type_1_expr31_line_301 = Modifier.isFinal(java_type_1_expr32_line_301);
		int PROBE_END_LINE_301 = 301;
	return java_type_1_expr31_line_301; }

    /**
     * @return True if type represented is a container type; this includes
     *    array, Map and Collection types.
     */
    @Override
    public abstract boolean isContainerType();

    /**
     * @return True if type is either true {@link java.util.Collection} type,
     *    or something similar (meaning it has at least one type parameter,
     *    which describes type of contents)
     */
    @Override
    public boolean isCollectionLikeType() { return false; }

    /**
     * @return True if type is either true {@link java.util.Map} type,
     *    or something similar (meaning it has at least two type parameter;
     *    first one describing key type, second value type)
     */
    @Override
    public boolean isMapLikeType() { return false; }

    /**
     * Convenience method, short-hand for
     *<code>
     *   getRawClass() == Object.class
     *</code>
     * and used to figure if we basically have "untyped" type object.
     *
     * @since 2.5
     */
    public final boolean isJavaLangObject() { return _class == Object.class; }

    /**
     * Accessor for checking whether handlers for dealing with values of
     * this type should use static typing (as opposed to dynamic typing).
     * Note that while value of 'true' does mean that static typing is to
     * be used, value of 'false' may still be overridden by other settings.
     * 
     * @since 2.2
     */
    public final boolean useStaticType() { return _asStatic; }

    /*
    /**********************************************************
    /* Public API, type parameter access; pass-through
    /**********************************************************
     */

    @Override
    public boolean hasGenericTypes() { return containedTypeCount() > 0; }

    @Override
    public JavaType getKeyType() { return null; }

    @Override
    public JavaType getContentType() { return null; }

    @Override // since 2.6
    public JavaType getReferencedType() { return null; }

    @Override
    public abstract int containedTypeCount();

    @Override
    public abstract JavaType containedType(int index);
       
    @Deprecated // since 2.7
    @Override
    public abstract String containedTypeName(int index);

    @Deprecated // since 2.7
    @Override
    public Class<?> getParameterSource() {
        return null;
    }

    /*
    /**********************************************************
    /* Extended API beyond ResolvedType
    /**********************************************************
     */
    
    // NOTE: not defined in Resolved type
    /**
     * Convenience method that is functionally same as:
     *<code>
     * JavaType t = containedType(index);
     * if (t == null) {
     *    t = TypeFactory.unknownType();
     * }
     *</code>
     * and typically used to eliminate need for null checks for common case
     * where we just want to check if containedType is available first; and
     * if not, use "unknown type" (which translates to <code>java.lang.Object</code>
     * basically).
     *
     * @since 2.5
     */
    public JavaType containedTypeOrUnknown(int index) {
        JavaType t = containedType(index);
        return (t == null)  ? TypeFactory.unknownType() : t;
    }

    /**
     * @since 2.7
     */
    public abstract TypeBindings getBindings();

    /**
     * Method that may be called to find representation of given type
     * within type hierarchy of this type: either this type (if this
     * type has given erased type), one of its supertypes that has the
     * erased types, or null if target is neither this type or any of its
     * supertypes.
     *
     * @since 2.7
     */
    public abstract JavaType findSuperType(Class<?> erasedTarget);

    /**
     * Accessor for finding fully resolved parent class of this type,
     * if it has one; null if not.
     *
     * @since 2.7
     */
    public abstract JavaType getSuperClass();

    /**
     * Accessor for finding fully resolved interfaces this type implements,
     * if any; empty array if none.
     *
     * @since 2.7
     */
    public abstract List<JavaType> getInterfaces();

    /**
     * Method that may be used to find paramaterization this type has for
     * given type-erased generic target type.
     *
     * @since 2.7
     */
    public abstract JavaType[] findTypeParameters(Class<?> expType);

    /*
    /**********************************************************
    /* Semi-public API, accessing handlers
    /**********************************************************
     */
    
    /**
     * Method for accessing value handler associated with this type, if any
     */
    @SuppressWarnings("unchecked")
    public <T> T getValueHandler() { int PROBE_START_LINE_458 = 458;
		Object f__value_handler_441_line_458 = _valueHandler;
		int PROBE_END_LINE_458 = 458;
	return (T) f__value_handler_441_line_458; }

    /**
     * Method for accessing type handler associated with this type, if any
     */
    @SuppressWarnings("unchecked")
    public <T> T getTypeHandler() { int PROBE_START_LINE_464 = 464;
		Object f__type_handler_442_line_464 = _typeHandler;
		int PROBE_END_LINE_464 = 464;
	return (T) f__type_handler_442_line_464; }

    /**
     * @since 2.7
     */
    public Object getContentValueHandler() { return null; }

    /**
     * @since 2.7
     */
    public Object getContentTypeHandler() { return null; }    

    /**
     * @since 2.6
     */
    public boolean hasValueHandler() { return _valueHandler != null; }

    /**
     * Helper method that checks whether this type, or its (optional) key
     * or content type has {@link #getValueHandler} or {@link #getTypeHandler()};
     * that is, are there any non-standard handlers associated with this
     * type object.
     *
     * @since 2.8
     */
    public boolean hasHandlers() {
        int PROBE_START_LINE_490 = 490;
		Object f__type_handler_442_line_490 = _typeHandler;
		boolean java_type_1_expr37_line_490 = f__type_handler_442_line_490 != null;
		boolean java_type_1_expr36_line_490 = (java_type_1_expr37_line_490);
		boolean java_type_1_expr38_line_490 = false;
		if (!java_type_1_expr36_line_490) {
			Object f__value_handler_441_line_490 = _valueHandler;
			boolean java_type_1_expr39_line_490 = f__value_handler_441_line_490 != null;
			java_type_1_expr38_line_490 = (java_type_1_expr39_line_490);
		}
		boolean java_type_1_expr35_line_490 = java_type_1_expr36_line_490 || java_type_1_expr38_line_490;
		int PROBE_END_LINE_490 = 490;
		return java_type_1_expr35_line_490;
    }
    
    /*
    /**********************************************************
    /* Support for producing signatures
    /**********************************************************
     */
    
    //public abstract String toCanonical();

    /**
     * Method for accessing signature that contains generic
     * type information, in form compatible with JVM 1.5
     * as per JLS. It is a superset of {@link #getErasedSignature},
     * in that generic information can be automatically removed
     * if necessary (just remove outermost
     * angle brackets along with content inside)
     */
    public String getGenericSignature() {
        StringBuilder sb = new StringBuilder(40);
        getGenericSignature(sb);
        return sb.toString();        
    }

    /**
     * 
     * @param sb StringBuilder to append signature to
     * 
     * @return StringBuilder that was passed in; returned to allow
     * call chaining
     */
    public abstract StringBuilder getGenericSignature(StringBuilder sb);
    
    /**
     * Method for accessing signature without generic
     * type information, in form compatible with all versions
     * of JVM, and specifically used for type descriptions
     * when generating byte code.
     */
    public String getErasedSignature() {
        StringBuilder sb = new StringBuilder(40);
        getErasedSignature(sb);
        return sb.toString();
    }

    /**
     * Method for accessing signature without generic
     * type information, in form compatible with all versions
     * of JVM, and specifically used for type descriptions
     * when generating byte code.
     * 
     * @param sb StringBuilder to append signature to
     * 
     * @return StringBuilder that was passed in; returned to allow
     * call chaining
     */
    public abstract StringBuilder getErasedSignature(StringBuilder sb);

    /*
    /**********************************************************
    /* Standard methods; let's make them abstract to force override
    /**********************************************************
     */

    @Override
    public abstract String toString();

    @Override
    public abstract boolean equals(Object o);

    @Override
    public final int hashCode() { int PROBE_START_LINE_562 = 562;
		int f__hash_440_line_562 = _hash;
		int PROBE_END_LINE_562 = 562;
	return f__hash_440_line_562; }
}
