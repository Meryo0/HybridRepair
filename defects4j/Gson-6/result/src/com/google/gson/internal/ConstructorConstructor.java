/*
 * Copyright (C) 2011 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.reflect.TypeToken;

/**
 * Returns a function that can construct an instance of a requested type.
 */
public final class ConstructorConstructor {
  private final Map<Type, InstanceCreator<?>> instanceCreators;

  public ConstructorConstructor(Map<Type, InstanceCreator<?>> instanceCreators) {
    int PROBE_START_LINE_52 = 52;
	Map<java.lang.reflect.Type, InstanceCreator<?>> p_instance_creators_163_line_52 = instanceCreators;
	int PROBE_END_LINE_52 = 52;
	this.instanceCreators = p_instance_creators_163_line_52;
  }

  public <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
    int PROBE_START_LINE_56 = 56;
	TypeToken<T> p_type_token_165_line_56 = typeToken;
	Type constructor_constructor_1_expr4_line_56 = p_type_token_165_line_56.getType();
	int PROBE_END_LINE_56 = 56;
	final Type type = constructor_constructor_1_expr4_line_56;
    int PROBE_START_LINE_57 = 57;
	TypeToken<T> p_type_token_165_line_57 = typeToken;
	Class<? super T> constructor_constructor_1_expr5_line_57 = p_type_token_165_line_57.getRawType();
	int PROBE_END_LINE_57 = 57;
	final Class<? super T> rawType = constructor_constructor_1_expr5_line_57;

    // first try an instance creator

    int PROBE_START_LINE_61 = 62;
	Map<java.lang.reflect.Type, InstanceCreator<?>> f_instance_creators_164_line_62 = instanceCreators;
	java.lang.reflect.Type v_type_166_line_62 = type;
	InstanceCreator<?> constructor_constructor_1_expr7_line_62 = f_instance_creators_164_line_62
			.get(v_type_166_line_62);
	int PROBE_END_LINE_61 = 62;
	@SuppressWarnings("unchecked") // types must agree
    final InstanceCreator<T> typeCreator = (InstanceCreator<T>) constructor_constructor_1_expr7_line_62;
    int PROBE_START_LINE_63 = 69;
	InstanceCreator<T> v_type_creator_168_line_63 = typeCreator;
	boolean constructor_constructor_1_expr8_line_63 = v_type_creator_168_line_63 != null;
	int PROBE_END_LINE_63 = 69;
	if (constructor_constructor_1_expr8_line_63) {
      return new ObjectConstructor<T>() {
        @Override public T construct() {
          return typeCreator.createInstance(type);
        }
      };
    }

    // Next try raw type match for instance creators
    @SuppressWarnings("unchecked") // types must agree
    final InstanceCreator<T> rawTypeCreator =
        (InstanceCreator<T>) instanceCreators.get(rawType);
    int PROBE_START_LINE_75 = 81;
	InstanceCreator<T> v_raw_type_creator_169_line_75 = rawTypeCreator;
	boolean constructor_constructor_1_expr10_line_75 = v_raw_type_creator_169_line_75 != null;
	int PROBE_END_LINE_75 = 81;
	if (constructor_constructor_1_expr10_line_75) {
      return new ObjectConstructor<T>() {
        @Override public T construct() {
          return rawTypeCreator.createInstance(type);
        }
      };
    }

    int PROBE_START_LINE_83 = 83;
	Class<? super T> v_raw_type_167_line_83 = rawType;
	ObjectConstructor<T> constructor_constructor_1_expr11_line_83 = newDefaultConstructor(v_raw_type_167_line_83);
	int PROBE_END_LINE_83 = 83;
	ObjectConstructor<T> defaultConstructor = constructor_constructor_1_expr11_line_83;
    int PROBE_START_LINE_84 = 86;
	ObjectConstructor<T> v_default_constructor_170_line_84 = defaultConstructor;
	boolean constructor_constructor_1_expr12_line_84 = v_default_constructor_170_line_84 != null;
	int PROBE_END_LINE_84 = 86;
	if (constructor_constructor_1_expr12_line_84) {
      int PROBE_START_LINE_85 = 85;
		ObjectConstructor<T> v_default_constructor_170_line_85 = defaultConstructor;
		int PROBE_END_LINE_85 = 85;
	return v_default_constructor_170_line_85;
    }

    ObjectConstructor<T> defaultImplementation = newDefaultImplementationConstructor(type, rawType);
    if (defaultImplementation != null) {
      return defaultImplementation;
    }

    // finally try unsafe
    return newUnsafeAllocator(type, rawType);
  }

  private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> rawType) {
    try {
      int PROBE_START_LINE_99 = 99;
		Class<? super T> p_raw_type_171_line_99 = rawType;
		Constructor<? super T> constructor_constructor_1_expr13_line_99 = p_raw_type_171_line_99
				.getDeclaredConstructor();
		int PROBE_END_LINE_99 = 99;
	final Constructor<? super T> constructor = constructor_constructor_1_expr13_line_99;
      int PROBE_START_LINE_100 = 102;
	Constructor<? super T> v_constructor_172_line_100 = constructor;
	boolean constructor_constructor_1_expr15_line_100 = v_constructor_172_line_100.isAccessible();
	boolean constructor_constructor_1_expr14_line_100 = !constructor_constructor_1_expr15_line_100;
	int PROBE_END_LINE_100 = 102;
	if (constructor_constructor_1_expr14_line_100) {
        int PROBE_START_LINE_101 = 101;
		Constructor<? super T> v_constructor_172_line_101 = constructor;
		int PROBE_END_LINE_101 = 101;
		v_constructor_172_line_101.setAccessible(true);
      }
      return new ObjectConstructor<T>() {
        @SuppressWarnings("unchecked") // T is the same raw type as is requested
        @Override public T construct() {
          try {
            Object[] args = null;
            int PROBE_START_LINE_108 = 108;
			Constructor<? super T> v_constructor_172_line_108 = constructor;
			Object[] v_args_173_line_108 = args;
			Object constructor_constructor_1_expr19_line_108 = v_constructor_172_line_108
					.newInstance(v_args_173_line_108);
			int PROBE_END_LINE_108 = 108;
			return (T) constructor_constructor_1_expr19_line_108;
          } catch (InstantiationException e) {
            // TODO: JsonParseException ?
            throw new RuntimeException("Failed to invoke " + constructor + " with no args", e);
          } catch (InvocationTargetException e) {
            // TODO: don't wrap if cause is unchecked!
            // TODO: JsonParseException ?
            throw new RuntimeException("Failed to invoke " + constructor + " with no args",
                e.getTargetException());
          } catch (IllegalAccessException e) {
            throw new AssertionError(e);
          }
        }
      };
    } catch (NoSuchMethodException e) {
      return null;
    }
  }

  /**
   * Constructors for common interface types like Map and List and their
   * subtypes.
   */
  @SuppressWarnings("unchecked") // use runtime checks to guarantee that 'T' is what it is
  private <T> ObjectConstructor<T> newDefaultImplementationConstructor(
      final Type type, Class<? super T> rawType) {
    if (Collection.class.isAssignableFrom(rawType)) {
      if (SortedSet.class.isAssignableFrom(rawType)) {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new TreeSet<Object>();
          }
        };
      } else if (EnumSet.class.isAssignableFrom(rawType)) {
        return new ObjectConstructor<T>() {
          @SuppressWarnings("rawtypes")
          @Override public T construct() {
            if (type instanceof ParameterizedType) {
              Type elementType = ((ParameterizedType) type).getActualTypeArguments()[0];
              if (elementType instanceof Class) {
                return (T) EnumSet.noneOf((Class)elementType);
              } else {
                throw new JsonIOException("Invalid EnumSet type: " + type.toString());
              }
            } else {
              throw new JsonIOException("Invalid EnumSet type: " + type.toString());
            }
          }
        };
      } else if (Set.class.isAssignableFrom(rawType)) {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new LinkedHashSet<Object>();
          }
        };
      } else if (Queue.class.isAssignableFrom(rawType)) {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new LinkedList<Object>();
          }
        };
      } else {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new ArrayList<Object>();
          }
        };
      }
    }

    if (Map.class.isAssignableFrom(rawType)) {
      if (ConcurrentNavigableMap.class.isAssignableFrom(rawType)) {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new ConcurrentSkipListMap<Object, Object>();
          }
        };
      } else if (ConcurrentMap.class.isAssignableFrom(rawType)) {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new ConcurrentHashMap<Object, Object>();
          }
        };
      } else if (SortedMap.class.isAssignableFrom(rawType)) {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new TreeMap<Object, Object>();
          }
        };
      } else if (type instanceof ParameterizedType && !(String.class.isAssignableFrom(
          TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType()))) {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new LinkedHashMap<Object, Object>();
          }
        };
      } else {
        return new ObjectConstructor<T>() {
          @Override public T construct() {
            return (T) new LinkedTreeMap<String, Object>();
          }
        };
      }
    }

    return null;
  }

  private <T> ObjectConstructor<T> newUnsafeAllocator(
      final Type type, final Class<? super T> rawType) {
    return new ObjectConstructor<T>() {
      private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();
      @SuppressWarnings("unchecked")
      @Override public T construct() {
        try {
          Object newInstance = unsafeAllocator.newInstance(rawType);
          return (T) newInstance;
        } catch (Exception e) {
          throw new RuntimeException(("Unable to invoke no-args constructor for " + type + ". "
              + "Register an InstanceCreator with Gson for this type may fix this problem."), e);
        }
      }
    };
  }

  @Override public String toString() {
    return instanceCreators.toString();
  }
}
