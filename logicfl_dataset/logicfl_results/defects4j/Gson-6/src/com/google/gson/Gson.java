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

package com.google.gson;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;

/**
 * This is the main class for using Gson. Gson is typically used by first constructing a
 * Gson instance and then invoking {@link #toJson(Object)} or {@link #fromJson(String, Class)}
 * methods on it. Gson instances are Thread-safe so you can reuse them freely across multiple
 * threads.
 *
 * <p>You can create a Gson instance by invoking {@code new Gson()} if the default configuration
 * is all you need. You can also use {@link GsonBuilder} to build a Gson instance with various
 * configuration options such as versioning support, pretty printing, custom
 * {@link JsonSerializer}s, {@link JsonDeserializer}s, and {@link InstanceCreator}s.</p>
 *
 * <p>Here is an example of how Gson is used for a simple Class:
 *
 * <pre>
 * Gson gson = new Gson(); // Or use new GsonBuilder().create();
 * MyType target = new MyType();
 * String json = gson.toJson(target); // serializes target to Json
 * MyType target2 = gson.fromJson(json, MyType.class); // deserializes json into target2
 * </pre></p>
 *
 * <p>If the object that your are serializing/deserializing is a {@code ParameterizedType}
 * (i.e. contains at least one type parameter and may be an array) then you must use the
 * {@link #toJson(Object, Type)} or {@link #fromJson(String, Type)} method.  Here is an
 * example for serializing and deserializing a {@code ParameterizedType}:
 *
 * <pre>
 * Type listType = new TypeToken&lt;List&lt;String&gt;&gt;() {}.getType();
 * List&lt;String&gt; target = new LinkedList&lt;String&gt;();
 * target.add("blah");
 *
 * Gson gson = new Gson();
 * String json = gson.toJson(target, listType);
 * List&lt;String&gt; target2 = gson.fromJson(json, listType);
 * </pre></p>
 *
 * <p>See the <a href="https://sites.google.com/site/gson/gson-user-guide">Gson User Guide</a>
 * for a more complete set of examples.</p>
 *
 * @see com.google.gson.reflect.TypeToken
 *
 * @author Inderjeet Singh
 * @author Joel Leitch
 * @author Jesse Wilson
 */
public final class Gson {
  static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
  static final boolean DEFAULT_LENIENT = false;
  static final boolean DEFAULT_PRETTY_PRINT = false;
  static final boolean DEFAULT_ESCAPE_HTML = true;
  static final boolean DEFAULT_SERIALIZE_NULLS = false;
  static final boolean DEFAULT_COMPLEX_MAP_KEYS = false;
  static final boolean DEFAULT_SPECIALIZE_FLOAT_VALUES = false;

  private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";

  /**
   * This thread local guards against reentrant calls to getAdapter(). In
   * certain object graphs, creating an adapter for a type may recursively
   * require an adapter for the same type! Without intervention, the recursive
   * lookup would stack overflow. We cheat by returning a proxy type adapter.
   * The proxy is wired up once the initial adapter has been created.
   */
  private final ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>> calls
      = new ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>>();

  private final Map<TypeToken<?>, TypeAdapter<?>> typeTokenCache
      = Collections.synchronizedMap(new HashMap<TypeToken<?>, TypeAdapter<?>>());

  private final List<TypeAdapterFactory> factories;
  private final ConstructorConstructor constructorConstructor;

  private final boolean serializeNulls;
  private final boolean htmlSafe;
  private final boolean generateNonExecutableJson;
  private final boolean prettyPrinting;
  private final boolean lenient;

  final JsonDeserializationContext deserializationContext = new JsonDeserializationContext() {
    @SuppressWarnings("unchecked")
    @Override public <T> T deserialize(JsonElement json, Type typeOfT) throws JsonParseException {
      return (T) fromJson(json, typeOfT);
    }
  };

  final JsonSerializationContext serializationContext = new JsonSerializationContext() {
    @Override public JsonElement serialize(Object src) {
      return toJsonTree(src);
    }
    @Override public JsonElement serialize(Object src, Type typeOfSrc) {
      return toJsonTree(src, typeOfSrc);
    }
  };

  /**
   * Constructs a Gson object with default configuration. The default configuration has the
   * following settings:
   * <ul>
   *   <li>The JSON generated by <code>toJson</code> methods is in compact representation. This
   *   means that all the unneeded white-space is removed. You can change this behavior with
   *   {@link GsonBuilder#setPrettyPrinting()}. </li>
   *   <li>The generated JSON omits all the fields that are null. Note that nulls in arrays are
   *   kept as is since an array is an ordered list. Moreover, if a field is not null, but its
   *   generated JSON is empty, the field is kept. You can configure Gson to serialize null values
   *   by setting {@link GsonBuilder#serializeNulls()}.</li>
   *   <li>Gson provides default serialization and deserialization for Enums, {@link Map},
   *   {@link java.net.URL}, {@link java.net.URI}, {@link java.util.Locale}, {@link java.util.Date},
   *   {@link java.math.BigDecimal}, and {@link java.math.BigInteger} classes. If you would prefer
   *   to change the default representation, you can do so by registering a type adapter through
   *   {@link GsonBuilder#registerTypeAdapter(Type, Object)}. </li>
   *   <li>The default Date format is same as {@link java.text.DateFormat#DEFAULT}. This format
   *   ignores the millisecond portion of the date during serialization. You can change
   *   this by invoking {@link GsonBuilder#setDateFormat(int)} or
   *   {@link GsonBuilder#setDateFormat(String)}. </li>
   *   <li>By default, Gson ignores the {@link com.google.gson.annotations.Expose} annotation.
   *   You can enable Gson to serialize/deserialize only those fields marked with this annotation
   *   through {@link GsonBuilder#excludeFieldsWithoutExposeAnnotation()}. </li>
   *   <li>By default, Gson ignores the {@link com.google.gson.annotations.Since} annotation. You
   *   can enable Gson to use this annotation through {@link GsonBuilder#setVersion(double)}.</li>
   *   <li>The default field naming policy for the output Json is same as in Java. So, a Java class
   *   field <code>versionNumber</code> will be output as <code>&quot;versionNumber&quot;</code> in
   *   Json. The same rules are applied for mapping incoming Json to the Java classes. You can
   *   change this policy through {@link GsonBuilder#setFieldNamingPolicy(FieldNamingPolicy)}.</li>
   *   <li>By default, Gson excludes <code>transient</code> or <code>static</code> fields from
   *   consideration for serialization and deserialization. You can change this behavior through
   *   {@link GsonBuilder#excludeFieldsWithModifiers(int...)}.</li>
   * </ul>
   */
  public Gson() {
    this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY,
        Collections.<Type, InstanceCreator<?>>emptyMap(), DEFAULT_SERIALIZE_NULLS,
        DEFAULT_COMPLEX_MAP_KEYS, DEFAULT_JSON_NON_EXECUTABLE, DEFAULT_ESCAPE_HTML,
        DEFAULT_PRETTY_PRINT, DEFAULT_LENIENT, DEFAULT_SPECIALIZE_FLOAT_VALUES,
        LongSerializationPolicy.DEFAULT, Collections.<TypeAdapterFactory>emptyList());
  }

  Gson(final Excluder excluder, final FieldNamingStrategy fieldNamingPolicy,
      final Map<Type, InstanceCreator<?>> instanceCreators, boolean serializeNulls,
      boolean complexMapKeySerialization, boolean generateNonExecutableGson, boolean htmlSafe,
      boolean prettyPrinting, boolean lenient, boolean serializeSpecialFloatingPointValues,
      LongSerializationPolicy longSerializationPolicy,
      List<TypeAdapterFactory> typeAdapterFactories) {
    int PROBE_START_LINE_199 = 199;
		Map<java.lang.reflect.Type, InstanceCreator<?>> p_instance_creators_36_line_199 = instanceCreators;
		int PROBE_END_LINE_199 = 199;
	this.constructorConstructor = new ConstructorConstructor(p_instance_creators_36_line_199);
    int PROBE_START_LINE_200 = 200;
	boolean p_serialize_nulls_37_line_200 = serializeNulls;
	int PROBE_END_LINE_200 = 200;
	this.serializeNulls = p_serialize_nulls_37_line_200;
    int PROBE_START_LINE_201 = 201;
	boolean p_generate_non_executable_gson_39_line_201 = generateNonExecutableGson;
	int PROBE_END_LINE_201 = 201;
	this.generateNonExecutableJson = p_generate_non_executable_gson_39_line_201;
    int PROBE_START_LINE_202 = 202;
	boolean p_html_safe_40_line_202 = htmlSafe;
	int PROBE_END_LINE_202 = 202;
	this.htmlSafe = p_html_safe_40_line_202;
    int PROBE_START_LINE_203 = 203;
	boolean p_pretty_printing_41_line_203 = prettyPrinting;
	int PROBE_END_LINE_203 = 203;
	this.prettyPrinting = p_pretty_printing_41_line_203;
    int PROBE_START_LINE_204 = 204;
	boolean p_lenient_42_line_204 = lenient;
	int PROBE_END_LINE_204 = 204;
	this.lenient = p_lenient_42_line_204;

    List<TypeAdapterFactory> factories = new ArrayList<TypeAdapterFactory>();

    int PROBE_START_LINE_209 = 209;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_209 = factories;
	com.google.gson.TypeAdapterFactory q_json_element_factory_4_line_209 = TypeAdapters.JSON_ELEMENT_FACTORY;
	int PROBE_END_LINE_209 = 209;
	// built-in type adapters that cannot be overridden
    v_factories_52_line_209.add(q_json_element_factory_4_line_209);
    int PROBE_START_LINE_210 = 210;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_210 = factories;
	com.google.gson.TypeAdapterFactory q_factory_5_line_210 = ObjectTypeAdapter.FACTORY;
	int PROBE_END_LINE_210 = 210;
	v_factories_52_line_210.add(q_factory_5_line_210);

    int PROBE_START_LINE_213 = 213;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_213 = factories;
	com.google.gson.internal.Excluder p_excluder_34_line_213 = excluder;
	int PROBE_END_LINE_213 = 213;
	// the excluder must precede all adapters that handle user-defined types
    v_factories_52_line_213.add(p_excluder_34_line_213);

    int PROBE_START_LINE_216 = 216;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_216 = factories;
	List<com.google.gson.TypeAdapterFactory> p_type_adapter_factories_45_line_216 = typeAdapterFactories;
	int PROBE_END_LINE_216 = 216;
	// user's type adapters
    v_factories_52_line_216.addAll(p_type_adapter_factories_45_line_216);

    int PROBE_START_LINE_219 = 219;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_219 = factories;
	com.google.gson.TypeAdapterFactory q_string_factory_6_line_219 = TypeAdapters.STRING_FACTORY;
	int PROBE_END_LINE_219 = 219;
	// type adapters for basic platform types
    v_factories_52_line_219.add(q_string_factory_6_line_219);
    int PROBE_START_LINE_220 = 220;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_220 = factories;
	com.google.gson.TypeAdapterFactory q_integer_factory_7_line_220 = TypeAdapters.INTEGER_FACTORY;
	int PROBE_END_LINE_220 = 220;
	v_factories_52_line_220.add(q_integer_factory_7_line_220);
    int PROBE_START_LINE_221 = 221;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_221 = factories;
	com.google.gson.TypeAdapterFactory q_boolean_factory_8_line_221 = TypeAdapters.BOOLEAN_FACTORY;
	int PROBE_END_LINE_221 = 221;
	v_factories_52_line_221.add(q_boolean_factory_8_line_221);
    int PROBE_START_LINE_222 = 222;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_222 = factories;
	com.google.gson.TypeAdapterFactory q_byte_factory_9_line_222 = TypeAdapters.BYTE_FACTORY;
	int PROBE_END_LINE_222 = 222;
	v_factories_52_line_222.add(q_byte_factory_9_line_222);
    int PROBE_START_LINE_223 = 223;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_223 = factories;
	com.google.gson.TypeAdapterFactory q_short_factory_10_line_223 = TypeAdapters.SHORT_FACTORY;
	int PROBE_END_LINE_223 = 223;
	v_factories_52_line_223.add(q_short_factory_10_line_223);
    int PROBE_START_LINE_224 = 224;
	com.google.gson.LongSerializationPolicy p_long_serialization_policy_44_line_224 = longSerializationPolicy;
	TypeAdapter<Number> gson_1_expr37_line_224 = longAdapter(p_long_serialization_policy_44_line_224);
	int PROBE_END_LINE_224 = 224;
	TypeAdapter<Number> longAdapter = gson_1_expr37_line_224;
    int PROBE_START_LINE_225 = 225;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_225 = factories;
	TypeAdapter<Number> v_long_adapter_53_line_225 = longAdapter;
	com.google.gson.TypeAdapterFactory gson_1_expr39_line_225 = TypeAdapters.newFactory(long.class, Long.class,
			v_long_adapter_53_line_225);
	int PROBE_END_LINE_225 = 225;
	v_factories_52_line_225.add(gson_1_expr39_line_225);
    int PROBE_START_LINE_226 = 227;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_226 = factories;
	com.google.gson.TypeAdapterFactory gson_1_expr43_line_226 = TypeAdapters.newFactory(double.class, Double.class,
			doubleAdapter(serializeSpecialFloatingPointValues));
	int PROBE_END_LINE_226 = 227;
	v_factories_52_line_226.add(gson_1_expr43_line_226);
    int PROBE_START_LINE_228 = 229;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_228 = factories;
	com.google.gson.TypeAdapterFactory gson_1_expr48_line_228 = TypeAdapters.newFactory(float.class, Float.class,
			floatAdapter(serializeSpecialFloatingPointValues));
	int PROBE_END_LINE_228 = 229;
	v_factories_52_line_228.add(gson_1_expr48_line_228);
    int PROBE_START_LINE_230 = 230;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_230 = factories;
	com.google.gson.TypeAdapterFactory q_number_factory_11_line_230 = TypeAdapters.NUMBER_FACTORY;
	int PROBE_END_LINE_230 = 230;
	v_factories_52_line_230.add(q_number_factory_11_line_230);
    int PROBE_START_LINE_231 = 231;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_231 = factories;
	com.google.gson.TypeAdapterFactory q_atomic_integer_factory_12_line_231 = TypeAdapters.ATOMIC_INTEGER_FACTORY;
	int PROBE_END_LINE_231 = 231;
	v_factories_52_line_231.add(q_atomic_integer_factory_12_line_231);
    int PROBE_START_LINE_232 = 232;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_232 = factories;
	com.google.gson.TypeAdapterFactory q_atomic_boolean_factory_13_line_232 = TypeAdapters.ATOMIC_BOOLEAN_FACTORY;
	int PROBE_END_LINE_232 = 232;
	v_factories_52_line_232.add(q_atomic_boolean_factory_13_line_232);
    int PROBE_START_LINE_233 = 233;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_233 = factories;
	TypeAdapter<Number> v_long_adapter_53_line_233 = longAdapter;
	TypeAdapter<java.util.concurrent.atomic.AtomicLong> gson_1_expr58_line_233 = atomicLongAdapter(
			v_long_adapter_53_line_233);
	com.google.gson.TypeAdapterFactory gson_1_expr56_line_233 = TypeAdapters.newFactory(AtomicLong.class,
			gson_1_expr58_line_233);
	int PROBE_END_LINE_233 = 233;
	v_factories_52_line_233.add(gson_1_expr56_line_233);
    int PROBE_START_LINE_234 = 234;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_234 = factories;
	TypeAdapter<Number> v_long_adapter_53_line_234 = longAdapter;
	TypeAdapter<java.util.concurrent.atomic.AtomicLongArray> gson_1_expr62_line_234 = atomicLongArrayAdapter(
			v_long_adapter_53_line_234);
	com.google.gson.TypeAdapterFactory gson_1_expr60_line_234 = TypeAdapters.newFactory(AtomicLongArray.class,
			gson_1_expr62_line_234);
	int PROBE_END_LINE_234 = 234;
	v_factories_52_line_234.add(gson_1_expr60_line_234);
    int PROBE_START_LINE_235 = 235;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_235 = factories;
	com.google.gson.TypeAdapterFactory q_atomic_integer_array_factory_14_line_235 = TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY;
	int PROBE_END_LINE_235 = 235;
	v_factories_52_line_235.add(q_atomic_integer_array_factory_14_line_235);
    int PROBE_START_LINE_236 = 236;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_236 = factories;
	com.google.gson.TypeAdapterFactory q_character_factory_15_line_236 = TypeAdapters.CHARACTER_FACTORY;
	int PROBE_END_LINE_236 = 236;
	v_factories_52_line_236.add(q_character_factory_15_line_236);
    int PROBE_START_LINE_237 = 237;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_237 = factories;
	com.google.gson.TypeAdapterFactory q_string_builder_factory_16_line_237 = TypeAdapters.STRING_BUILDER_FACTORY;
	int PROBE_END_LINE_237 = 237;
	v_factories_52_line_237.add(q_string_builder_factory_16_line_237);
    int PROBE_START_LINE_238 = 238;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_238 = factories;
	com.google.gson.TypeAdapterFactory q_string_buffer_factory_17_line_238 = TypeAdapters.STRING_BUFFER_FACTORY;
	int PROBE_END_LINE_238 = 238;
	v_factories_52_line_238.add(q_string_buffer_factory_17_line_238);
    int PROBE_START_LINE_239 = 239;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_239 = factories;
	TypeAdapter<java.math.BigDecimal> q_big_decimal_18_line_239 = TypeAdapters.BIG_DECIMAL;
	com.google.gson.TypeAdapterFactory gson_1_expr68_line_239 = TypeAdapters.newFactory(BigDecimal.class,
			q_big_decimal_18_line_239);
	int PROBE_END_LINE_239 = 239;
	v_factories_52_line_239.add(gson_1_expr68_line_239);
    int PROBE_START_LINE_240 = 240;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_240 = factories;
	TypeAdapter<java.math.BigInteger> q_big_integer_19_line_240 = TypeAdapters.BIG_INTEGER;
	com.google.gson.TypeAdapterFactory gson_1_expr71_line_240 = TypeAdapters.newFactory(BigInteger.class,
			q_big_integer_19_line_240);
	int PROBE_END_LINE_240 = 240;
	v_factories_52_line_240.add(gson_1_expr71_line_240);
    int PROBE_START_LINE_241 = 241;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_241 = factories;
	com.google.gson.TypeAdapterFactory q_url_factory_20_line_241 = TypeAdapters.URL_FACTORY;
	int PROBE_END_LINE_241 = 241;
	v_factories_52_line_241.add(q_url_factory_20_line_241);
    int PROBE_START_LINE_242 = 242;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_242 = factories;
	com.google.gson.TypeAdapterFactory q_uri_factory_21_line_242 = TypeAdapters.URI_FACTORY;
	int PROBE_END_LINE_242 = 242;
	v_factories_52_line_242.add(q_uri_factory_21_line_242);
    int PROBE_START_LINE_243 = 243;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_243 = factories;
	com.google.gson.TypeAdapterFactory q_uuid_factory_22_line_243 = TypeAdapters.UUID_FACTORY;
	int PROBE_END_LINE_243 = 243;
	v_factories_52_line_243.add(q_uuid_factory_22_line_243);
    int PROBE_START_LINE_244 = 244;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_244 = factories;
	com.google.gson.TypeAdapterFactory q_currency_factory_23_line_244 = TypeAdapters.CURRENCY_FACTORY;
	int PROBE_END_LINE_244 = 244;
	v_factories_52_line_244.add(q_currency_factory_23_line_244);
    int PROBE_START_LINE_245 = 245;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_245 = factories;
	com.google.gson.TypeAdapterFactory q_locale_factory_24_line_245 = TypeAdapters.LOCALE_FACTORY;
	int PROBE_END_LINE_245 = 245;
	v_factories_52_line_245.add(q_locale_factory_24_line_245);
    int PROBE_START_LINE_246 = 246;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_246 = factories;
	com.google.gson.TypeAdapterFactory q_inet_address_factory_25_line_246 = TypeAdapters.INET_ADDRESS_FACTORY;
	int PROBE_END_LINE_246 = 246;
	v_factories_52_line_246.add(q_inet_address_factory_25_line_246);
    int PROBE_START_LINE_247 = 247;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_247 = factories;
	com.google.gson.TypeAdapterFactory q_bit_set_factory_26_line_247 = TypeAdapters.BIT_SET_FACTORY;
	int PROBE_END_LINE_247 = 247;
	v_factories_52_line_247.add(q_bit_set_factory_26_line_247);
    int PROBE_START_LINE_248 = 248;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_248 = factories;
	com.google.gson.TypeAdapterFactory q_factory_27_line_248 = DateTypeAdapter.FACTORY;
	int PROBE_END_LINE_248 = 248;
	v_factories_52_line_248.add(q_factory_27_line_248);
    int PROBE_START_LINE_249 = 249;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_249 = factories;
	com.google.gson.TypeAdapterFactory q_calendar_factory_28_line_249 = TypeAdapters.CALENDAR_FACTORY;
	int PROBE_END_LINE_249 = 249;
	v_factories_52_line_249.add(q_calendar_factory_28_line_249);
    int PROBE_START_LINE_250 = 250;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_250 = factories;
	com.google.gson.TypeAdapterFactory q_factory_29_line_250 = TimeTypeAdapter.FACTORY;
	int PROBE_END_LINE_250 = 250;
	v_factories_52_line_250.add(q_factory_29_line_250);
    int PROBE_START_LINE_251 = 251;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_251 = factories;
	com.google.gson.TypeAdapterFactory q_factory_30_line_251 = SqlDateTypeAdapter.FACTORY;
	int PROBE_END_LINE_251 = 251;
	v_factories_52_line_251.add(q_factory_30_line_251);
    int PROBE_START_LINE_252 = 252;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_252 = factories;
	com.google.gson.TypeAdapterFactory q_timestamp_factory_31_line_252 = TypeAdapters.TIMESTAMP_FACTORY;
	int PROBE_END_LINE_252 = 252;
	v_factories_52_line_252.add(q_timestamp_factory_31_line_252);
    int PROBE_START_LINE_253 = 253;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_253 = factories;
	com.google.gson.TypeAdapterFactory q_factory_32_line_253 = ArrayTypeAdapter.FACTORY;
	int PROBE_END_LINE_253 = 253;
	v_factories_52_line_253.add(q_factory_32_line_253);
    int PROBE_START_LINE_254 = 254;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_254 = factories;
	com.google.gson.TypeAdapterFactory q_class_factory_33_line_254 = TypeAdapters.CLASS_FACTORY;
	int PROBE_END_LINE_254 = 254;
	v_factories_52_line_254.add(q_class_factory_33_line_254);

    int PROBE_START_LINE_257 = 257;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_257 = factories;
	com.google.gson.internal.ConstructorConstructor f_constructor_constructor_46_line_257 = constructorConstructor;
	int PROBE_END_LINE_257 = 257;
	// type adapters for composite and user-defined types
    v_factories_52_line_257.add(new CollectionTypeAdapterFactory(f_constructor_constructor_46_line_257));
    int PROBE_START_LINE_258 = 258;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_258 = factories;
	com.google.gson.internal.ConstructorConstructor f_constructor_constructor_46_line_258 = constructorConstructor;
	boolean p_complex_map_key_serialization_38_line_258 = complexMapKeySerialization;
	int PROBE_END_LINE_258 = 258;
	v_factories_52_line_258.add(new MapTypeAdapterFactory(f_constructor_constructor_46_line_258, p_complex_map_key_serialization_38_line_258));
    int PROBE_START_LINE_259 = 259;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_259 = factories;
	com.google.gson.internal.ConstructorConstructor f_constructor_constructor_46_line_259 = constructorConstructor;
	int PROBE_END_LINE_259 = 259;
	v_factories_52_line_259.add(new JsonAdapterAnnotationTypeAdapterFactory(f_constructor_constructor_46_line_259));
    int PROBE_START_LINE_260 = 260;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_260 = factories;
	com.google.gson.TypeAdapterFactory q_enum_factory_34_line_260 = TypeAdapters.ENUM_FACTORY;
	int PROBE_END_LINE_260 = 260;
	v_factories_52_line_260.add(q_enum_factory_34_line_260);
    int PROBE_START_LINE_261 = 262;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_261 = factories;
	int PROBE_END_LINE_261 = 262;
	v_factories_52_line_261.add(new ReflectiveTypeAdapterFactory(
        constructorConstructor, fieldNamingPolicy, excluder));

    int PROBE_START_LINE_264 = 264;
	List<com.google.gson.TypeAdapterFactory> v_factories_52_line_264 = factories;
	List<com.google.gson.TypeAdapterFactory> gson_1_expr98_line_264 = Collections
			.unmodifiableList(v_factories_52_line_264);
	int PROBE_END_LINE_264 = 264;
	this.factories = gson_1_expr98_line_264;
  }

  private TypeAdapter<Number> doubleAdapter(boolean serializeSpecialFloatingPointValues) {
    int PROBE_START_LINE_268 = 270;
	boolean p_serialize_special_floating_point_values_55_line_268 = serializeSpecialFloatingPointValues;
	int PROBE_END_LINE_268 = 270;
	if (p_serialize_special_floating_point_values_55_line_268) {
      return TypeAdapters.DOUBLE;
    }
    return new TypeAdapter<Number>() {
      @Override public Double read(JsonReader in) throws IOException {
        if (in.peek() == JsonToken.NULL) {
          in.nextNull();
          return null;
        }
        return in.nextDouble();
      }
      @Override public void write(JsonWriter out, Number value) throws IOException {
        if (value == null) {
          out.nullValue();
          return;
        }
        double doubleValue = value.doubleValue();
        checkValidFloatingPoint(doubleValue);
        out.value(value);
      }
    };
  }

  private TypeAdapter<Number> floatAdapter(boolean serializeSpecialFloatingPointValues) {
    int PROBE_START_LINE_292 = 294;
	boolean p_serialize_special_floating_point_values_59_line_292 = serializeSpecialFloatingPointValues;
	int PROBE_END_LINE_292 = 294;
	if (p_serialize_special_floating_point_values_59_line_292) {
      return TypeAdapters.FLOAT;
    }
    return new TypeAdapter<Number>() {
      @Override public Float read(JsonReader in) throws IOException {
        if (in.peek() == JsonToken.NULL) {
          in.nextNull();
          return null;
        }
        return (float) in.nextDouble();
      }
      @Override public void write(JsonWriter out, Number value) throws IOException {
        if (value == null) {
          out.nullValue();
          return;
        }
        float floatValue = value.floatValue();
        checkValidFloatingPoint(floatValue);
        out.value(value);
      }
    };
  }

  static void checkValidFloatingPoint(double value) {
    if (Double.isNaN(value) || Double.isInfinite(value)) {
      throw new IllegalArgumentException(value
          + " is not a valid double value as per JSON specification. To override this"
          + " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }
  }

  private static TypeAdapter<Number> longAdapter(LongSerializationPolicy longSerializationPolicy) {
    int PROBE_START_LINE_324 = 326;
	com.google.gson.LongSerializationPolicy p_long_serialization_policy_64_line_324 = longSerializationPolicy;
	com.google.gson.LongSerializationPolicy q_default_35_line_324 = LongSerializationPolicy.DEFAULT;
	boolean gson_1_expr102_line_324 = p_long_serialization_policy_64_line_324 == q_default_35_line_324;
	int PROBE_END_LINE_324 = 326;
	if (gson_1_expr102_line_324) {
      int PROBE_START_LINE_325 = 325;
		TypeAdapter<Number> q_long_35_line_325 = TypeAdapters.LONG;
		int PROBE_END_LINE_325 = 325;
	return q_long_35_line_325;
    }
    return new TypeAdapter<Number>() {
      @Override public Number read(JsonReader in) throws IOException {
        if (in.peek() == JsonToken.NULL) {
          in.nextNull();
          return null;
        }
        return in.nextLong();
      }
      @Override public void write(JsonWriter out, Number value) throws IOException {
        if (value == null) {
          out.nullValue();
          return;
        }
        out.value(value.toString());
      }
    };
  }

  private static TypeAdapter<AtomicLong> atomicLongAdapter(final TypeAdapter<Number> longAdapter) {
    int PROBE_START_LINE_346 = 354;
	TypeAdapter<java.util.concurrent.atomic.AtomicLong> gson_1_expr103_line_346 = new TypeAdapter<AtomicLong>() {
		@Override
		public void write(JsonWriter out, AtomicLong value) throws IOException {
			longAdapter.write(out, value.get());
		}
		@Override
		public AtomicLong read(JsonReader in) throws IOException {
			Number value = longAdapter.read(in);
			return new AtomicLong(value.longValue());
		}
	}.nullSafe();
	int PROBE_END_LINE_346 = 354;
	return gson_1_expr103_line_346;
  }

  private static TypeAdapter<AtomicLongArray> atomicLongArrayAdapter(final TypeAdapter<Number> longAdapter) {
    int PROBE_START_LINE_358 = 381;
	TypeAdapter<java.util.concurrent.atomic.AtomicLongArray> gson_1_expr105_line_358 = new TypeAdapter<AtomicLongArray>() {
		@Override
		public void write(JsonWriter out, AtomicLongArray value) throws IOException {
			out.beginArray();
			for (int i = 0, length = value.length(); i < length; i++) {
				longAdapter.write(out, value.get(i));
			}
			out.endArray();
		}
		@Override
		public AtomicLongArray read(JsonReader in) throws IOException {
			List<Long> list = new ArrayList<Long>();
			in.beginArray();
			while (in.hasNext()) {
				long value = longAdapter.read(in).longValue();
				list.add(value);
			}
			in.endArray();
			int length = list.size();
			AtomicLongArray array = new AtomicLongArray(length);
			for (int i = 0; i < length; ++i) {
				array.set(i, list.get(i));
			}
			return array;
		}
	}.nullSafe();
	int PROBE_END_LINE_358 = 381;
	return gson_1_expr105_line_358;
  }

  /**
   * Returns the type adapter for {@code} type.
   *
   * @throws IllegalArgumentException if this GSON cannot serialize and
   *     deserialize {@code type}.
   */
  @SuppressWarnings("unchecked")
  public <T> TypeAdapter<T> getAdapter(TypeToken<T> type) {
    int PROBE_START_LINE_392 = 392;
	Map<TypeToken<?>, TypeAdapter<?>> f_type_token_cache_18_line_392 = typeTokenCache;
	TypeToken<T> p_type_76_line_392 = type;
	TypeAdapter<?> gson_1_expr107_line_392 = f_type_token_cache_18_line_392.get(p_type_76_line_392);
	int PROBE_END_LINE_392 = 392;
	TypeAdapter<?> cached = gson_1_expr107_line_392;
    int PROBE_START_LINE_393 = 395;
	TypeAdapter<?> v_cached_77_line_393 = cached;
	boolean gson_1_expr108_line_393 = v_cached_77_line_393 != null;
	int PROBE_END_LINE_393 = 395;
	if (gson_1_expr108_line_393) {
      return (TypeAdapter<T>) cached;
    }

    int PROBE_START_LINE_397 = 397;
	ThreadLocal<Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>>> f_calls_17_line_397 = calls;
	Map<TypeToken<?>, FutureTypeAdapter<?>> gson_1_expr109_line_397 = f_calls_17_line_397.get();
	int PROBE_END_LINE_397 = 397;
	Map<TypeToken<?>, FutureTypeAdapter<?>> threadCalls = gson_1_expr109_line_397;
    boolean requiresThreadLocalCleanup = false;
    int PROBE_START_LINE_399 = 403;
	Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>> v_thread_calls_78_line_399 = threadCalls;
	boolean gson_1_expr110_line_399 = v_thread_calls_78_line_399 == null;
	int PROBE_END_LINE_399 = 403;
	if (gson_1_expr110_line_399) {
      threadCalls = new HashMap<TypeToken<?>, FutureTypeAdapter<?>>();
      int PROBE_START_LINE_401 = 401;
	ThreadLocal<Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>>> f_calls_17_line_401 = calls;
	Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>> v_thread_calls_78_line_401 = threadCalls;
	int PROBE_END_LINE_401 = 401;
	f_calls_17_line_401.set(v_thread_calls_78_line_401);
      requiresThreadLocalCleanup = true;
    }

    int PROBE_START_LINE_406 = 406;
	Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>> v_thread_calls_78_line_406 = threadCalls;
	TypeToken<T> p_type_76_line_406 = type;
	com.google.gson.Gson.FutureTypeAdapter<?> gson_1_expr116_line_406 = v_thread_calls_78_line_406
			.get(p_type_76_line_406);
	int PROBE_END_LINE_406 = 406;
	// the key and value type parameters always agree
    FutureTypeAdapter<T> ongoingCall = (FutureTypeAdapter<T>) gson_1_expr116_line_406;
    int PROBE_START_LINE_407 = 409;
	com.google.gson.Gson.FutureTypeAdapter<T> v_ongoing_call_80_line_407 = ongoingCall;
	boolean gson_1_expr117_line_407 = v_ongoing_call_80_line_407 != null;
	int PROBE_END_LINE_407 = 409;
	if (gson_1_expr117_line_407) {
      return ongoingCall;
    }

    try {
      FutureTypeAdapter<T> call = new FutureTypeAdapter<T>();
      int PROBE_START_LINE_413 = 413;
	Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>> v_thread_calls_78_line_413 = threadCalls;
	TypeToken<T> p_type_76_line_413 = type;
	com.google.gson.Gson.FutureTypeAdapter<T> v_call_81_line_413 = call;
	int PROBE_END_LINE_413 = 413;
	v_thread_calls_78_line_413.put(p_type_76_line_413, v_call_81_line_413);

      int PROBE_START_LINE_415 = 422;
	List<com.google.gson.TypeAdapterFactory> f_factories_54_line_415 = factories;
	int PROBE_END_LINE_415 = 422;
	for (TypeAdapterFactory factory : f_factories_54_line_415) {
        int PROBE_START_LINE_416 = 416;
		com.google.gson.TypeAdapterFactory v_factory_82_line_416 = factory;
		TypeToken<T> p_type_76_line_416 = type;
		TypeAdapter<T> gson_1_expr120_line_416 = v_factory_82_line_416.create(this, p_type_76_line_416);
		int PROBE_END_LINE_416 = 416;
		TypeAdapter<T> candidate = gson_1_expr120_line_416;
        int PROBE_START_LINE_417 = 421;
		TypeAdapter<T> v_candidate_83_line_417 = candidate;
		boolean gson_1_expr122_line_417 = v_candidate_83_line_417 != null;
		int PROBE_END_LINE_417 = 421;
		if (gson_1_expr122_line_417) {
          call.setDelegate(candidate);
          typeTokenCache.put(type, candidate);
          return candidate;
        }
      }
      throw new IllegalArgumentException("GSON cannot handle " + type);
    } finally {
      int PROBE_START_LINE_425 = 425;
		Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>> v_thread_calls_78_line_425 = threadCalls;
		TypeToken<T> p_type_76_line_425 = type;
		int PROBE_END_LINE_425 = 425;
	v_thread_calls_78_line_425.remove(p_type_76_line_425);

      int PROBE_START_LINE_427 = 429;
	boolean v_requires_thread_local_cleanup_79_line_427 = requiresThreadLocalCleanup;
	int PROBE_END_LINE_427 = 429;
	if (v_requires_thread_local_cleanup_79_line_427) {
        int PROBE_START_LINE_428 = 428;
		ThreadLocal<Map<TypeToken<?>, com.google.gson.Gson.FutureTypeAdapter<?>>> f_calls_17_line_428 = calls;
		int PROBE_END_LINE_428 = 428;
		f_calls_17_line_428.remove();
      }
    }
  }

  /**
   * This method is used to get an alternate type adapter for the specified type. This is used
   * to access a type adapter that is overridden by a {@link TypeAdapterFactory} that you
   * may have registered. This features is typically used when you want to register a type
   * adapter that does a little bit of work but then delegates further processing to the Gson
   * default type adapter. Here is an example:
   * <p>Let's say we want to write a type adapter that counts the number of objects being read
   *  from or written to JSON. We can achieve this by writing a type adapter factory that uses
   *  the <code>getDelegateAdapter</code> method:
   *  <pre> {@code
   *  class StatsTypeAdapterFactory implements TypeAdapterFactory {
   *    public int numReads = 0;
   *    public int numWrites = 0;
   *    public &lt;T&gt; TypeAdapter&lt;T&gt; create(Gson gson, TypeToken&lt;T&gt; type) {
   *      final TypeAdapter&lt;T&gt; delegate = gson.getDelegateAdapter(this, type);
   *      return new TypeAdapter&lt;T&gt;() {
   *        public void write(JsonWriter out, T value) throws IOException {
   *          ++numWrites;
   *          delegate.write(out, value);
   *        }
   *        public T read(JsonReader in) throws IOException {
   *          ++numReads;
   *          return delegate.read(in);
   *        }
   *      };
   *    }
   *  }
   *  } </pre>
   *  This factory can now be used like this:
   *  <pre> {@code
   *  StatsTypeAdapterFactory stats = new StatsTypeAdapterFactory();
   *  Gson gson = new GsonBuilder().registerTypeAdapterFactory(stats).create();
   *  // Call gson.toJson() and fromJson methods on objects
   *  System.out.println("Num JSON reads" + stats.numReads);
   *  System.out.println("Num JSON writes" + stats.numWrites);
   *  }</pre>
   *  Note that this call will skip all factories registered before {@code skipPast}. In case of
   *  multiple TypeAdapterFactories registered it is up to the caller of this function to insure
   *  that the order of registration does not prevent this method from reaching a factory they
   *  would expect to reply from this call.
   *  Note that since you can not override type adapter factories for String and Java primitive
   *  types, our stats factory will not count the number of String or primitives that will be
   *  read or written.
   * @param skipPast The type adapter factory that needs to be skipped while searching for
   *   a matching type adapter. In most cases, you should just pass <i>this</i> (the type adapter
   *   factory from where {@link #getDelegateAdapter} method is being invoked).
   * @param type Type for which the delegate adapter is being searched for.
   *
   * @since 2.2
   */
  public <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory skipPast, TypeToken<T> type) {
    boolean skipPastFound = false;
    int PROBE_START_LINE_488 = 488;
	List<com.google.gson.TypeAdapterFactory> f_factories_54_line_488 = factories;
	com.google.gson.TypeAdapterFactory p_skip_past_84_line_488 = skipPast;
	boolean gson_1_expr126_line_488 = f_factories_54_line_488.contains(p_skip_past_84_line_488);
	boolean gson_1_expr125_line_488 = !gson_1_expr126_line_488;
	int PROBE_END_LINE_488 = 488;
	// Skip past if and only if the specified factory is present in the factories.
    // This is useful because the factories created through JsonAdapter annotations are not
    // registered in this list.
    if (gson_1_expr125_line_488) skipPastFound = true;

    int PROBE_START_LINE_490 = 502;
	List<com.google.gson.TypeAdapterFactory> f_factories_54_line_490 = factories;
	int PROBE_END_LINE_490 = 502;
	for (TypeAdapterFactory factory : f_factories_54_line_490) {
      int PROBE_START_LINE_491 = 496;
		boolean v_skip_past_found_86_line_491 = skipPastFound;
		boolean gson_1_expr128_line_491 = !v_skip_past_found_86_line_491;
		int PROBE_END_LINE_491 = 496;
	if (gson_1_expr128_line_491) {
        if (factory == skipPast) {
          skipPastFound = true;
        }
        continue;
      }

      int PROBE_START_LINE_498 = 498;
	com.google.gson.TypeAdapterFactory v_factory_87_line_498 = factory;
	TypeToken<T> p_type_85_line_498 = type;
	TypeAdapter<T> gson_1_expr129_line_498 = v_factory_87_line_498.create(this, p_type_85_line_498);
	int PROBE_END_LINE_498 = 498;
	TypeAdapter<T> candidate = gson_1_expr129_line_498;
      int PROBE_START_LINE_499 = 501;
	TypeAdapter<T> v_candidate_88_line_499 = candidate;
	boolean gson_1_expr131_line_499 = v_candidate_88_line_499 != null;
	int PROBE_END_LINE_499 = 501;
	if (gson_1_expr131_line_499) {
        return candidate;
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + type);
  }

  /**
   * Returns the type adapter for {@code} type.
   *
   * @throws IllegalArgumentException if this GSON cannot serialize and
   *     deserialize {@code type}.
   */
  public <T> TypeAdapter<T> getAdapter(Class<T> type) {
    return getAdapter(TypeToken.get(type));
  }

  /**
   * This method serializes the specified object into its equivalent representation as a tree of
   * {@link JsonElement}s. This method should be used when the specified object is not a generic
   * type. This method uses {@link Class#getClass()} to get the type for the specified object, but
   * the {@code getClass()} loses the generic type information because of the Type Erasure feature
   * of Java. Note that this method works fine if the any of the object fields are of generic type,
   * just the object itself should not be of a generic type. If the object is of generic type, use
   * {@link #toJsonTree(Object, Type)} instead.
   *
   * @param src the object for which Json representation is to be created setting for Gson
   * @return Json representation of {@code src}.
   * @since 1.4
   */
  public JsonElement toJsonTree(Object src) {
    if (src == null) {
      return JsonNull.INSTANCE;
    }
    return toJsonTree(src, src.getClass());
  }

  /**
   * This method serializes the specified object, including those of generic types, into its
   * equivalent representation as a tree of {@link JsonElement}s. This method must be used if the
   * specified object is a generic type. For non-generic objects, use {@link #toJsonTree(Object)}
   * instead.
   *
   * @param src the object for which JSON representation is to be created
   * @param typeOfSrc The specific genericized type of src. You can obtain
   * this type by using the {@link com.google.gson.reflect.TypeToken} class. For example,
   * to get the type for {@code Collection<Foo>}, you should use:
   * <pre>
   * Type typeOfSrc = new TypeToken&lt;Collection&lt;Foo&gt;&gt;(){}.getType();
   * </pre>
   * @return Json representation of {@code src}
   * @since 1.4
   */
  public JsonElement toJsonTree(Object src, Type typeOfSrc) {
    JsonTreeWriter writer = new JsonTreeWriter();
    toJson(src, typeOfSrc, writer);
    return writer.get();
  }

  /**
   * This method serializes the specified object into its equivalent Json representation.
   * This method should be used when the specified object is not a generic type. This method uses
   * {@link Class#getClass()} to get the type for the specified object, but the
   * {@code getClass()} loses the generic type information because of the Type Erasure feature
   * of Java. Note that this method works fine if the any of the object fields are of generic type,
   * just the object itself should not be of a generic type. If the object is of generic type, use
   * {@link #toJson(Object, Type)} instead. If you want to write out the object to a
   * {@link Writer}, use {@link #toJson(Object, Appendable)} instead.
   *
   * @param src the object for which Json representation is to be created setting for Gson
   * @return Json representation of {@code src}.
   */
  public String toJson(Object src) {
    if (src == null) {
      return toJson(JsonNull.INSTANCE);
    }
    int PROBE_START_LINE_575 = 575;
	Object p_src_93_line_575 = src;
	Object p_src_93_line_575_v1 = src;
	Class<? extends Object> gson_1_expr133_line_575 = p_src_93_line_575_v1.getClass();
	String gson_1_expr132_line_575 = toJson(p_src_93_line_575, gson_1_expr133_line_575);
	int PROBE_END_LINE_575 = 575;
	return gson_1_expr132_line_575;
  }

  /**
   * This method serializes the specified object, including those of generic types, into its
   * equivalent Json representation. This method must be used if the specified object is a generic
   * type. For non-generic objects, use {@link #toJson(Object)} instead. If you want to write out
   * the object to a {@link Appendable}, use {@link #toJson(Object, Type, Appendable)} instead.
   *
   * @param src the object for which JSON representation is to be created
   * @param typeOfSrc The specific genericized type of src. You can obtain
   * this type by using the {@link com.google.gson.reflect.TypeToken} class. For example,
   * to get the type for {@code Collection<Foo>}, you should use:
   * <pre>
   * Type typeOfSrc = new TypeToken&lt;Collection&lt;Foo&gt;&gt;(){}.getType();
   * </pre>
   * @return Json representation of {@code src}
   */
  public String toJson(Object src, Type typeOfSrc) {
    StringWriter writer = new StringWriter();
    int PROBE_START_LINE_595 = 595;
	Object p_src_94_line_595 = src;
	java.lang.reflect.Type p_type_of_src_95_line_595 = typeOfSrc;
	java.io.StringWriter v_writer_96_line_595 = writer;
	int PROBE_END_LINE_595 = 595;
	toJson(p_src_94_line_595, p_type_of_src_95_line_595, v_writer_96_line_595);
    return writer.toString();
  }

  /**
   * This method serializes the specified object into its equivalent Json representation.
   * This method should be used when the specified object is not a generic type. This method uses
   * {@link Class#getClass()} to get the type for the specified object, but the
   * {@code getClass()} loses the generic type information because of the Type Erasure feature
   * of Java. Note that this method works fine if the any of the object fields are of generic type,
   * just the object itself should not be of a generic type. If the object is of generic type, use
   * {@link #toJson(Object, Type, Appendable)} instead.
   *
   * @param src the object for which Json representation is to be created setting for Gson
   * @param writer Writer to which the Json representation needs to be written
   * @throws JsonIOException if there was a problem writing to the writer
   * @since 1.2
   */
  public void toJson(Object src, Appendable writer) throws JsonIOException {
    if (src != null) {
      toJson(src, src.getClass(), writer);
    } else {
      toJson(JsonNull.INSTANCE, writer);
    }
  }

  /**
   * This method serializes the specified object, including those of generic types, into its
   * equivalent Json representation. This method must be used if the specified object is a generic
   * type. For non-generic objects, use {@link #toJson(Object, Appendable)} instead.
   *
   * @param src the object for which JSON representation is to be created
   * @param typeOfSrc The specific genericized type of src. You can obtain
   * this type by using the {@link com.google.gson.reflect.TypeToken} class. For example,
   * to get the type for {@code Collection<Foo>}, you should use:
   * <pre>
   * Type typeOfSrc = new TypeToken&lt;Collection&lt;Foo&gt;&gt;(){}.getType();
   * </pre>
   * @param writer Writer to which the Json representation of src needs to be written.
   * @throws JsonIOException if there was a problem writing to the writer
   * @since 1.2
   */
  public void toJson(Object src, Type typeOfSrc, Appendable writer) throws JsonIOException {
    try {
      int PROBE_START_LINE_639 = 639;
		Appendable p_writer_101_line_639 = writer;
		java.io.Writer gson_1_expr137_line_639 = Streams.writerForAppendable(p_writer_101_line_639);
		JsonWriter gson_1_expr136_line_639 = newJsonWriter(gson_1_expr137_line_639);
		int PROBE_END_LINE_639 = 639;
	JsonWriter jsonWriter = gson_1_expr136_line_639;
      int PROBE_START_LINE_640 = 640;
	Object p_src_99_line_640 = src;
	java.lang.reflect.Type p_type_of_src_100_line_640 = typeOfSrc;
	com.google.gson.stream.JsonWriter v_json_writer_102_line_640 = jsonWriter;
	int PROBE_END_LINE_640 = 640;
	toJson(p_src_99_line_640, p_type_of_src_100_line_640, v_json_writer_102_line_640);
    } catch (IOException e) {
      throw new JsonIOException(e);
    }
  }

  /**
   * Writes the JSON representation of {@code src} of type {@code typeOfSrc} to
   * {@code writer}.
   * @throws JsonIOException if there was a problem writing to the writer
   */
  @SuppressWarnings("unchecked")
  public void toJson(Object src, Type typeOfSrc, JsonWriter writer) throws JsonIOException {
    int PROBE_START_LINE_653 = 653;
	java.lang.reflect.Type p_type_of_src_104_line_653 = typeOfSrc;
	TypeToken<?> gson_1_expr140_line_653 = TypeToken.get(p_type_of_src_104_line_653);
	TypeAdapter<?> gson_1_expr139_line_653 = getAdapter(gson_1_expr140_line_653);
	int PROBE_END_LINE_653 = 653;
	TypeAdapter<?> adapter = gson_1_expr139_line_653;
    boolean oldLenient = writer.isLenient();
    writer.setLenient(true);
    boolean oldHtmlSafe = writer.isHtmlSafe();
    writer.setHtmlSafe(htmlSafe);
    boolean oldSerializeNulls = writer.getSerializeNulls();
    writer.setSerializeNulls(serializeNulls);
    try {
      ((TypeAdapter<Object>) adapter).write(writer, src);
    } catch (IOException e) {
      throw new JsonIOException(e);
    } finally {
      writer.setLenient(oldLenient);
      writer.setHtmlSafe(oldHtmlSafe);
      writer.setSerializeNulls(oldSerializeNulls);
    }
  }

  /**
   * Converts a tree of {@link JsonElement}s into its equivalent JSON representation.
   *
   * @param jsonElement root of a tree of {@link JsonElement}s
   * @return JSON String representation of the tree
   * @since 1.4
   */
  public String toJson(JsonElement jsonElement) {
    StringWriter writer = new StringWriter();
    toJson(jsonElement, writer);
    return writer.toString();
  }

  /**
   * Writes out the equivalent JSON for a tree of {@link JsonElement}s.
   *
   * @param jsonElement root of a tree of {@link JsonElement}s
   * @param writer Writer to which the Json representation needs to be written
   * @throws JsonIOException if there was a problem writing to the writer
   * @since 1.4
   */
  public void toJson(JsonElement jsonElement, Appendable writer) throws JsonIOException {
    try {
      JsonWriter jsonWriter = newJsonWriter(Streams.writerForAppendable(writer));
      toJson(jsonElement, jsonWriter);
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * Returns a new JSON writer configured for the settings on this Gson instance.
   */
  public JsonWriter newJsonWriter(Writer writer) throws IOException {
    int PROBE_START_LINE_705 = 707;
	boolean f_generate_non_executable_json_48_line_705 = generateNonExecutableJson;
	int PROBE_END_LINE_705 = 707;
	if (f_generate_non_executable_json_48_line_705) {
      writer.write(JSON_NON_EXECUTABLE_PREFIX);
    }
    int PROBE_START_LINE_708 = 708;
	java.io.Writer p_writer_110_line_708 = writer;
	int PROBE_END_LINE_708 = 708;
	JsonWriter jsonWriter = new JsonWriter(p_writer_110_line_708);
    int PROBE_START_LINE_709 = 711;
	boolean f_pretty_printing_50_line_709 = prettyPrinting;
	int PROBE_END_LINE_709 = 711;
	if (f_pretty_printing_50_line_709) {
      jsonWriter.setIndent("  ");
    }
    int PROBE_START_LINE_712 = 712;
	com.google.gson.stream.JsonWriter v_json_writer_111_line_712 = jsonWriter;
	boolean f_serialize_nulls_47_line_712 = serializeNulls;
	int PROBE_END_LINE_712 = 712;
	v_json_writer_111_line_712.setSerializeNulls(f_serialize_nulls_47_line_712);
    int PROBE_START_LINE_713 = 713;
	com.google.gson.stream.JsonWriter v_json_writer_111_line_713 = jsonWriter;
	int PROBE_END_LINE_713 = 713;
	return v_json_writer_111_line_713;
  }

  /**
   * Returns a new JSON writer configured for the settings on this Gson instance.
   */
  public JsonReader newJsonReader(Reader reader) {
    int PROBE_START_LINE_720 = 720;
	java.io.Reader p_reader_112_line_720 = reader;
	int PROBE_END_LINE_720 = 720;
	JsonReader jsonReader = new JsonReader(p_reader_112_line_720);
    int PROBE_START_LINE_721 = 721;
	com.google.gson.stream.JsonReader v_json_reader_113_line_721 = jsonReader;
	boolean f_lenient_51_line_721 = lenient;
	int PROBE_END_LINE_721 = 721;
	v_json_reader_113_line_721.setLenient(f_lenient_51_line_721);
    int PROBE_START_LINE_722 = 722;
	com.google.gson.stream.JsonReader v_json_reader_113_line_722 = jsonReader;
	int PROBE_END_LINE_722 = 722;
	return v_json_reader_113_line_722;
  }

  /**
   * Writes the JSON for {@code jsonElement} to {@code writer}.
   * @throws JsonIOException if there was a problem writing to the writer
   */
  public void toJson(JsonElement jsonElement, JsonWriter writer) throws JsonIOException {
    boolean oldLenient = writer.isLenient();
    writer.setLenient(true);
    boolean oldHtmlSafe = writer.isHtmlSafe();
    writer.setHtmlSafe(htmlSafe);
    boolean oldSerializeNulls = writer.getSerializeNulls();
    writer.setSerializeNulls(serializeNulls);
    try {
      Streams.write(jsonElement, writer);
    } catch (IOException e) {
      throw new JsonIOException(e);
    } finally {
      writer.setLenient(oldLenient);
      writer.setHtmlSafe(oldHtmlSafe);
      writer.setSerializeNulls(oldSerializeNulls);
    }
  }

  /**
   * This method deserializes the specified Json into an object of the specified class. It is not
   * suitable to use if the specified class is a generic type since it will not have the generic
   * type information because of the Type Erasure feature of Java. Therefore, this method should not
   * be used if the desired type is a generic type. Note that this method works fine if the any of
   * the fields of the specified object are generics, just the object itself should not be a
   * generic type. For the cases when the object is of generic type, invoke
   * {@link #fromJson(String, Type)}. If you have the Json in a {@link Reader} instead of
   * a String, use {@link #fromJson(Reader, Class)} instead.
   *
   * @param <T> the type of the desired object
   * @param json the string from which the object is to be deserialized
   * @param classOfT the class of T
   * @return an object of type T from the string. Returns {@code null} if {@code json} is {@code null}.
   * @throws JsonSyntaxException if json is not a valid representation for an object of type
   * classOfT
   */
  public <T> T fromJson(String json, Class<T> classOfT) throws JsonSyntaxException {
    int PROBE_START_LINE_765 = 765;
	String p_json_116_line_765 = json;
	Class<T> p_class_of_t_117_line_765 = classOfT;
	Object gson_1_expr145_line_765 = fromJson(p_json_116_line_765, (Type) p_class_of_t_117_line_765);
	int PROBE_END_LINE_765 = 765;
	Object object = gson_1_expr145_line_765;
    return Primitives.wrap(classOfT).cast(object);
  }

  /**
   * This method deserializes the specified Json into an object of the specified type. This method
   * is useful if the specified object is a generic type. For non-generic objects, use
   * {@link #fromJson(String, Class)} instead. If you have the Json in a {@link Reader} instead of
   * a String, use {@link #fromJson(Reader, Type)} instead.
   *
   * @param <T> the type of the desired object
   * @param json the string from which the object is to be deserialized
   * @param typeOfT The specific genericized type of src. You can obtain this type by using the
   * {@link com.google.gson.reflect.TypeToken} class. For example, to get the type for
   * {@code Collection<Foo>}, you should use:
   * <pre>
   * Type typeOfT = new TypeToken&lt;Collection&lt;Foo&gt;&gt;(){}.getType();
   * </pre>
   * @return an object of type T from the string. Returns {@code null} if {@code json} is {@code null}.
   * @throws JsonParseException if json is not a valid representation for an object of type typeOfT
   * @throws JsonSyntaxException if json is not a valid representation for an object of type
   */
  @SuppressWarnings("unchecked")
  public <T> T fromJson(String json, Type typeOfT) throws JsonSyntaxException {
    int PROBE_START_LINE_789 = 791;
	String p_json_119_line_789 = json;
	boolean gson_1_expr147_line_789 = p_json_119_line_789 == null;
	int PROBE_END_LINE_789 = 791;
	if (gson_1_expr147_line_789) {
      return null;
    }
    int PROBE_START_LINE_792 = 792;
	String p_json_119_line_792 = json;
	int PROBE_END_LINE_792 = 792;
	StringReader reader = new StringReader(p_json_119_line_792);
    int PROBE_START_LINE_793 = 793;
	java.io.StringReader v_reader_121_line_793 = reader;
	java.lang.reflect.Type p_type_of_t_120_line_793 = typeOfT;
	Object gson_1_expr150_line_793 = fromJson(v_reader_121_line_793, p_type_of_t_120_line_793);
	int PROBE_END_LINE_793 = 793;
	T target = (T) gson_1_expr150_line_793;
    return target;
  }

  /**
   * This method deserializes the Json read from the specified reader into an object of the
   * specified class. It is not suitable to use if the specified class is a generic type since it
   * will not have the generic type information because of the Type Erasure feature of Java.
   * Therefore, this method should not be used if the desired type is a generic type. Note that
   * this method works fine if the any of the fields of the specified object are generics, just the
   * object itself should not be a generic type. For the cases when the object is of generic type,
   * invoke {@link #fromJson(Reader, Type)}. If you have the Json in a String form instead of a
   * {@link Reader}, use {@link #fromJson(String, Class)} instead.
   *
   * @param <T> the type of the desired object
   * @param json the reader producing the Json from which the object is to be deserialized.
   * @param classOfT the class of T
   * @return an object of type T from the string. Returns {@code null} if {@code json} is at EOF.
   * @throws JsonIOException if there was a problem reading from the Reader
   * @throws JsonSyntaxException if json is not a valid representation for an object of type
   * @since 1.2
   */
  public <T> T fromJson(Reader json, Class<T> classOfT) throws JsonSyntaxException, JsonIOException {
    JsonReader jsonReader = newJsonReader(json);
    Object object = fromJson(jsonReader, classOfT);
    assertFullConsumption(object, jsonReader);
    return Primitives.wrap(classOfT).cast(object);
  }

  /**
   * This method deserializes the Json read from the specified reader into an object of the
   * specified type. This method is useful if the specified object is a generic type. For
   * non-generic objects, use {@link #fromJson(Reader, Class)} instead. If you have the Json in a
   * String form instead of a {@link Reader}, use {@link #fromJson(String, Type)} instead.
   *
   * @param <T> the type of the desired object
   * @param json the reader producing Json from which the object is to be deserialized
   * @param typeOfT The specific genericized type of src. You can obtain this type by using the
   * {@link com.google.gson.reflect.TypeToken} class. For example, to get the type for
   * {@code Collection<Foo>}, you should use:
   * <pre>
   * Type typeOfT = new TypeToken&lt;Collection&lt;Foo&gt;&gt;(){}.getType();
   * </pre>
   * @return an object of type T from the json. Returns {@code null} if {@code json} is at EOF.
   * @throws JsonIOException if there was a problem reading from the Reader
   * @throws JsonSyntaxException if json is not a valid representation for an object of type
   * @since 1.2
   */
  @SuppressWarnings("unchecked")
  public <T> T fromJson(Reader json, Type typeOfT) throws JsonIOException, JsonSyntaxException {
    int PROBE_START_LINE_843 = 843;
	java.io.Reader p_json_125_line_843 = json;
	JsonReader gson_1_expr151_line_843 = newJsonReader(p_json_125_line_843);
	int PROBE_END_LINE_843 = 843;
	JsonReader jsonReader = gson_1_expr151_line_843;
    int PROBE_START_LINE_844 = 844;
	com.google.gson.stream.JsonReader v_json_reader_127_line_844 = jsonReader;
	java.lang.reflect.Type p_type_of_t_126_line_844 = typeOfT;
	Object gson_1_expr153_line_844 = fromJson(v_json_reader_127_line_844, p_type_of_t_126_line_844);
	int PROBE_END_LINE_844 = 844;
	T object = (T) gson_1_expr153_line_844;
    assertFullConsumption(object, jsonReader);
    return object;
  }

  private static void assertFullConsumption(Object obj, JsonReader reader) {
    try {
      if (obj != null && reader.peek() != JsonToken.END_DOCUMENT) {
        throw new JsonIOException("JSON document was not fully consumed.");
      }
    } catch (MalformedJsonException e) {
      throw new JsonSyntaxException(e);
    } catch (IOException e) {
      throw new JsonIOException(e);
    }
  }

  /**
   * Reads the next JSON value from {@code reader} and convert it to an object
   * of type {@code typeOfT}. Returns {@code null}, if the {@code reader} is at EOF.
   * Since Type is not parameterized by T, this method is type unsafe and should be used carefully
   *
   * @throws JsonIOException if there was a problem writing to the Reader
   * @throws JsonSyntaxException if json is not a valid representation for an object of type
   */
  @SuppressWarnings("unchecked")
  public <T> T fromJson(JsonReader reader, Type typeOfT) throws JsonIOException, JsonSyntaxException {
    boolean isEmpty = true;
    int PROBE_START_LINE_872 = 872;
	com.google.gson.stream.JsonReader p_reader_131_line_872 = reader;
	boolean gson_1_expr154_line_872 = p_reader_131_line_872.isLenient();
	int PROBE_END_LINE_872 = 872;
	boolean oldLenient = gson_1_expr154_line_872;
    int PROBE_START_LINE_873 = 873;
	com.google.gson.stream.JsonReader p_reader_131_line_873 = reader;
	int PROBE_END_LINE_873 = 873;
	p_reader_131_line_873.setLenient(true);
    try {
      int PROBE_START_LINE_875 = 875;
		com.google.gson.stream.JsonReader p_reader_131_line_875 = reader;
		int PROBE_END_LINE_875 = 875;
	p_reader_131_line_875.peek();
      isEmpty = false;
      int PROBE_START_LINE_877 = 877;
	java.lang.reflect.Type p_type_of_t_132_line_877 = typeOfT;
	TypeToken<?> gson_1_expr159_line_877 = TypeToken.get(p_type_of_t_132_line_877);
	int PROBE_END_LINE_877 = 877;
	TypeToken<T> typeToken = (TypeToken<T>) gson_1_expr159_line_877;
      int PROBE_START_LINE_878 = 878;
	TypeToken<T> v_type_token_135_line_878 = typeToken;
	TypeAdapter<T> gson_1_expr160_line_878 = getAdapter(v_type_token_135_line_878);
	int PROBE_END_LINE_878 = 878;
	TypeAdapter<T> typeAdapter = gson_1_expr160_line_878;
      T object = typeAdapter.read(reader);
      return object;
    } catch (EOFException e) {
      /*
       * For compatibility with JSON 1.5 and earlier, we return null for empty
       * documents instead of throwing.
       */
      if (isEmpty) {
        return null;
      }
      throw new JsonSyntaxException(e);
    } catch (IllegalStateException e) {
      throw new JsonSyntaxException(e);
    } catch (IOException e) {
      // TODO(inder): Figure out whether it is indeed right to rethrow this as JsonSyntaxException
      throw new JsonSyntaxException(e);
    } finally {
      int PROBE_START_LINE_896 = 896;
		com.google.gson.stream.JsonReader p_reader_131_line_896 = reader;
		boolean v_old_lenient_134_line_896 = oldLenient;
		int PROBE_END_LINE_896 = 896;
	p_reader_131_line_896.setLenient(v_old_lenient_134_line_896);
    }
  }

  /**
   * This method deserializes the Json read from the specified parse tree into an object of the
   * specified type. It is not suitable to use if the specified class is a generic type since it
   * will not have the generic type information because of the Type Erasure feature of Java.
   * Therefore, this method should not be used if the desired type is a generic type. Note that
   * this method works fine if the any of the fields of the specified object are generics, just the
   * object itself should not be a generic type. For the cases when the object is of generic type,
   * invoke {@link #fromJson(JsonElement, Type)}.
   * @param <T> the type of the desired object
   * @param json the root of the parse tree of {@link JsonElement}s from which the object is to
   * be deserialized
   * @param classOfT The class of T
   * @return an object of type T from the json. Returns {@code null} if {@code json} is {@code null}.
   * @throws JsonSyntaxException if json is not a valid representation for an object of type typeOfT
   * @since 1.3
   */
  public <T> T fromJson(JsonElement json, Class<T> classOfT) throws JsonSyntaxException {
    Object object = fromJson(json, (Type) classOfT);
    return Primitives.wrap(classOfT).cast(object);
  }

  /**
   * This method deserializes the Json read from the specified parse tree into an object of the
   * specified type. This method is useful if the specified object is a generic type. For
   * non-generic objects, use {@link #fromJson(JsonElement, Class)} instead.
   *
   * @param <T> the type of the desired object
   * @param json the root of the parse tree of {@link JsonElement}s from which the object is to
   * be deserialized
   * @param typeOfT The specific genericized type of src. You can obtain this type by using the
   * {@link com.google.gson.reflect.TypeToken} class. For example, to get the type for
   * {@code Collection<Foo>}, you should use:
   * <pre>
   * Type typeOfT = new TypeToken&lt;Collection&lt;Foo&gt;&gt;(){}.getType();
   * </pre>
   * @return an object of type T from the json. Returns {@code null} if {@code json} is {@code null}.
   * @throws JsonSyntaxException if json is not a valid representation for an object of type typeOfT
   * @since 1.3
   */
  @SuppressWarnings("unchecked")
  public <T> T fromJson(JsonElement json, Type typeOfT) throws JsonSyntaxException {
    if (json == null) {
      return null;
    }
    return (T) fromJson(new JsonTreeReader(json), typeOfT);
  }

  static class FutureTypeAdapter<T> extends TypeAdapter<T> {
    private TypeAdapter<T> delegate;

    public void setDelegate(TypeAdapter<T> typeAdapter) {
      if (delegate != null) {
        throw new AssertionError();
      }
      delegate = typeAdapter;
    }

    @Override public T read(JsonReader in) throws IOException {
      if (delegate == null) {
        throw new IllegalStateException();
      }
      return delegate.read(in);
    }

    @Override public void write(JsonWriter out, T value) throws IOException {
      if (delegate == null) {
        throw new IllegalStateException();
      }
      delegate.write(out, value);
    }
  }

  @Override
  public String toString() {
    return new StringBuilder("{serializeNulls:")
        .append(serializeNulls)
        .append("factories:").append(factories)
        .append(",instanceCreators:").append(constructorConstructor)
        .append("}")
        .toString();
  }
}
