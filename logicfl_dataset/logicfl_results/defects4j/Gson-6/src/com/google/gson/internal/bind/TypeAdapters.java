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

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

/**
 * Type adapters for basic types.
 */
public final class TypeAdapters {
  private TypeAdapters() {
    throw new UnsupportedOperationException();
  }

  @SuppressWarnings("rawtypes")
  public static final TypeAdapter<Class> CLASS = new TypeAdapter<Class>() {
    @Override
    public void write(JsonWriter out, Class value) throws IOException {
      if (value == null) {
        out.nullValue();
      } else {
        throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: "
            + value.getName() + ". Forgot to register a type adapter?");
      }
    }
    @Override
    public Class read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      } else {
        throw new UnsupportedOperationException(
            "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
      }
    }
  };
  int PROBE_START_LINE_90 = 90;

public static final TypeAdapter<Class> f_class_350_line_90 = CLASS;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr2_line_90 = newFactory(Class.class,
		f_class_350_line_90);

int PROBE_END_LINE_90 = 90;

public static final TypeAdapterFactory CLASS_FACTORY = type_adapters_1_expr2_line_90;

  public static final TypeAdapter<BitSet> BIT_SET = new TypeAdapter<BitSet>() {
    @Override public BitSet read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }

      BitSet bitset = new BitSet();
      in.beginArray();
      int i = 0;
      JsonToken tokenType = in.peek();
      while (tokenType != JsonToken.END_ARRAY) {
        boolean set;
        switch (tokenType) {
        case NUMBER:
          set = in.nextInt() != 0;
          break;
        case BOOLEAN:
          set = in.nextBoolean();
          break;
        case STRING:
          String stringValue = in.nextString();
          try {
            set = Integer.parseInt(stringValue) != 0;
          } catch (NumberFormatException e) {
            throw new JsonSyntaxException(
                "Error: Expecting: bitset number value (1, 0), Found: " + stringValue);
          }
          break;
        default:
          throw new JsonSyntaxException("Invalid bitset value type: " + tokenType);
        }
        if (set) {
          bitset.set(i);
        }
        ++i;
        tokenType = in.peek();
      }
      in.endArray();
      return bitset;
    }

    @Override public void write(JsonWriter out, BitSet src) throws IOException {
      if (src == null) {
        out.nullValue();
        return;
      }

      out.beginArray();
      for (int i = 0; i < src.length(); i++) {
        int value = (src.get(i)) ? 1 : 0;
        out.value(value);
      }
      out.endArray();
    }
  };

  int PROBE_START_LINE_149 = 149;

public static final TypeAdapter<java.util.BitSet> f_bit_set_355_line_149 = BIT_SET;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr5_line_149 = newFactory(BitSet.class,
		f_bit_set_355_line_149);

int PROBE_END_LINE_149 = 149;

public static final TypeAdapterFactory BIT_SET_FACTORY = type_adapters_1_expr5_line_149;

  public static final TypeAdapter<Boolean> BOOLEAN = new TypeAdapter<Boolean>() {
    @Override
    public Boolean read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      } else if (in.peek() == JsonToken.STRING) {
        // support strings for compatibility with GSON 1.7
        return Boolean.parseBoolean(in.nextString());
      }
      return in.nextBoolean();
    }
    @Override
    public void write(JsonWriter out, Boolean value) throws IOException {
      if (value == null) {
        out.nullValue();
        return;
      }
      out.value(value);
    }
  };

  /**
   * Writes a boolean as a string. Useful for map keys, where booleans aren't
   * otherwise permitted.
   */
  public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING = new TypeAdapter<Boolean>() {
    @Override public Boolean read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      return Boolean.valueOf(in.nextString());
    }

    @Override public void write(JsonWriter out, Boolean value) throws IOException {
      out.value(value == null ? "null" : value.toString());
    }
  };

  public static final TypeAdapterFactory BOOLEAN_FACTORY
      = newFactory(boolean.class, Boolean.class, BOOLEAN);

  public static final TypeAdapter<Number> BYTE = new TypeAdapter<Number>() {
    @Override
    public Number read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      try {
        int intValue = in.nextInt();
        return (byte) intValue;
      } catch (NumberFormatException e) {
        throw new JsonSyntaxException(e);
      }
    }
    @Override
    public void write(JsonWriter out, Number value) throws IOException {
      out.value(value);
    }
  };

  public static final TypeAdapterFactory BYTE_FACTORY
      = newFactory(byte.class, Byte.class, BYTE);

  public static final TypeAdapter<Number> SHORT = new TypeAdapter<Number>() {
    @Override
    public Number read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      try {
        return (short) in.nextInt();
      } catch (NumberFormatException e) {
        throw new JsonSyntaxException(e);
      }
    }
    @Override
    public void write(JsonWriter out, Number value) throws IOException {
      out.value(value);
    }
  };

  public static final TypeAdapterFactory SHORT_FACTORY
      = newFactory(short.class, Short.class, SHORT);

  public static final TypeAdapter<Number> INTEGER = new TypeAdapter<Number>() {
    @Override
    public Number read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      try {
        return in.nextInt();
      } catch (NumberFormatException e) {
        throw new JsonSyntaxException(e);
      }
    }
    @Override
    public void write(JsonWriter out, Number value) throws IOException {
      out.value(value);
    }
  };
  public static final TypeAdapterFactory INTEGER_FACTORY
      = newFactory(int.class, Integer.class, INTEGER);

  int PROBE_START_LINE_260 = 271;

public static final TypeAdapter<java.util.concurrent.atomic.AtomicInteger> type_adapters_1_expr16_line_260 = new TypeAdapter<AtomicInteger>() {
	@Override
	public AtomicInteger read(JsonReader in) throws IOException {
		try {
			return new AtomicInteger(in.nextInt());
		} catch (NumberFormatException e) {
			throw new JsonSyntaxException(e);
		}
	}
	@Override
	public void write(JsonWriter out, AtomicInteger value) throws IOException {
		out.value(value.get());
	}
}.nullSafe();

int PROBE_END_LINE_260 = 271;

public static final TypeAdapter<AtomicInteger> ATOMIC_INTEGER = type_adapters_1_expr16_line_260;
  public static final TypeAdapterFactory ATOMIC_INTEGER_FACTORY =
      newFactory(AtomicInteger.class, TypeAdapters.ATOMIC_INTEGER);

  int PROBE_START_LINE_275 = 282;

public static final TypeAdapter<java.util.concurrent.atomic.AtomicBoolean> type_adapters_1_expr19_line_275 = new TypeAdapter<AtomicBoolean>() {
	@Override
	public AtomicBoolean read(JsonReader in) throws IOException {
		return new AtomicBoolean(in.nextBoolean());
	}
	@Override
	public void write(JsonWriter out, AtomicBoolean value) throws IOException {
		out.value(value.get());
	}
}.nullSafe();

int PROBE_END_LINE_275 = 282;

public static final TypeAdapter<AtomicBoolean> ATOMIC_BOOLEAN = type_adapters_1_expr19_line_275;
  public static final TypeAdapterFactory ATOMIC_BOOLEAN_FACTORY =
      newFactory(AtomicBoolean.class, TypeAdapters.ATOMIC_BOOLEAN);

  int PROBE_START_LINE_286 = 313;

public static final TypeAdapter<java.util.concurrent.atomic.AtomicIntegerArray> type_adapters_1_expr22_line_286 = new TypeAdapter<AtomicIntegerArray>() {
	@Override
	public AtomicIntegerArray read(JsonReader in) throws IOException {
		List<Integer> list = new ArrayList<Integer>();
		in.beginArray();
		while (in.hasNext()) {
			try {
				int integer = in.nextInt();
				list.add(integer);
			} catch (NumberFormatException e) {
				throw new JsonSyntaxException(e);
			}
		}
		in.endArray();
		int length = list.size();
		AtomicIntegerArray array = new AtomicIntegerArray(length);
		for (int i = 0; i < length; ++i) {
			array.set(i, list.get(i));
		}
		return array;
	}
	@Override
	public void write(JsonWriter out, AtomicIntegerArray value) throws IOException {
		out.beginArray();
		for (int i = 0, length = value.length(); i < length; i++) {
			out.value(value.get(i));
		}
		out.endArray();
	}
}.nullSafe();

int PROBE_END_LINE_286 = 313;

public static final TypeAdapter<AtomicIntegerArray> ATOMIC_INTEGER_ARRAY = type_adapters_1_expr22_line_286;
  public static final TypeAdapterFactory ATOMIC_INTEGER_ARRAY_FACTORY =
      newFactory(AtomicIntegerArray.class, TypeAdapters.ATOMIC_INTEGER_ARRAY);

  public static final TypeAdapter<Number> LONG = new TypeAdapter<Number>() {
    @Override
    public Number read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      try {
        return in.nextLong();
      } catch (NumberFormatException e) {
        throw new JsonSyntaxException(e);
      }
    }
    @Override
    public void write(JsonWriter out, Number value) throws IOException {
      out.value(value);
    }
  };

  public static final TypeAdapter<Number> FLOAT = new TypeAdapter<Number>() {
    @Override
    public Number read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      return (float) in.nextDouble();
    }
    @Override
    public void write(JsonWriter out, Number value) throws IOException {
      out.value(value);
    }
  };

  public static final TypeAdapter<Number> DOUBLE = new TypeAdapter<Number>() {
    @Override
    public Number read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      return in.nextDouble();
    }
    @Override
    public void write(JsonWriter out, Number value) throws IOException {
      out.value(value);
    }
  };

  public static final TypeAdapter<Number> NUMBER = new TypeAdapter<Number>() {
    @Override
    public Number read(JsonReader in) throws IOException {
      JsonToken jsonToken = in.peek();
      switch (jsonToken) {
      case NULL:
        in.nextNull();
        return null;
      case NUMBER:
        return new LazilyParsedNumber(in.nextString());
      default:
        throw new JsonSyntaxException("Expecting number, got: " + jsonToken);
      }
    }
    @Override
    public void write(JsonWriter out, Number value) throws IOException {
      out.value(value);
    }
  };

  int PROBE_START_LINE_386 = 386;

public static final TypeAdapter<Number> f_number_411_line_386 = NUMBER;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr29_line_386 = newFactory(Number.class,
		f_number_411_line_386);

int PROBE_END_LINE_386 = 386;

public static final TypeAdapterFactory NUMBER_FACTORY = type_adapters_1_expr29_line_386;

  public static final TypeAdapter<Character> CHARACTER = new TypeAdapter<Character>() {
    @Override
    public Character read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      String str = in.nextString();
      if (str.length() != 1) {
        throw new JsonSyntaxException("Expecting character, got: " + str);
      }
      return str.charAt(0);
    }
    @Override
    public void write(JsonWriter out, Character value) throws IOException {
      out.value(value == null ? null : String.valueOf(value));
    }
  };

  public static final TypeAdapterFactory CHARACTER_FACTORY
      = newFactory(char.class, Character.class, CHARACTER);

  public static final TypeAdapter<String> STRING = new TypeAdapter<String>() {
    @Override
    public String read(JsonReader in) throws IOException {
      JsonToken peek = in.peek();
      if (peek == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      /* coerce booleans to strings for backwards compatibility */
      if (peek == JsonToken.BOOLEAN) {
        return Boolean.toString(in.nextBoolean());
      }
      return in.nextString();
    }
    @Override
    public void write(JsonWriter out, String value) throws IOException {
      out.value(value);
    }
  };
  
  public static final TypeAdapter<BigDecimal> BIG_DECIMAL = new TypeAdapter<BigDecimal>() {
    @Override public BigDecimal read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      try {
        return new BigDecimal(in.nextString());
      } catch (NumberFormatException e) {
        throw new JsonSyntaxException(e);
      }
    }

    @Override public void write(JsonWriter out, BigDecimal value) throws IOException {
      out.value(value);
    }
  };
  
  public static final TypeAdapter<BigInteger> BIG_INTEGER = new TypeAdapter<BigInteger>() {
    @Override public BigInteger read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      try {
        return new BigInteger(in.nextString());
      } catch (NumberFormatException e) {
        throw new JsonSyntaxException(e);
      }
    }

    @Override public void write(JsonWriter out, BigInteger value) throws IOException {
      out.value(value);
    }
  };

  int PROBE_START_LINE_466 = 466;

public static final TypeAdapter<String> f_string_421_line_466 = STRING;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr36_line_466 = newFactory(String.class,
		f_string_421_line_466);

int PROBE_END_LINE_466 = 466;

public static final TypeAdapterFactory STRING_FACTORY = type_adapters_1_expr36_line_466;

  public static final TypeAdapter<StringBuilder> STRING_BUILDER = new TypeAdapter<StringBuilder>() {
    @Override
    public StringBuilder read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      return new StringBuilder(in.nextString());
    }
    @Override
    public void write(JsonWriter out, StringBuilder value) throws IOException {
      out.value(value == null ? null : value.toString());
    }
  };

  public static final TypeAdapterFactory STRING_BUILDER_FACTORY =
    newFactory(StringBuilder.class, STRING_BUILDER);

  public static final TypeAdapter<StringBuffer> STRING_BUFFER = new TypeAdapter<StringBuffer>() {
    @Override
    public StringBuffer read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      return new StringBuffer(in.nextString());
    }
    @Override
    public void write(JsonWriter out, StringBuffer value) throws IOException {
      out.value(value == null ? null : value.toString());
    }
  };

  public static final TypeAdapterFactory STRING_BUFFER_FACTORY =
    newFactory(StringBuffer.class, STRING_BUFFER);

  public static final TypeAdapter<URL> URL = new TypeAdapter<URL>() {
    @Override
    public URL read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      String nextString = in.nextString();
      return "null".equals(nextString) ? null : new URL(nextString);
    }
    @Override
    public void write(JsonWriter out, URL value) throws IOException {
      out.value(value == null ? null : value.toExternalForm());
    }
  };

  int PROBE_START_LINE_520 = 520;

public static final TypeAdapter<java.net.URL> f_url_444_line_520 = URL;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr43_line_520 = newFactory(URL.class,
		f_url_444_line_520);

int PROBE_END_LINE_520 = 520;

public static final TypeAdapterFactory URL_FACTORY = type_adapters_1_expr43_line_520;

  public static final TypeAdapter<URI> URI = new TypeAdapter<URI>() {
    @Override
    public URI read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      try {
        String nextString = in.nextString();
        return "null".equals(nextString) ? null : new URI(nextString);
      } catch (URISyntaxException e) {
        throw new JsonIOException(e);
      }
    }
    @Override
    public void write(JsonWriter out, URI value) throws IOException {
      out.value(value == null ? null : value.toASCIIString());
    }
  };

  int PROBE_START_LINE_542 = 542;

public static final TypeAdapter<java.net.URI> f_uri_449_line_542 = URI;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr46_line_542 = newFactory(URI.class,
		f_uri_449_line_542);

int PROBE_END_LINE_542 = 542;

public static final TypeAdapterFactory URI_FACTORY = type_adapters_1_expr46_line_542;

  public static final TypeAdapter<InetAddress> INET_ADDRESS = new TypeAdapter<InetAddress>() {
    @Override
    public InetAddress read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      // regrettably, this should have included both the host name and the host address
      return InetAddress.getByName(in.nextString());
    }
    @Override
    public void write(JsonWriter out, InetAddress value) throws IOException {
      out.value(value == null ? null : value.getHostAddress());
    }
  };

  public static final TypeAdapterFactory INET_ADDRESS_FACTORY =
    newTypeHierarchyFactory(InetAddress.class, INET_ADDRESS);

  public static final TypeAdapter<UUID> UUID = new TypeAdapter<UUID>() {
    @Override
    public UUID read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      return java.util.UUID.fromString(in.nextString());
    }
    @Override
    public void write(JsonWriter out, UUID value) throws IOException {
      out.value(value == null ? null : value.toString());
    }
  };

  int PROBE_START_LINE_578 = 578;

public static final TypeAdapter<java.util.UUID> f_uuid_459_line_578 = UUID;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr51_line_578 = newFactory(UUID.class,
		f_uuid_459_line_578);

int PROBE_END_LINE_578 = 578;

public static final TypeAdapterFactory UUID_FACTORY = type_adapters_1_expr51_line_578;

  int PROBE_START_LINE_580 = 589;

public static final TypeAdapter<java.util.Currency> type_adapters_1_expr53_line_580 = new TypeAdapter<Currency>() {
	@Override
	public Currency read(JsonReader in) throws IOException {
		return Currency.getInstance(in.nextString());
	}
	@Override
	public void write(JsonWriter out, Currency value) throws IOException {
		out.value(value.getCurrencyCode());
	}
}.nullSafe();

int PROBE_END_LINE_580 = 589;

public static final TypeAdapter<Currency> CURRENCY = type_adapters_1_expr53_line_580;
  int PROBE_START_LINE_590 = 590;

public static final TypeAdapter<java.util.Currency> f_currency_464_line_590 = CURRENCY;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr55_line_590 = newFactory(Currency.class,
		f_currency_464_line_590);

int PROBE_END_LINE_590 = 590;

public static final TypeAdapterFactory CURRENCY_FACTORY = type_adapters_1_expr55_line_590;

  public static final TypeAdapterFactory TIMESTAMP_FACTORY = new TypeAdapterFactory() {
    @SuppressWarnings("unchecked") // we use a runtime check to make sure the 'T's equal
    @Override public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
      int PROBE_START_LINE_595 = 597;
		TypeToken<T> p_type_token_471_line_595 = typeToken;
		Class<? super T> type_adapters_1_expr59_line_595 = p_type_token_471_line_595.getRawType();
		boolean type_adapters_1_expr58_line_595 = type_adapters_1_expr59_line_595 != Timestamp.class;
		int PROBE_END_LINE_595 = 597;
	if (type_adapters_1_expr58_line_595) {
        return null;
      }

      final TypeAdapter<Date> dateTypeAdapter = gson.getAdapter(Date.class);
      return (TypeAdapter<T>) new TypeAdapter<Timestamp>() {
        @Override public Timestamp read(JsonReader in) throws IOException {
          Date date = dateTypeAdapter.read(in);
          return date != null ? new Timestamp(date.getTime()) : null;
        }

        @Override public void write(JsonWriter out, Timestamp value) throws IOException {
          dateTypeAdapter.write(out, value);
        }
      };
    }
  };

  public static final TypeAdapter<Calendar> CALENDAR = new TypeAdapter<Calendar>() {
    private static final String YEAR = "year";
    private static final String MONTH = "month";
    private static final String DAY_OF_MONTH = "dayOfMonth";
    private static final String HOUR_OF_DAY = "hourOfDay";
    private static final String MINUTE = "minute";
    private static final String SECOND = "second";

    @Override
    public Calendar read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return  null;
      }
      in.beginObject();
      int year = 0;
      int month = 0;
      int dayOfMonth = 0;
      int hourOfDay = 0;
      int minute = 0;
      int second = 0;
      while (in.peek() != JsonToken.END_OBJECT) {
        String name = in.nextName();
        int value = in.nextInt();
        if (YEAR.equals(name)) {
          year = value;
        } else if (MONTH.equals(name)) {
          month = value;
        } else if (DAY_OF_MONTH.equals(name)) {
          dayOfMonth = value;
        } else if (HOUR_OF_DAY.equals(name)) {
          hourOfDay = value;
        } else if (MINUTE.equals(name)) {
          minute = value;
        } else if (SECOND.equals(name)) {
          second = value;
        }
      }
      in.endObject();
      return new GregorianCalendar(year, month, dayOfMonth, hourOfDay, minute, second);
    }

    @Override
    public void write(JsonWriter out, Calendar value) throws IOException {
      if (value == null) {
        out.nullValue();
        return;
      }
      out.beginObject();
      out.name(YEAR);
      out.value(value.get(Calendar.YEAR));
      out.name(MONTH);
      out.value(value.get(Calendar.MONTH));
      out.name(DAY_OF_MONTH);
      out.value(value.get(Calendar.DAY_OF_MONTH));
      out.name(HOUR_OF_DAY);
      out.value(value.get(Calendar.HOUR_OF_DAY));
      out.name(MINUTE);
      out.value(value.get(Calendar.MINUTE));
      out.name(SECOND);
      out.value(value.get(Calendar.SECOND));
      out.endObject();
    }
  };

  public static final TypeAdapterFactory CALENDAR_FACTORY =
    newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, CALENDAR);

  public static final TypeAdapter<Locale> LOCALE = new TypeAdapter<Locale>() {
    @Override
    public Locale read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      String locale = in.nextString();
      StringTokenizer tokenizer = new StringTokenizer(locale, "_");
      String language = null;
      String country = null;
      String variant = null;
      if (tokenizer.hasMoreElements()) {
        language = tokenizer.nextToken();
      }
      if (tokenizer.hasMoreElements()) {
        country = tokenizer.nextToken();
      }
      if (tokenizer.hasMoreElements()) {
        variant = tokenizer.nextToken();
      }
      if (country == null && variant == null) {
        return new Locale(language);
      } else if (variant == null) {
        return new Locale(language, country);
      } else {
        return new Locale(language, country, variant);
      }
    }
    @Override
    public void write(JsonWriter out, Locale value) throws IOException {
      out.value(value == null ? null : value.toString());
    }
  };

  int PROBE_START_LINE_716 = 716;

public static final TypeAdapter<java.util.Locale> f_locale_480_line_716 = LOCALE;
public static final com.google.gson.TypeAdapterFactory type_adapters_1_expr64_line_716 = newFactory(Locale.class,
		f_locale_480_line_716);

int PROBE_END_LINE_716 = 716;

public static final TypeAdapterFactory LOCALE_FACTORY = type_adapters_1_expr64_line_716;

  public static final TypeAdapter<JsonElement> JSON_ELEMENT = new TypeAdapter<JsonElement>() {
    @Override public JsonElement read(JsonReader in) throws IOException {
      switch (in.peek()) {
      case STRING:
        return new JsonPrimitive(in.nextString());
      case NUMBER:
        String number = in.nextString();
        return new JsonPrimitive(new LazilyParsedNumber(number));
      case BOOLEAN:
        return new JsonPrimitive(in.nextBoolean());
      case NULL:
        in.nextNull();
        return JsonNull.INSTANCE;
      case BEGIN_ARRAY:
        JsonArray array = new JsonArray();
        in.beginArray();
        while (in.hasNext()) {
          array.add(read(in));
        }
        in.endArray();
        return array;
      case BEGIN_OBJECT:
        JsonObject object = new JsonObject();
        in.beginObject();
        while (in.hasNext()) {
          object.add(in.nextName(), read(in));
        }
        in.endObject();
        return object;
      case END_DOCUMENT:
      case NAME:
      case END_OBJECT:
      case END_ARRAY:
      default:
        throw new IllegalArgumentException();
      }
    }

    @Override public void write(JsonWriter out, JsonElement value) throws IOException {
      if (value == null || value.isJsonNull()) {
        out.nullValue();
      } else if (value.isJsonPrimitive()) {
        JsonPrimitive primitive = value.getAsJsonPrimitive();
        if (primitive.isNumber()) {
          out.value(primitive.getAsNumber());
        } else if (primitive.isBoolean()) {
          out.value(primitive.getAsBoolean());
        } else {
          out.value(primitive.getAsString());
        }

      } else if (value.isJsonArray()) {
        out.beginArray();
        for (JsonElement e : value.getAsJsonArray()) {
          write(out, e);
        }
        out.endArray();

      } else if (value.isJsonObject()) {
        out.beginObject();
        for (Map.Entry<String, JsonElement> e : value.getAsJsonObject().entrySet()) {
          out.name(e.getKey());
          write(out, e.getValue());
        }
        out.endObject();

      } else {
        throw new IllegalArgumentException("Couldn't write " + value.getClass());
      }
    }
  };

  public static final TypeAdapterFactory JSON_ELEMENT_FACTORY
      = newTypeHierarchyFactory(JsonElement.class, JSON_ELEMENT);

  private static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
    private final Map<String, T> nameToConstant = new HashMap<String, T>();
    private final Map<T, String> constantToName = new HashMap<T, String>();

    public EnumTypeAdapter(Class<T> classOfT) {
      try {
        for (T constant : classOfT.getEnumConstants()) {
          String name = constant.name();
          SerializedName annotation = classOfT.getField(name).getAnnotation(SerializedName.class);
          if (annotation != null) {
            name = annotation.value();
            for (String alternate : annotation.alternate()) {
              nameToConstant.put(alternate, constant);
            }
          }
          nameToConstant.put(name, constant);
          constantToName.put(constant, name);
        }
      } catch (NoSuchFieldException e) {
        throw new AssertionError("Missing field in " + classOfT.getName(), e);
      }
    }
    @Override public T read(JsonReader in) throws IOException {
      if (in.peek() == JsonToken.NULL) {
        in.nextNull();
        return null;
      }
      return nameToConstant.get(in.nextString());
    }

    @Override public void write(JsonWriter out, T value) throws IOException {
      out.value(value == null ? null : constantToName.get(value));
    }
  }

  public static final TypeAdapterFactory ENUM_FACTORY = new TypeAdapterFactory() {
    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
      Class<? super T> rawType = typeToken.getRawType();
      if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
        return null;
      }
      if (!rawType.isEnum()) {
        rawType = rawType.getSuperclass(); // handle anonymous subclasses
      }
      return (TypeAdapter<T>) new EnumTypeAdapter(rawType);
    }
  };

  public static <TT> TypeAdapterFactory newFactory(
      final TypeToken<TT> type, final TypeAdapter<TT> typeAdapter) {
    return new TypeAdapterFactory() {
      @SuppressWarnings("unchecked") // we use a runtime check to make sure the 'T's equal
      @Override public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        return typeToken.equals(type) ? (TypeAdapter<T>) typeAdapter : null;
      }
    };
  }

  public static <TT> TypeAdapterFactory newFactory(
      final Class<TT> type, final TypeAdapter<TT> typeAdapter) {
    return new TypeAdapterFactory() {
      @SuppressWarnings("unchecked") // we use a runtime check to make sure the 'T's equal
      @Override public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        int PROBE_START_LINE_857 = 857;
		TypeToken<T> p_type_token_504_line_857 = typeToken;
		Class<? super T> type_adapters_1_expr73_line_857 = p_type_token_504_line_857.getRawType();
		Class<TT> p_type_501_line_857 = type;
		boolean type_adapters_1_expr71_line_857 = type_adapters_1_expr73_line_857 == p_type_501_line_857;
		TypeAdapter<TT> p_type_adapter_502_line_857 = null;
		if (type_adapters_1_expr71_line_857) {
			p_type_adapter_502_line_857 = typeAdapter;
		}
		TypeAdapter<T> type_adapters_1_expr70_line_857 = type_adapters_1_expr71_line_857
				? (TypeAdapter<T>) p_type_adapter_502_line_857
				: null;
		int PROBE_END_LINE_857 = 857;
		return type_adapters_1_expr70_line_857;
      }
      @Override public String toString() {
        return "Factory[type=" + type.getName() + ",adapter=" + typeAdapter + "]";
      }
    };
  }

  public static <TT> TypeAdapterFactory newFactory(
      final Class<TT> unboxed, final Class<TT> boxed, final TypeAdapter<? super TT> typeAdapter) {
    return new TypeAdapterFactory() {
      @SuppressWarnings("unchecked") // we use a runtime check to make sure the 'T's equal
      @Override public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        int PROBE_START_LINE_870 = 870;
		TypeToken<T> p_type_token_509_line_870 = typeToken;
		Class<? super T> type_adapters_1_expr75_line_870 = p_type_token_509_line_870.getRawType();
		int PROBE_END_LINE_870 = 870;
		Class<? super T> rawType = type_adapters_1_expr75_line_870;
        int PROBE_START_LINE_871 = 871;
		Class<? super T> v_raw_type_510_line_871 = rawType;
		Class<TT> p_unboxed_505_line_871 = unboxed;
		boolean type_adapters_1_expr80_line_871 = v_raw_type_510_line_871 == p_unboxed_505_line_871;
		boolean type_adapters_1_expr81_line_871 = false;
		if (!type_adapters_1_expr80_line_871) {
			Class<? super T> v_raw_type_510_line_871_v1 = rawType;
			Class<TT> p_boxed_506_line_871 = boxed;
			type_adapters_1_expr81_line_871 = v_raw_type_510_line_871_v1 == p_boxed_506_line_871;
		}
		boolean type_adapters_1_expr79_line_871 = type_adapters_1_expr80_line_871 || type_adapters_1_expr81_line_871;
		boolean type_adapters_1_expr77_line_871 = (type_adapters_1_expr79_line_871);
		TypeAdapter<? super TT> p_type_adapter_507_line_871 = null;
		if (type_adapters_1_expr77_line_871) {
			p_type_adapter_507_line_871 = typeAdapter;
		}
		TypeAdapter<T> type_adapters_1_expr76_line_871 = type_adapters_1_expr77_line_871
				? (TypeAdapter<T>) p_type_adapter_507_line_871
				: null;
		int PROBE_END_LINE_871 = 871;
		return type_adapters_1_expr76_line_871;
      }
      @Override public String toString() {
        return "Factory[type=" + boxed.getName()
            + "+" + unboxed.getName() + ",adapter=" + typeAdapter + "]";
      }
    };
  }

  public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(final Class<TT> base,
      final Class<? extends TT> sub, final TypeAdapter<? super TT> typeAdapter) {
    return new TypeAdapterFactory() {
      @SuppressWarnings("unchecked") // we use a runtime check to make sure the 'T's equal
      @Override public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        int PROBE_START_LINE_885 = 885;
		TypeToken<T> p_type_token_515_line_885 = typeToken;
		Class<? super T> type_adapters_1_expr83_line_885 = p_type_token_515_line_885.getRawType();
		int PROBE_END_LINE_885 = 885;
		Class<? super T> rawType = type_adapters_1_expr83_line_885;
        int PROBE_START_LINE_886 = 886;
		Class<? super T> v_raw_type_516_line_886 = rawType;
		Class<TT> p_base_511_line_886 = base;
		boolean type_adapters_1_expr88_line_886 = v_raw_type_516_line_886 == p_base_511_line_886;
		boolean type_adapters_1_expr89_line_886 = false;
		if (!type_adapters_1_expr88_line_886) {
			Class<? super T> v_raw_type_516_line_886_v1 = rawType;
			Class<? extends TT> p_sub_512_line_886 = sub;
			type_adapters_1_expr89_line_886 = v_raw_type_516_line_886_v1 == p_sub_512_line_886;
		}
		boolean type_adapters_1_expr87_line_886 = type_adapters_1_expr88_line_886 || type_adapters_1_expr89_line_886;
		boolean type_adapters_1_expr85_line_886 = (type_adapters_1_expr87_line_886);
		TypeAdapter<? super TT> p_type_adapter_513_line_886 = null;
		if (type_adapters_1_expr85_line_886) {
			p_type_adapter_513_line_886 = typeAdapter;
		}
		TypeAdapter<T> type_adapters_1_expr84_line_886 = type_adapters_1_expr85_line_886
				? (TypeAdapter<T>) p_type_adapter_513_line_886
				: null;
		int PROBE_END_LINE_886 = 886;
		return type_adapters_1_expr84_line_886;
      }
      @Override public String toString() {
        return "Factory[type=" + base.getName()
            + "+" + sub.getName() + ",adapter=" + typeAdapter + "]";
      }
    };
  }

  /**
   * Returns a factory for all subtypes of {@code typeAdapter}. We do a runtime check to confirm
   * that the deserialized type matches the type requested.
   */
  public static <T1> TypeAdapterFactory newTypeHierarchyFactory(
      final Class<T1> clazz, final TypeAdapter<T1> typeAdapter) {
    return new TypeAdapterFactory() {
      @SuppressWarnings("unchecked")
      @Override public <T2> TypeAdapter<T2> create(Gson gson, TypeToken<T2> typeToken) {
        int PROBE_START_LINE_904 = 904;
		TypeToken<T2> p_type_token_520_line_904 = typeToken;
		Class<? super T2> type_adapters_1_expr91_line_904 = p_type_token_520_line_904.getRawType();
		int PROBE_END_LINE_904 = 904;
		final Class<? super T2> requestedType = type_adapters_1_expr91_line_904;
        int PROBE_START_LINE_905 = 907;
		Class<T1> p_clazz_517_line_905 = clazz;
		Class<? super T2> v_requested_type_521_line_905 = requestedType;
		boolean type_adapters_1_expr93_line_905 = p_clazz_517_line_905.isAssignableFrom(v_requested_type_521_line_905);
		boolean type_adapters_1_expr92_line_905 = !type_adapters_1_expr93_line_905;
		int PROBE_END_LINE_905 = 907;
		if (type_adapters_1_expr92_line_905) {
          return null;
        }
        return (TypeAdapter<T2>) new TypeAdapter<T1>() {
          @Override public void write(JsonWriter out, T1 value) throws IOException {
            typeAdapter.write(out, value);
          }

          @Override public T1 read(JsonReader in) throws IOException {
            T1 result = typeAdapter.read(in);
            if (result != null && !requestedType.isInstance(result)) {
              throw new JsonSyntaxException("Expected a " + requestedType.getName()
                  + " but was " + result.getClass().getName());
            }
            return result;
          }
        };
      }
      @Override public String toString() {
        return "Factory[typeHierarchy=" + clazz.getName() + ",adapter=" + typeAdapter + "]";
      }
    };
  }
}
