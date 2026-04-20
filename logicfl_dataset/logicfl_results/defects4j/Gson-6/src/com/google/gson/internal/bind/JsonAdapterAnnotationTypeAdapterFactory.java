/*
 * Copyright (C) 2014 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.internal.ObjectConstructor;

/**
 * Given a type T, looks for the annotation {@link JsonAdapter} and uses an instance of the
 * specified class as the default type adapter.
 *
 * @since 2.3
 */
public final class JsonAdapterAnnotationTypeAdapterFactory implements TypeAdapterFactory {

  private final ConstructorConstructor constructorConstructor;

  public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
    int PROBE_START_LINE_37 = 37;
	com.google.gson.internal.ConstructorConstructor p_constructor_constructor_253_line_37 = constructorConstructor;
	int PROBE_END_LINE_37 = 37;
	this.constructorConstructor = p_constructor_constructor_253_line_37;
  }

  @SuppressWarnings("unchecked")
  @Override
  public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> targetType) {
    JsonAdapter annotation = targetType.getRawType().getAnnotation(JsonAdapter.class);
    if (annotation == null) {
      return null;
    }
    int PROBE_START_LINE_47 = 47;
	com.google.gson.internal.ConstructorConstructor f_constructor_constructor_254_line_47 = constructorConstructor;
	com.google.gson.Gson p_gson_255_line_47 = gson;
	TypeToken<T> p_target_type_256_line_47 = targetType;
	com.google.gson.annotations.JsonAdapter v_annotation_257_line_47 = annotation;
	TypeAdapter<?> json_adapter_annotation_type_adapter_factory_1_expr5_line_47 = getTypeAdapter(
			f_constructor_constructor_254_line_47, p_gson_255_line_47, p_target_type_256_line_47,
			v_annotation_257_line_47);
	int PROBE_END_LINE_47 = 47;
	return (TypeAdapter<T>) json_adapter_annotation_type_adapter_factory_1_expr5_line_47;
  }

  @SuppressWarnings("unchecked") // Casts guarded by conditionals.
  static TypeAdapter<?> getTypeAdapter(ConstructorConstructor constructorConstructor, Gson gson,
      TypeToken<?> fieldType, JsonAdapter annotation) {
    int PROBE_START_LINE_53 = 53;
		com.google.gson.annotations.JsonAdapter p_annotation_261_line_53 = annotation;
		Class<?> json_adapter_annotation_type_adapter_factory_1_expr6_line_53 = p_annotation_261_line_53.value();
		int PROBE_END_LINE_53 = 53;
	Class<?> value = json_adapter_annotation_type_adapter_factory_1_expr6_line_53;
    TypeAdapter<?> typeAdapter = null;
    int PROBE_START_LINE_55 = 66;
	Class<?> v_value_262_line_55 = value;
	boolean json_adapter_annotation_type_adapter_factory_1_expr7_line_55 = TypeAdapter.class
			.isAssignableFrom(v_value_262_line_55);
	int PROBE_END_LINE_55 = 66;
	if (json_adapter_annotation_type_adapter_factory_1_expr7_line_55) {
      Class<TypeAdapter<?>> typeAdapterClass = (Class<TypeAdapter<?>>) value;
      typeAdapter = constructorConstructor.get(TypeToken.get(typeAdapterClass)).construct();
    } else {
		int PROBE_START_LINE_58 = 66;
		Class<?> v_value_262_line_58 = value;
		boolean json_adapter_annotation_type_adapter_factory_1_expr9_line_58 = TypeAdapterFactory.class
				.isAssignableFrom(v_value_262_line_58);
		int PROBE_END_LINE_58 = 66;
		if (json_adapter_annotation_type_adapter_factory_1_expr9_line_58) {
			int PROBE_START_LINE_59 = 59;
			Class<?> v_value_262_line_59 = value;
			int PROBE_END_LINE_59 = 59;
			Class<TypeAdapterFactory> typeAdapterFactory = (Class<TypeAdapterFactory>) v_value_262_line_59;
			int PROBE_START_LINE_60 = 62;
			com.google.gson.internal.ConstructorConstructor p_constructor_constructor_258_line_60 = constructorConstructor;
			Class<com.google.gson.TypeAdapterFactory> v_type_adapter_factory_263_line_60 = typeAdapterFactory;
			TypeToken<com.google.gson.TypeAdapterFactory> json_adapter_annotation_type_adapter_factory_1_expr16_line_60 = TypeToken
					.get(v_type_adapter_factory_263_line_60);
			ObjectConstructor<com.google.gson.TypeAdapterFactory> json_adapter_annotation_type_adapter_factory_1_expr15_line_60 = p_constructor_constructor_258_line_60
					.get(json_adapter_annotation_type_adapter_factory_1_expr16_line_60);
			com.google.gson.TypeAdapterFactory json_adapter_annotation_type_adapter_factory_1_expr14_line_60 = json_adapter_annotation_type_adapter_factory_1_expr15_line_60
					.construct();
			TypeAdapter<?> json_adapter_annotation_type_adapter_factory_1_expr13_line_60 = json_adapter_annotation_type_adapter_factory_1_expr14_line_60
					.create(gson, fieldType);
			int PROBE_END_LINE_60 = 62;
			typeAdapter = json_adapter_annotation_type_adapter_factory_1_expr13_line_60;
		} else {
			throw new IllegalArgumentException(
					"@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
		}
	}
      int PROBE_START_LINE_67 = 67;
	TypeAdapter<?> v_type_adapter_264_line_67 = typeAdapter;
	TypeAdapter<?> json_adapter_annotation_type_adapter_factory_1_expr18_line_67 = v_type_adapter_264_line_67
			.nullSafe();
	int PROBE_END_LINE_67 = 67;
	typeAdapter = json_adapter_annotation_type_adapter_factory_1_expr18_line_67;
    return typeAdapter;
  }
}
