package com.fasterxml.jackson.databind.type;

import java.lang.reflect.*;
import java.util.*;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Collection;

/**
 * Helper class used for resolving type parameters for given class
 */
public class TypeBindings
{
    private final static JavaType[] NO_TYPES = new JavaType[0];
    
    /**
     * Marker to use for (temporarily) unbound references.
     */
    public final static JavaType UNBOUND = new SimpleType(Object.class);

    /**
     * Factory to use for constructing resolved related types.
     */
    protected final TypeFactory _typeFactory;
    
    /**
     * Context type used for resolving all types, if specified. May be null,
     * in which case {@link #_contextClass} is used instead.
     */
    protected final JavaType _contextType;

    /**
     * Specific class to use for resolving all types, for methods and fields
     * class and its superclasses and -interfaces contain.
     */
    protected final Class<?> _contextClass;

    /**
     * Lazily-instantiated bindings of resolved type parameters
     */
    protected Map<String,JavaType> _bindings;

    /**
     * Also: we may temporarily want to mark certain named types
     * as resolved (but without exact type); if so, we'll just store
     * names here.
     */
    protected HashSet<String> _placeholders;

    /**
     * Sometimes it is necessary to allow hierarchic resolution of types: specifically
     * in cases where there are local bindings (for methods, constructors). If so,
     * we'll just use simple delegation model.
     */
    private final TypeBindings _parentBindings;

    /*
    /**********************************************************
    /* Construction
    /**********************************************************
     */
    
    public TypeBindings(TypeFactory typeFactory, Class<?> cc)
    {
        this(typeFactory, null, cc, null);
    }

    public TypeBindings(TypeFactory typeFactory, JavaType type)
    {
        this(typeFactory, null, type.getRawClass(), type);
    }

    /**
     * Constructor used to create "child" instances; mostly to
     * allow delegation from explicitly defined local overrides
     * (local type variables for methods, constructors) to
     * contextual (class-defined) ones.
     */
    public TypeBindings childInstance() {
        return new TypeBindings(_typeFactory, this, _contextClass, _contextType);
    }

    private TypeBindings(TypeFactory tf, TypeBindings parent,
            Class<?> cc, JavaType type)
    {
        int PROBE_START_LINE_85 = 85;
		com.fasterxml.jackson.databind.type.TypeFactory p_tf_3986_line_85 = tf;
		int PROBE_END_LINE_85 = 85;
		_typeFactory = p_tf_3986_line_85;
        int PROBE_START_LINE_86 = 86;
		com.fasterxml.jackson.databind.type.TypeBindings p_parent_3987_line_86 = parent;
		int PROBE_END_LINE_86 = 86;
		_parentBindings = p_parent_3987_line_86;
        int PROBE_START_LINE_87 = 87;
		Class<?> p_cc_3988_line_87 = cc;
		int PROBE_END_LINE_87 = 87;
		_contextClass = p_cc_3988_line_87;
        int PROBE_START_LINE_88 = 88;
		com.fasterxml.jackson.databind.JavaType p_type_3989_line_88 = type;
		int PROBE_END_LINE_88 = 88;
		_contextType = p_type_3989_line_88;
    }

    /*
    /**********************************************************
    /* Pass-through type resolution methods
    /**********************************************************
     */

    public JavaType resolveType(Class<?> cls) {
        return _typeFactory._constructType(cls, this);
    }

    public JavaType resolveType(Type type) {
        int PROBE_START_LINE_102 = 102;
		com.fasterxml.jackson.databind.type.TypeFactory f__type_factory_3990_line_102 = _typeFactory;
		java.lang.reflect.Type p_type_3995_line_102 = type;
		com.fasterxml.jackson.databind.JavaType type_bindings_1_expr11_line_102 = f__type_factory_3990_line_102
				._constructType(p_type_3995_line_102, this);
		int PROBE_END_LINE_102 = 102;
		return type_bindings_1_expr11_line_102;
    }
    
    /*
    /**********************************************************
    /* Accesors
    /**********************************************************
     */

    public int getBindingCount() {
        if (_bindings == null) {
            _resolve();
        }
        return _bindings.size();
    }

    @Deprecated // since 2.6, remove from 2.7
    public JavaType findType(String name) {
        return findType(name, true);
    }
    
    public JavaType findType(String name, boolean mustFind)
    {
        int PROBE_START_LINE_125 = 127;
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_125 = _bindings;
		boolean type_bindings_1_expr13_line_125 = f__bindings_3999_line_125 == null;
		int PROBE_END_LINE_125 = 127;
		if (type_bindings_1_expr13_line_125) {
            _resolve();
        }
        int PROBE_START_LINE_128 = 128;
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_128 = _bindings;
		String p_name_3997_line_128 = name;
		JavaType type_bindings_1_expr14_line_128 = f__bindings_3999_line_128.get(p_name_3997_line_128);
		int PROBE_END_LINE_128 = 128;
		JavaType t = type_bindings_1_expr14_line_128;
        int PROBE_START_LINE_129 = 131;
		com.fasterxml.jackson.databind.JavaType v_t_4000_line_129 = t;
		boolean type_bindings_1_expr15_line_129 = v_t_4000_line_129 != null;
		int PROBE_END_LINE_129 = 131;
		if (type_bindings_1_expr15_line_129) {
            int PROBE_START_LINE_130 = 130;
			com.fasterxml.jackson.databind.JavaType v_t_4000_line_130 = t;
			int PROBE_END_LINE_130 = 130;
			return v_t_4000_line_130;
        }
        if (_placeholders != null && _placeholders.contains(name)) {
            return UNBOUND;
        }
        if (_parentBindings != null) {
            return _parentBindings.findType(name);
        }
        // nothing found, so...
        // Should we throw an exception or just return null?
        
        /* [JACKSON-499] 18-Feb-2011, tatu: There are some tricky type bindings within
         *   java.util, such as HashMap$KeySet; so let's punt the problem
         *   (honestly not sure what to do -- they are unbound for good, I think)
         */
        if (_contextClass != null) {
            Class<?> enclosing = _contextClass.getEnclosingClass();
            if (enclosing != null) {
                // [JACKSON-572]: Actually, let's skip this for all non-static inner classes
                //   (which will also cover 'java.util' type cases...
                if (!Modifier.isStatic(_contextClass.getModifiers())) {
                    return UNBOUND;
                }

                // ... so this piece of code should not be needed any more
                /*
                Package pkg = enclosing.getPackage();
                if (pkg != null) {
                    // as per [JACKSON-533], also include "java.util.concurrent":
                    if (pkg.getName().startsWith("java.util")) {
                        return UNBOUND;
                    }
                }
                */
            }
        }

        if (!mustFind) {
            return null;
        }
        
        String className;
        if (_contextClass != null) {
            className = _contextClass.getName();
        } else if (_contextType != null) {
            className = _contextType.toString();
        } else {
            className = "UNKNOWN";
        }
        throw new IllegalArgumentException("Type variable '"+name
                +"' can not be resolved (with context of class "+className+")");
        //t = UNBOUND;                
    }

    public void addBinding(String name, JavaType type)
    {
        int PROBE_START_LINE_187 = 189;
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_187 = _bindings;
		boolean type_bindings_1_expr17_line_187 = f__bindings_3999_line_187 == null;
		boolean type_bindings_1_expr18_line_187 = false;
		if (!type_bindings_1_expr17_line_187) {
			Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_187_v1 = _bindings;
			int type_bindings_1_expr19_line_187 = f__bindings_3999_line_187_v1.size();
			type_bindings_1_expr18_line_187 = type_bindings_1_expr19_line_187 == 0;
		}
		boolean type_bindings_1_expr16_line_187 = type_bindings_1_expr17_line_187 || type_bindings_1_expr18_line_187;
		int PROBE_END_LINE_187 = 189;
		// note: emptyMap() is unmodifiable, hence second check is needed:
        if (type_bindings_1_expr16_line_187) {
            _bindings = new LinkedHashMap<String,JavaType>();
        }
        int PROBE_START_LINE_190 = 190;
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_190 = _bindings;
		String p_name_4001_line_190 = name;
		com.fasterxml.jackson.databind.JavaType p_type_4002_line_190 = type;
		int PROBE_END_LINE_190 = 190;
		f__bindings_3999_line_190.put(p_name_4001_line_190, p_type_4002_line_190);
    }

    public JavaType[] typesAsArray()
    {
        int PROBE_START_LINE_195 = 197;
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_195 = _bindings;
		boolean type_bindings_1_expr23_line_195 = f__bindings_3999_line_195 == null;
		int PROBE_END_LINE_195 = 197;
		if (type_bindings_1_expr23_line_195) {
            _resolve();
        }
        int PROBE_START_LINE_198 = 200;
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_198 = _bindings;
		int type_bindings_1_expr25_line_198 = f__bindings_3999_line_198.size();
		boolean type_bindings_1_expr24_line_198 = type_bindings_1_expr25_line_198 == 0;
		int PROBE_END_LINE_198 = 200;
		if (type_bindings_1_expr24_line_198) {
            return NO_TYPES;
        }
        int PROBE_START_LINE_201 = 201;
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_201 = _bindings;
		Collection<com.fasterxml.jackson.databind.JavaType> type_bindings_1_expr28_line_201 = f__bindings_3999_line_201
				.values();
		Map<String, com.fasterxml.jackson.databind.JavaType> f__bindings_3999_line_201_v1 = _bindings;
		int type_bindings_1_expr29_line_201 = f__bindings_3999_line_201_v1.size();
		com.fasterxml.jackson.databind.JavaType[] type_bindings_1_expr26_line_201 = type_bindings_1_expr28_line_201
				.toArray(new JavaType[type_bindings_1_expr29_line_201]);
		int PROBE_END_LINE_201 = 201;
		return type_bindings_1_expr26_line_201;
    }
    
    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */
    
    protected void _resolve()
    {
        _resolveBindings(_contextClass);

        // finally: may have root level type info too
        if (_contextType != null) {
            int count = _contextType.containedTypeCount();
            if (count > 0) {
                for (int i = 0; i < count; ++i) {
                    String name = _contextType.containedTypeName(i);
                    JavaType type = _contextType.containedType(i);
                    addBinding(name, type);
                }
            }
        }

        // nothing bound? mark with empty map to prevent further calls
        if (_bindings == null) {
            _bindings = Collections.emptyMap();
        }
    }

    public void _addPlaceholder(String name) {
        if (_placeholders == null) {
            _placeholders = new HashSet<String>();
        }
        _placeholders.add(name);
    }

    protected void _resolveBindings(Type t)
    {
        if (t == null) return;
        
        Class<?> raw;
        if (t instanceof ParameterizedType) {
            ParameterizedType pt = (ParameterizedType) t;
            Type[] args = pt.getActualTypeArguments();
            if (args  != null && args.length > 0) {
                Class<?> rawType = (Class<?>) pt.getRawType();    
                TypeVariable<?>[] vars = rawType.getTypeParameters();
                if (vars.length != args.length) {
                    throw new IllegalArgumentException("Strange parametrized type (in class "+rawType.getName()+"): number of type arguments != number of type parameters ("+args.length+" vs "+vars.length+")");
                }
                for (int i = 0, len = args.length; i < len; ++i) {
                    TypeVariable<?> var = vars[i];
                    String name = var.getName();
                    if (_bindings == null) {
                        _bindings = new LinkedHashMap<String,JavaType>();
                    } else {
                        /* 24-Mar-2010, tatu: Better ensure that we do not overwrite something
                         *  collected earlier (since we descend towards super-classes):
                         */
                        if (_bindings.containsKey(name)) continue;
                    }
                    // first: add a placeholder to prevent infinite loops
                    _addPlaceholder(name);
                    // then resolve type
                    _bindings.put(name, _typeFactory._constructType(args[i], this));
                }
            }
            raw = (Class<?>)pt.getRawType();
        } else if (t instanceof Class<?>) {
            raw = (Class<?>) t;
            /* [JACKSON-677]: If this is an inner class then the generics are defined on the 
             * enclosing class so we have to check there as well.  We don't
             * need to call getEnclosingClass since anonymous classes declare 
             * generics
             */
            Class<?> decl = raw.getDeclaringClass();
            /* 08-Feb-2013, tatu: Except that if context is also super-class, we must
             *   skip it; context will be checked anyway, and we'd get StackOverflow if
             *   we went there.
             */
            if (decl != null && !decl.isAssignableFrom(raw)) {
                _resolveBindings(raw.getDeclaringClass());
            }

            /* 24-Mar-2010, tatu: Can not have true generics definitions, but can
             *   have lower bounds ("<T extends BeanBase>") in declaration itself
             */
            TypeVariable<?>[] vars = raw.getTypeParameters();
            if (vars != null && vars.length > 0) {
                JavaType[] typeParams = null;

                if (_contextType != null && raw.isAssignableFrom(_contextType.getRawClass())) {
                    typeParams = _typeFactory.findTypeParameters(_contextType, raw);
                }

                for (int i = 0; i < vars.length; i++) {
                    TypeVariable<?> var = vars[i];

                    String name = var.getName();
                    Type varType = var.getBounds()[0];
                    if (varType != null) {
                        if (_bindings == null) {
                            _bindings = new LinkedHashMap<String,JavaType>();
                        } else { // and no overwriting...
                            if (_bindings.containsKey(name)) continue;
                        }
                        _addPlaceholder(name); // to prevent infinite loops

                        if (typeParams != null && typeParams.length > i) {
                            _bindings.put(name, typeParams[i]);
                        } else {
                            _bindings.put(name, _typeFactory._constructType(varType, this));
                        }
                    }
                }
            }
        } else { // probably can't be any of these... so let's skip for now
            //if (type instanceof GenericArrayType) {
            //if (type instanceof TypeVariable<?>) {
            // if (type instanceof WildcardType) {
            return;
        }
        // but even if it's not a parameterized type, its super types may be:
        _resolveBindings(raw.getGenericSuperclass());
        for (Type intType : raw.getGenericInterfaces()) {
            _resolveBindings(intType);
        }
    }

    @Override
    public String toString()
    {
        if (_bindings == null) {
            _resolve();
        }
        StringBuilder sb = new StringBuilder("[TypeBindings for ");
        if (_contextType != null) {
            sb.append(_contextType.toString());
        } else {
            sb.append(_contextClass.getName());
        }
        sb.append(": ").append(_bindings).append("]");
        return sb.toString();
    }
}
