/*
 * Copyright (C) 2008 Google Inc.
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

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * This class selects which fields and types to omit. It is configurable,
 * supporting version attributes {@link Since} and {@link Until}, modifiers,
 * synthetic fields, anonymous and local classes, inner classes, and fields with
 * the {@link Expose} annotation.
 *
 * <p>This class is a type adapter factory; types that are excluded will be
 * adapted to null. It may delegate to another type adapter if only one
 * direction is excluded.
 *
 * @author Joel Leitch
 * @author Jesse Wilson
 */
public final class Excluder implements TypeAdapterFactory, Cloneable {
  private static final double IGNORE_VERSIONS = -1.0d;
  public static final Excluder DEFAULT = new Excluder();

  int PROBE_START_LINE_54 = 54;

private double f_ignore_versions_179_line_54 = IGNORE_VERSIONS;

int PROBE_END_LINE_54 = 54;

private double version = f_ignore_versions_179_line_54;
  int PROBE_START_LINE_55 = 55;

private int q_transient_36_line_55 = Modifier.TRANSIENT;
private int q_static_37_line_55 = Modifier.STATIC;
private int excluder_1_expr2_line_55 = q_transient_36_line_55 | q_static_37_line_55;

int PROBE_END_LINE_55 = 55;

private int modifiers = excluder_1_expr2_line_55;
  private boolean serializeInnerClasses = true;
  private boolean requireExpose;
  int PROBE_START_LINE_58 = 58;

private List<com.google.gson.ExclusionStrategy> excluder_1_expr3_line_58 = Collections.emptyList();

int PROBE_END_LINE_58 = 58;

private List<ExclusionStrategy> serializationStrategies = excluder_1_expr3_line_58;
  int PROBE_START_LINE_59 = 59;

private List<com.google.gson.ExclusionStrategy> excluder_1_expr4_line_59 = Collections.emptyList();

int PROBE_END_LINE_59 = 59;

private List<ExclusionStrategy> deserializationStrategies = excluder_1_expr4_line_59;

  @Override protected Excluder clone() {
    try {
      return (Excluder) super.clone();
    } catch (CloneNotSupportedException e) {
      throw new AssertionError(e);
    }
  }

  public Excluder withVersion(double ignoreVersionsAfter) {
    Excluder result = clone();
    result.version = ignoreVersionsAfter;
    return result;
  }

  public Excluder withModifiers(int... modifiers) {
    Excluder result = clone();
    result.modifiers = 0;
    for (int modifier : modifiers) {
      result.modifiers |= modifier;
    }
    return result;
  }

  public Excluder disableInnerClassSerialization() {
    Excluder result = clone();
    result.serializeInnerClasses = false;
    return result;
  }

  public Excluder excludeFieldsWithoutExposeAnnotation() {
    Excluder result = clone();
    result.requireExpose = true;
    return result;
  }

  public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy,
      boolean serialization, boolean deserialization) {
    Excluder result = clone();
    if (serialization) {
      result.serializationStrategies = new ArrayList<ExclusionStrategy>(serializationStrategies);
      result.serializationStrategies.add(exclusionStrategy);
    }
    if (deserialization) {
      result.deserializationStrategies
          = new ArrayList<ExclusionStrategy>(deserializationStrategies);
      result.deserializationStrategies.add(exclusionStrategy);
    }
    return result;
  }

  public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> type) {
    int PROBE_START_LINE_112 = 112;
	TypeToken<T> p_type_190_line_112 = type;
	Class<?> excluder_1_expr5_line_112 = p_type_190_line_112.getRawType();
	int PROBE_END_LINE_112 = 112;
	Class<?> rawType = excluder_1_expr5_line_112;
    int PROBE_START_LINE_113 = 113;
	Class<?> v_raw_type_191_line_113 = rawType;
	boolean excluder_1_expr6_line_113 = excludeClass(v_raw_type_191_line_113, true);
	int PROBE_END_LINE_113 = 113;
	final boolean skipSerialize = excluder_1_expr6_line_113;
    int PROBE_START_LINE_114 = 114;
	Class<?> v_raw_type_191_line_114 = rawType;
	boolean excluder_1_expr7_line_114 = excludeClass(v_raw_type_191_line_114, false);
	int PROBE_END_LINE_114 = 114;
	final boolean skipDeserialize = excluder_1_expr7_line_114;

    int PROBE_START_LINE_116 = 118;
	boolean v_skip_serialize_192_line_116 = skipSerialize;
	boolean excluder_1_expr9_line_116 = !v_skip_serialize_192_line_116;
	boolean excluder_1_expr10_line_116 = true;
	if (excluder_1_expr9_line_116) {
		boolean v_skip_deserialize_193_line_116 = skipDeserialize;
		excluder_1_expr10_line_116 = !v_skip_deserialize_193_line_116;
	}
	boolean excluder_1_expr8_line_116 = excluder_1_expr9_line_116 && excluder_1_expr10_line_116;
	int PROBE_END_LINE_116 = 118;
	if (excluder_1_expr8_line_116) {
      return null;
    }

    return new TypeAdapter<T>() {
      /** The delegate is lazily created because it may not be needed, and creating it may fail. */
      private TypeAdapter<T> delegate;

      @Override public T read(JsonReader in) throws IOException {
        if (skipDeserialize) {
          in.skipValue();
          return null;
        }
        return delegate().read(in);
      }

      @Override public void write(JsonWriter out, T value) throws IOException {
        if (skipSerialize) {
          out.nullValue();
          return;
        }
        delegate().write(out, value);
      }

      private TypeAdapter<T> delegate() {
        TypeAdapter<T> d = delegate;
        return d != null
            ? d
            : (delegate = gson.getDelegateAdapter(Excluder.this, type));
      }
    };
  }

  public boolean excludeField(Field field, boolean serialize) {
    if ((modifiers & field.getModifiers()) != 0) {
      return true;
    }

    if (version != Excluder.IGNORE_VERSIONS
        && !isValidVersion(field.getAnnotation(Since.class), field.getAnnotation(Until.class))) {
      return true;
    }

    if (field.isSynthetic()) {
      return true;
    }

    if (requireExpose) {
      Expose annotation = field.getAnnotation(Expose.class);
      if (annotation == null || (serialize ? !annotation.serialize() : !annotation.deserialize())) {
        return true;
      }
    }

    if (!serializeInnerClasses && isInnerClass(field.getType())) {
      return true;
    }

    if (isAnonymousOrLocal(field.getType())) {
      return true;
    }

    List<ExclusionStrategy> list = serialize ? serializationStrategies : deserializationStrategies;
    if (!list.isEmpty()) {
      FieldAttributes fieldAttributes = new FieldAttributes(field);
      for (ExclusionStrategy exclusionStrategy : list) {
        if (exclusionStrategy.shouldSkipField(fieldAttributes)) {
          return true;
        }
      }
    }

    return false;
  }

  public boolean excludeClass(Class<?> clazz, boolean serialize) {
    int PROBE_START_LINE_192 = 195;
	double f_version_178_line_192 = version;
	double q_ignore_versions_38_line_192 = Excluder.IGNORE_VERSIONS;
	boolean excluder_1_expr12_line_192 = f_version_178_line_192 != q_ignore_versions_38_line_192;
	boolean excluder_1_expr11_line_192 = excluder_1_expr12_line_192
			&& !isValidVersion(clazz.getAnnotation(Since.class), clazz.getAnnotation(Until.class));
	int PROBE_END_LINE_192 = 195;
	if (excluder_1_expr11_line_192) {
      return true;
    }

    int PROBE_START_LINE_197 = 199;
	boolean f_serialize_inner_classes_181_line_197 = serializeInnerClasses;
	boolean excluder_1_expr14_line_197 = !f_serialize_inner_classes_181_line_197;
	boolean excluder_1_expr15_line_197 = true;
	if (excluder_1_expr14_line_197) {
		Class<?> p_clazz_199_line_197 = clazz;
		excluder_1_expr15_line_197 = isInnerClass(p_clazz_199_line_197);
	}
	boolean excluder_1_expr13_line_197 = excluder_1_expr14_line_197 && excluder_1_expr15_line_197;
	int PROBE_END_LINE_197 = 199;
	if (excluder_1_expr13_line_197) {
      return true;
    }

    int PROBE_START_LINE_201 = 203;
	Class<?> p_clazz_199_line_201 = clazz;
	boolean excluder_1_expr16_line_201 = isAnonymousOrLocal(p_clazz_199_line_201);
	int PROBE_END_LINE_201 = 203;
	if (excluder_1_expr16_line_201) {
      return true;
    }

    int PROBE_START_LINE_205 = 205;
	boolean p_serialize_200_line_205 = serialize;
	List<com.google.gson.ExclusionStrategy> f_serialization_strategies_182_line_205 = null;
	List<com.google.gson.ExclusionStrategy> f_deserialization_strategies_183_line_205 = null;
	if (p_serialize_200_line_205) {
		f_serialization_strategies_182_line_205 = serializationStrategies;
	} else {
		f_deserialization_strategies_183_line_205 = deserializationStrategies;
	}
	List<ExclusionStrategy> excluder_1_expr17_line_205 = p_serialize_200_line_205
			? f_serialization_strategies_182_line_205
			: f_deserialization_strategies_183_line_205;
	int PROBE_END_LINE_205 = 205;
	List<ExclusionStrategy> list = excluder_1_expr17_line_205;
    int PROBE_START_LINE_206 = 210;
	List<com.google.gson.ExclusionStrategy> v_list_201_line_206 = list;
	int PROBE_END_LINE_206 = 210;
	for (ExclusionStrategy exclusionStrategy : v_list_201_line_206) {
      if (exclusionStrategy.shouldSkipClass(clazz)) {
        return true;
      }
    }

    return false;
  }

  private boolean isAnonymousOrLocal(Class<?> clazz) {
    int PROBE_START_LINE_216 = 217;
	Class<?> p_clazz_203_line_216 = clazz;
	boolean excluder_1_expr20_line_216 = Enum.class.isAssignableFrom(p_clazz_203_line_216);
	boolean excluder_1_expr19_line_216 = !excluder_1_expr20_line_216;
	boolean excluder_1_expr18_line_216 = excluder_1_expr19_line_216
			&& (clazz.isAnonymousClass() || clazz.isLocalClass());
	int PROBE_END_LINE_216 = 217;
	return excluder_1_expr18_line_216;
  }

  private boolean isInnerClass(Class<?> clazz) {
    return clazz.isMemberClass() && !isStatic(clazz);
  }

  private boolean isStatic(Class<?> clazz) {
    return (clazz.getModifiers() & Modifier.STATIC) != 0;
  }

  private boolean isValidVersion(Since since, Until until) {
    return isValidSince(since) && isValidUntil(until);
  }

  private boolean isValidSince(Since annotation) {
    if (annotation != null) {
      double annotationVersion = annotation.value();
      if (annotationVersion > version) {
        return false;
      }
    }
    return true;
  }

  private boolean isValidUntil(Until annotation) {
    if (annotation != null) {
      double annotationVersion = annotation.value();
      if (annotationVersion <= version) {
        return false;
      }
    }
    return true;
  }
}
