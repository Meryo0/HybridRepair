/*
 * Copyright (C) 2011 Google Inc.
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
import com.google.gson.internal.$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;

/**
 * Adapt a homogeneous collection of objects.
 */
public final class CollectionTypeAdapterFactory implements TypeAdapterFactory {
  private final ConstructorConstructor constructorConstructor;

  public CollectionTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
    int PROBE_START_LINE_40 = 40;
	com.google.gson.internal.ConstructorConstructor p_constructor_constructor_233_line_40 = constructorConstructor;
	int PROBE_END_LINE_40 = 40;
	this.constructorConstructor = p_constructor_constructor_233_line_40;
  }

  @Override
  public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
    int PROBE_START_LINE_45 = 45;
	TypeToken<T> p_type_token_236_line_45 = typeToken;
	Type collection_type_adapter_factory_1_expr4_line_45 = p_type_token_236_line_45.getType();
	int PROBE_END_LINE_45 = 45;
	Type type = collection_type_adapter_factory_1_expr4_line_45;

    int PROBE_START_LINE_47 = 47;
	TypeToken<T> p_type_token_236_line_47 = typeToken;
	Class<? super T> collection_type_adapter_factory_1_expr5_line_47 = p_type_token_236_line_47.getRawType();
	int PROBE_END_LINE_47 = 47;
	Class<? super T> rawType = collection_type_adapter_factory_1_expr5_line_47;
    int PROBE_START_LINE_48 = 50;
	Class<? super T> v_raw_type_238_line_48 = rawType;
	boolean collection_type_adapter_factory_1_expr7_line_48 = Collection.class.isAssignableFrom(v_raw_type_238_line_48);
	boolean collection_type_adapter_factory_1_expr6_line_48 = !collection_type_adapter_factory_1_expr7_line_48;
	int PROBE_END_LINE_48 = 50;
	if (collection_type_adapter_factory_1_expr6_line_48) {
      return null;
    }

    Type elementType = $Gson$Types.getCollectionElementType(type, rawType);
    TypeAdapter<?> elementTypeAdapter = gson.getAdapter(TypeToken.get(elementType));
    ObjectConstructor<T> constructor = constructorConstructor.get(typeToken);

    @SuppressWarnings({"unchecked", "rawtypes"}) // create() doesn't define a type parameter
    TypeAdapter<T> result = new Adapter(gson, elementType, elementTypeAdapter, constructor);
    return result;
  }

  private static final class Adapter<E> extends TypeAdapter<Collection<E>> {
    private final TypeAdapter<E> elementTypeAdapter;
    private final ObjectConstructor<? extends Collection<E>> constructor;

    public Adapter(Gson context, Type elementType,
        TypeAdapter<E> elementTypeAdapter,
        ObjectConstructor<? extends Collection<E>> constructor) {
      this.elementTypeAdapter =
          new TypeAdapterRuntimeTypeWrapper<E>(context, elementTypeAdapter, elementType);
      this.constructor = constructor;
    }

    @Override public Collection<E> read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }

      Collection<E> collection = constructor.construct();
      in.beginArray();
      while (in.hasNext()) {
        E instance = elementTypeAdapter.read(in);
        collection.add(instance);
      }
      in.endArray();
      return collection;
    }

    @Override public void write(JsonWriter out, Collection<E> collection) throws IOException {
      if (collection == null) {
        out.nullValue();
        return;
      }

      out.beginArray();
      for (E element : collection) {
        elementTypeAdapter.write(out, element);
      }
      out.endArray();
    }
  }
}
