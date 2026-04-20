package com.fasterxml.jackson.databind.deser.impl;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.Collection;

/**
 * Helper class used for storing mapping from property name to
 * {@link SettableBeanProperty} instances.
 *<p>
 * Note that this class is used instead of generic {@link java.util.HashMap}
 * for bit of performance gain (and some memory savings): although default
 * implementation is very good for generic use cases, it can be streamlined
 * a bit for specific use case we have. Even relatively small improvements
 * matter since this is directly on the critical path during deserialization,
 * as it is done for each and every POJO property deserialized.
 */
public final class BeanPropertyMap
    implements Iterable<SettableBeanProperty>,
        java.io.Serializable // since 2.1
{
    private static final long serialVersionUID = 1L;

    private final Bucket[] _buckets;
    
    private final int _hashMask;

    private final int _size;

    /**
     * @since 2.5
     */
    private final boolean _caseInsensitive;

    /**
     * Counter we use to keep track of insertion order of properties
     * (to be able to recreate insertion order when needed).
     *<p>
     * Note: is kept up-to-date with additions, but can NOT handle
     * removals (i.e. "holes" may be left)
     */
    private int _nextBucketIndex = 0;

    public BeanPropertyMap(Collection<SettableBeanProperty> properties, boolean caseInsensitivePropertyComparison)
    {
        int PROBE_START_LINE_55 = 55;
		boolean p_case_insensitive_property_comparison_2026_line_55 = caseInsensitivePropertyComparison;
		int PROBE_END_LINE_55 = 55;
		_caseInsensitive = p_case_insensitive_property_comparison_2026_line_55;
        int PROBE_START_LINE_56 = 56;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_properties_2025_line_56 = properties;
		int bean_property_map_1_expr3_line_56 = p_properties_2025_line_56.size();
		int PROBE_END_LINE_56 = 56;
		_size = bean_property_map_1_expr3_line_56;
        int PROBE_START_LINE_57 = 57;
		int f__size_2028_line_57 = _size;
		int bean_property_map_1_expr4_line_57 = findSize(f__size_2028_line_57);
		int PROBE_END_LINE_57 = 57;
		int bucketCount = bean_property_map_1_expr4_line_57;
        int PROBE_START_LINE_58 = 58;
		int v_bucket_count_2029_line_58 = bucketCount;
		int bean_property_map_1_expr6_line_58 = v_bucket_count_2029_line_58 - 1;
		int PROBE_END_LINE_58 = 58;
		_hashMask = bean_property_map_1_expr6_line_58;
        int PROBE_START_LINE_59 = 59;
		int v_bucket_count_2029_line_59 = bucketCount;
		int PROBE_END_LINE_59 = 59;
		Bucket[] buckets = new Bucket[v_bucket_count_2029_line_59];
        int PROBE_START_LINE_60 = 64;
		Collection<com.fasterxml.jackson.databind.deser.SettableBeanProperty> p_properties_2025_line_60 = properties;
		int PROBE_END_LINE_60 = 64;
		for (SettableBeanProperty property : p_properties_2025_line_60) {
            int PROBE_START_LINE_61 = 61;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_property_2032_line_61 = property;
			String bean_property_map_1_expr8_line_61 = getPropertyName(v_property_2032_line_61);
			int PROBE_END_LINE_61 = 61;
			String key = bean_property_map_1_expr8_line_61;
            int PROBE_START_LINE_62 = 62;
			String v_key_2033_line_62 = key;
			int bean_property_map_1_expr10_line_62 = v_key_2033_line_62.hashCode();
			int f__hash_mask_2030_line_62 = _hashMask;
			int bean_property_map_1_expr9_line_62 = bean_property_map_1_expr10_line_62 & f__hash_mask_2030_line_62;
			int PROBE_END_LINE_62 = 62;
			int index = bean_property_map_1_expr9_line_62;
            int PROBE_START_LINE_63 = 63;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] v_buckets_2031_line_63 = buckets;
			int v_index_2034_line_63 = index;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] v_buckets_2031_line_63_v1 = buckets;
			int v_index_2034_line_63_v1 = index;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket bean_property_map_1_expr14_line_63 = v_buckets_2031_line_63_v1[v_index_2034_line_63_v1];
			String v_key_2033_line_63 = key;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_property_2032_line_63 = property;
			int PROBE_END_LINE_63 = 63;
			v_buckets_2031_line_63[v_index_2034_line_63] = new Bucket(bean_property_map_1_expr14_line_63, v_key_2033_line_63, v_property_2032_line_63, _nextBucketIndex++);
        }
        int PROBE_START_LINE_65 = 65;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] v_buckets_2031_line_65 = buckets;
		int PROBE_END_LINE_65 = 65;
		_buckets = v_buckets_2031_line_65;
    }

    private BeanPropertyMap(Bucket[] buckets, int size, int index, boolean caseInsensitivePropertyComparison)
    {
        int PROBE_START_LINE_70 = 70;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] p_buckets_2036_line_70 = buckets;
		int PROBE_END_LINE_70 = 70;
		_buckets = p_buckets_2036_line_70;
        int PROBE_START_LINE_71 = 71;
		int p_size_2037_line_71 = size;
		int PROBE_END_LINE_71 = 71;
		_size = p_size_2037_line_71;
        int PROBE_START_LINE_72 = 72;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] p_buckets_2036_line_72 = buckets;
		int q_length_56_line_72 = p_buckets_2036_line_72.length;
		int bean_property_map_1_expr20_line_72 = q_length_56_line_72 - 1;
		int PROBE_END_LINE_72 = 72;
		_hashMask = bean_property_map_1_expr20_line_72;
        int PROBE_START_LINE_73 = 73;
		int p_index_2038_line_73 = index;
		int PROBE_END_LINE_73 = 73;
		_nextBucketIndex = p_index_2038_line_73;
        int PROBE_START_LINE_74 = 74;
		boolean p_case_insensitive_property_comparison_2039_line_74 = caseInsensitivePropertyComparison;
		int PROBE_END_LINE_74 = 74;
		_caseInsensitive = p_case_insensitive_property_comparison_2039_line_74;
    }
    
    /**
     * Fluent copy method that creates a new instance that is a copy
     * of this instance except for one additional property that is
     * passed as the argument.
     * Note that method does not modify this instance but constructs
     * and returns a new one.
     * 
     * @since 2.0
     */
    public BeanPropertyMap withProperty(SettableBeanProperty newProperty)
    {
        int PROBE_START_LINE_89 = 89;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_89 = _buckets;
		int q_length_57_line_89 = f__buckets_2035_line_89.length;
		int PROBE_END_LINE_89 = 89;
		// first things first: can just copy hash area:
        final int bcount = q_length_57_line_89;
        int PROBE_START_LINE_90 = 90;
		int v_bcount_2041_line_90 = bcount;
		int PROBE_END_LINE_90 = 90;
		Bucket[] newBuckets = new Bucket[v_bcount_2041_line_90];
        int PROBE_START_LINE_91 = 91;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_91 = _buckets;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] v_new_buckets_2042_line_91 = newBuckets;
		int v_bcount_2041_line_91 = bcount;
		int PROBE_END_LINE_91 = 91;
		System.arraycopy(f__buckets_2035_line_91, 0, v_new_buckets_2042_line_91, 0, v_bcount_2041_line_91);
        int PROBE_START_LINE_92 = 92;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_new_property_2040_line_92 = newProperty;
		String bean_property_map_1_expr25_line_92 = getPropertyName(p_new_property_2040_line_92);
		int PROBE_END_LINE_92 = 92;
		final String propName = bean_property_map_1_expr25_line_92;
        int PROBE_START_LINE_94 = 94;
		String v_prop_name_2043_line_94 = propName;
		SettableBeanProperty bean_property_map_1_expr26_line_94 = find(v_prop_name_2043_line_94);
		int PROBE_END_LINE_94 = 94;
		// and then see if it's add or replace:
        SettableBeanProperty oldProp = bean_property_map_1_expr26_line_94;
        int PROBE_START_LINE_95 = 103;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty v_old_prop_2044_line_95 = oldProp;
		boolean bean_property_map_1_expr27_line_95 = v_old_prop_2044_line_95 == null;
		int PROBE_END_LINE_95 = 103;
		if (bean_property_map_1_expr27_line_95) { // add
            int PROBE_START_LINE_99 = 99;
			String v_prop_name_2043_line_99 = propName;
			int bean_property_map_1_expr29_line_99 = v_prop_name_2043_line_99.hashCode();
			int f__hash_mask_2030_line_99 = _hashMask;
			int bean_property_map_1_expr28_line_99 = bean_property_map_1_expr29_line_99 & f__hash_mask_2030_line_99;
			int PROBE_END_LINE_99 = 99;
				// first things first: add or replace?
    	        // can do a straight copy, since all additions are at the front
    	        // and then insert the new property:
    	        int index = bean_property_map_1_expr28_line_99;
    	        int PROBE_START_LINE_100 = 101;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] v_new_buckets_2042_line_100 = newBuckets;
				int v_index_2045_line_100 = index;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] v_new_buckets_2042_line_100_v1 = newBuckets;
				int v_index_2045_line_100_v1 = index;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket bean_property_map_1_expr33_line_100 = v_new_buckets_2042_line_100_v1[v_index_2045_line_100_v1];
				int PROBE_END_LINE_100 = 101;
				v_new_buckets_2042_line_100[v_index_2045_line_100] = new Bucket(bean_property_map_1_expr33_line_100,
    	                propName, newProperty, _nextBucketIndex++);
    	        int PROBE_START_LINE_102 = 102;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] v_new_buckets_2042_line_102 = newBuckets;
				int f__size_2028_line_102 = _size;
				int bean_property_map_1_expr36_line_102 = f__size_2028_line_102 + 1;
				int f__next_bucket_index_2024_line_102 = _nextBucketIndex;
				boolean f__case_insensitive_2027_line_102 = _caseInsensitive;
				int PROBE_END_LINE_102 = 102;
				return new BeanPropertyMap(v_new_buckets_2042_line_102, bean_property_map_1_expr36_line_102, f__next_bucket_index_2024_line_102, f__case_insensitive_2027_line_102);
        }
        // replace: easy, close + replace
        BeanPropertyMap newMap = new BeanPropertyMap(newBuckets, bcount, _nextBucketIndex, _caseInsensitive);
        newMap.replace(newProperty);
        return newMap;
    }

    /**
     * Factory method for constructing a map where all entries use given
     * prefix
     */
    public BeanPropertyMap renameAll(NameTransformer transformer)
    {
        if (transformer == null || (transformer == NameTransformer.NOP)) {
            return this;
        }
        Iterator<SettableBeanProperty> it = iterator();
        ArrayList<SettableBeanProperty> newProps = new ArrayList<SettableBeanProperty>();
        while (it.hasNext()) {
            SettableBeanProperty prop = it.next();
            String newName = transformer.transform(prop.getName());
            prop = prop.withSimpleName(newName);
            JsonDeserializer<?> deser = prop.getValueDeserializer();
            if (deser != null) {
                @SuppressWarnings("unchecked")
                JsonDeserializer<Object> newDeser = (JsonDeserializer<Object>)
                    deser.unwrappingDeserializer(transformer);
                if (newDeser != deser) {
                    prop = prop.withValueDeserializer(newDeser);
                }
            }
            newProps.add(prop);
        }
        // should we try to re-index? Ordering probably changed but called probably doesn't want changes...
        return new BeanPropertyMap(newProps, _caseInsensitive);
    }
    
    public BeanPropertyMap assignIndexes()
    {
        // order is arbitrary, but stable:
        int index = 0;
        int PROBE_START_LINE_144 = 149;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_144 = _buckets;
		int PROBE_END_LINE_144 = 149;
		for (Bucket bucket : f__buckets_2035_line_144) {
            while (true) {
                int PROBE_START_LINE_145 = 145;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2048_line_145 = bucket;
				boolean bean_property_map_1_expr37_line_145 = v_bucket_2048_line_145 != null;
				if (!(bean_property_map_1_expr37_line_145)) {
					break;
				}
				int PROBE_END_LINE_145 = 145;
				int PROBE_START_LINE_146 = 146;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2048_line_146 = bucket;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty q_value_58_line_146 = v_bucket_2048_line_146.value;
				int PROBE_END_LINE_146 = 146;
				q_value_58_line_146.assignIndex(index++);
                int PROBE_START_LINE_147 = 147;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2048_line_147 = bucket;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket q_next_59_line_147 = v_bucket_2048_line_147.next;
				int PROBE_END_LINE_147 = 147;
				bucket = q_next_59_line_147;
            }
        }
        return this;
    }
    
    private final static int findSize(int size)
    {
        int PROBE_START_LINE_156 = 156;
		int p_size_2050_line_156 = size;
		boolean bean_property_map_1_expr46_line_156 = p_size_2050_line_156 <= 32;
		boolean bean_property_map_1_expr43_line_156 = (bean_property_map_1_expr46_line_156);
		int bean_property_map_1_expr44_line_156 = 0;
		int bean_property_map_1_expr45_line_156 = 0;
		if (bean_property_map_1_expr43_line_156) {
			int p_size_2050_line_156_v1 = size;
			int p_size_2050_line_156_v2 = size;
			int bean_property_map_1_expr47_line_156 = p_size_2050_line_156_v1 + p_size_2050_line_156_v2;
			bean_property_map_1_expr44_line_156 = (bean_property_map_1_expr47_line_156);
		} else {
			int p_size_2050_line_156_v3 = size;
			int p_size_2050_line_156_v4 = size;
			int bean_property_map_1_expr50_line_156 = p_size_2050_line_156_v4 >> 2;
			int bean_property_map_1_expr49_line_156 = (bean_property_map_1_expr50_line_156);
			int bean_property_map_1_expr48_line_156 = p_size_2050_line_156_v3 + bean_property_map_1_expr49_line_156;
			bean_property_map_1_expr45_line_156 = (bean_property_map_1_expr48_line_156);
		}
		int bean_property_map_1_expr42_line_156 = bean_property_map_1_expr43_line_156
				? bean_property_map_1_expr44_line_156
				: bean_property_map_1_expr45_line_156;
		int PROBE_END_LINE_156 = 156;
		// For small enough results (32 or less), we'll require <= 50% fill rate; otherwise 80%
        int needed = bean_property_map_1_expr42_line_156;
        int result = 2;
        while (true) {
            int PROBE_START_LINE_158 = 158;
			int v_result_2052_line_158 = result;
			int v_needed_2051_line_158 = needed;
			boolean bean_property_map_1_expr51_line_158 = v_result_2052_line_158 < v_needed_2051_line_158;
			if (!(bean_property_map_1_expr51_line_158)) {
				break;
			}
			int PROBE_END_LINE_158 = 158;
			int PROBE_START_LINE_159 = 159;
			int v_result_2052_line_159 = result;
			int PROBE_END_LINE_159 = 159;
			result += v_result_2052_line_159;
        }
        int PROBE_START_LINE_161 = 161;
		int v_result_2052_line_161 = result;
		int PROBE_END_LINE_161 = 161;
		return v_result_2052_line_161;
    }
    
    // Confining this case insensitivity to this function (and the find method) in case we want to
    // apply a particular locale to the lower case function.  For now, using the default.
    private String getPropertyName(SettableBeanProperty prop) {
        int PROBE_START_LINE_167 = 167;
		boolean f__case_insensitive_2027_line_167 = _caseInsensitive;
		String bean_property_map_1_expr54_line_167 = null;
		String bean_property_map_1_expr55_line_167 = null;
		if (f__case_insensitive_2027_line_167) {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2053_line_167 = prop;
			String bean_property_map_1_expr56_line_167 = p_prop_2053_line_167.getName();
			bean_property_map_1_expr54_line_167 = bean_property_map_1_expr56_line_167.toLowerCase();
		} else {
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_prop_2053_line_167_v1 = prop;
			bean_property_map_1_expr55_line_167 = p_prop_2053_line_167_v1.getName();
		}
		String bean_property_map_1_expr53_line_167 = f__case_insensitive_2027_line_167
				? bean_property_map_1_expr54_line_167
				: bean_property_map_1_expr55_line_167;
		int PROBE_END_LINE_167 = 167;
		return bean_property_map_1_expr53_line_167;
    }

    /*
    /**********************************************************
    /* Iterable, for convenient iterating over all properties
    /**********************************************************
     */

    @Override
    public String toString()
    {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        int count = 0;
        for (SettableBeanProperty prop : getPropertiesInInsertionOrder()) {
            if (prop == null) {
                continue;
            }
            if (count++ > 0) {
                sb.append(", ");
            }
            sb.append(prop.getName());
            sb.append('(');
            sb.append(prop.getType());
            sb.append(')');
        }
        sb.append(']');
        return sb.toString();
    }
    
    /**
     * Accessor for traversing over all contained properties.
     */
    @Override
    public Iterator<SettableBeanProperty> iterator() {
        int PROBE_START_LINE_203 = 203;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_203 = _buckets;
		int PROBE_END_LINE_203 = 203;
		return new IteratorImpl(f__buckets_2035_line_203);
    }
    
    /**
     * Method that will re-create initial insertion-ordering of
     * properties contained in this map. Note that if properties
     * have been removed, array may contain nulls; otherwise
     * it should be consecutive.
     * 
     * @since 2.1
     */
    public SettableBeanProperty[] getPropertiesInInsertionOrder()
    {
        int len = _nextBucketIndex;
        SettableBeanProperty[] result = new SettableBeanProperty[len];
        for (Bucket root : _buckets) {
            for (Bucket bucket = root; bucket != null; bucket = bucket.next) {
                result[bucket.index] = bucket.value;
            }
        }
        return result;
    }

    /*
    /**********************************************************
    /* Public API
    /**********************************************************
     */

    public int size() { return _size; }

    public SettableBeanProperty find(String key)
    {
        int PROBE_START_LINE_236 = 238;
		String p_key_2054_line_236 = key;
		boolean bean_property_map_1_expr58_line_236 = p_key_2054_line_236 == null;
		int PROBE_END_LINE_236 = 238;
		if (bean_property_map_1_expr58_line_236) {
            throw new IllegalArgumentException("Can not pass null property name");
        }
        int PROBE_START_LINE_239 = 241;
		boolean f__case_insensitive_2027_line_239 = _caseInsensitive;
		int PROBE_END_LINE_239 = 241;
		if (f__case_insensitive_2027_line_239) {
            key = key.toLowerCase();
        }
        int PROBE_START_LINE_242 = 242;
		String p_key_2054_line_242 = key;
		int bean_property_map_1_expr60_line_242 = p_key_2054_line_242.hashCode();
		int f__hash_mask_2030_line_242 = _hashMask;
		int bean_property_map_1_expr59_line_242 = bean_property_map_1_expr60_line_242 & f__hash_mask_2030_line_242;
		int PROBE_END_LINE_242 = 242;
		int index = bean_property_map_1_expr59_line_242;
        int PROBE_START_LINE_243 = 243;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_243 = _buckets;
		int v_index_2055_line_243 = index;
		Bucket bean_property_map_1_expr61_line_243 = f__buckets_2035_line_243[v_index_2055_line_243];
		int PROBE_END_LINE_243 = 243;
		Bucket bucket = bean_property_map_1_expr61_line_243;
        int PROBE_START_LINE_245 = 247;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2056_line_245 = bucket;
		boolean bean_property_map_1_expr62_line_245 = v_bucket_2056_line_245 == null;
		int PROBE_END_LINE_245 = 247;
		// Let's unroll first lookup since that is null or match in 90+% cases
        if (bean_property_map_1_expr62_line_245) {
            return null;
        }
        int PROBE_START_LINE_249 = 251;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2056_line_249 = bucket;
		String q_key_60_line_249 = v_bucket_2056_line_249.key;
		String p_key_2054_line_249 = key;
		boolean bean_property_map_1_expr63_line_249 = q_key_60_line_249 == p_key_2054_line_249;
		int PROBE_END_LINE_249 = 251;
		// Primarily we do just identity comparison as keys should be interned
        if (bean_property_map_1_expr63_line_249) {
            return bucket.value;
        }
        while (true) {
            int PROBE_START_LINE_252 = 252;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2056_line_252 = bucket;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket q_next_61_line_252 = v_bucket_2056_line_252.next;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket bean_property_map_1_expr65_line_252 = (bucket = q_next_61_line_252);
			boolean bean_property_map_1_expr64_line_252 = bean_property_map_1_expr65_line_252 != null;
			if (!(bean_property_map_1_expr64_line_252)) {
				break;
			}
			int PROBE_END_LINE_252 = 252;
			if (bucket.key == key) {
                return bucket.value;
            }
        }
        int PROBE_START_LINE_258 = 258;
		String p_key_2054_line_258 = key;
		int v_index_2055_line_258 = index;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty bean_property_map_1_expr67_line_258 = _findWithEquals(
				p_key_2054_line_258, v_index_2055_line_258);
		int PROBE_END_LINE_258 = 258;
		// Do we need fallback for non-interned Strings?
        return bean_property_map_1_expr67_line_258;
    }

    /**
     * Convenience method that tries to find property with given name, and
     * if it is found, call {@link SettableBeanProperty#deserializeAndSet}
     * on it, and return true; or, if not found, return false.
     * Note, too, that if deserialization is attempted, possible exceptions
     * are wrapped if and as necessary, so caller need not handle those.
     * 
     * @since 2.5
     */
    public boolean findDeserializeAndSet(JsonParser p, DeserializationContext ctxt,
            Object bean, String key) throws IOException
    {
        int PROBE_START_LINE_273 = 275;
		boolean f__case_insensitive_2027_line_273 = _caseInsensitive;
		int PROBE_END_LINE_273 = 275;
		if (f__case_insensitive_2027_line_273) {
            key = key.toLowerCase();
        }
        int PROBE_START_LINE_276 = 276;
		String p_key_2060_line_276 = key;
		int bean_property_map_1_expr69_line_276 = p_key_2060_line_276.hashCode();
		int f__hash_mask_2030_line_276 = _hashMask;
		int bean_property_map_1_expr68_line_276 = bean_property_map_1_expr69_line_276 & f__hash_mask_2030_line_276;
		int PROBE_END_LINE_276 = 276;
		int index = bean_property_map_1_expr68_line_276;
        int PROBE_START_LINE_277 = 277;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_277 = _buckets;
		int v_index_2061_line_277 = index;
		Bucket bean_property_map_1_expr70_line_277 = f__buckets_2035_line_277[v_index_2061_line_277];
		int PROBE_END_LINE_277 = 277;
		Bucket bucket = bean_property_map_1_expr70_line_277;
        int PROBE_START_LINE_279 = 281;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2062_line_279 = bucket;
		boolean bean_property_map_1_expr71_line_279 = v_bucket_2062_line_279 == null;
		int PROBE_END_LINE_279 = 281;
		// Let's unroll first lookup since that is null or match in 90+% cases
        if (bean_property_map_1_expr71_line_279) {
            return false;
        }
        int PROBE_START_LINE_283 = 290;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2062_line_283 = bucket;
		String q_key_62_line_283 = v_bucket_2062_line_283.key;
		String p_key_2060_line_283 = key;
		boolean bean_property_map_1_expr72_line_283 = q_key_62_line_283 == p_key_2060_line_283;
		int PROBE_END_LINE_283 = 290;
		// Primarily we do just identity comparison as keys should be interned
        if (bean_property_map_1_expr72_line_283) {
            try {
                int PROBE_START_LINE_285 = 285;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2062_line_285 = bucket;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty q_value_63_line_285 = v_bucket_2062_line_285.value;
				com.fasterxml.jackson.core.JsonParser p_p_2057_line_285 = p;
				com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2058_line_285 = ctxt;
				Object p_bean_2059_line_285 = bean;
				int PROBE_END_LINE_285 = 285;
				q_value_63_line_285.deserializeAndSet(p_p_2057_line_285, p_ctxt_2058_line_285, p_bean_2059_line_285);
            } catch (Exception e) {
                wrapAndThrow(e, bean, key, ctxt);
            }
            return true;
        } 
        int PROBE_START_LINE_291 = 291;
		com.fasterxml.jackson.core.JsonParser p_p_2057_line_291 = p;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2058_line_291 = ctxt;
		Object p_bean_2059_line_291 = bean;
		String p_key_2060_line_291 = key;
		int v_index_2061_line_291 = index;
		boolean bean_property_map_1_expr74_line_291 = _findDeserializeAndSet2(p_p_2057_line_291, p_ctxt_2058_line_291,
				p_bean_2059_line_291, p_key_2060_line_291, v_index_2061_line_291);
		int PROBE_END_LINE_291 = 291;
		return bean_property_map_1_expr74_line_291;
    }
    
    private final boolean _findDeserializeAndSet2(JsonParser p, DeserializationContext ctxt,
            Object bean, String key, int index) throws IOException
    {
        SettableBeanProperty prop = null;
        int PROBE_START_LINE_298 = 298;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_298 = _buckets;
		int p_index_2067_line_298 = index;
		Bucket bean_property_map_1_expr75_line_298 = f__buckets_2035_line_298[p_index_2067_line_298];
		int PROBE_END_LINE_298 = 298;
		Bucket bucket = bean_property_map_1_expr75_line_298;
        while (true) {
            int PROBE_START_LINE_300 = 306;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2069_line_300 = bucket;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket q_next_64_line_300 = v_bucket_2069_line_300.next;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket bean_property_map_1_expr77_line_300 = (bucket = q_next_64_line_300);
			boolean bean_property_map_1_expr76_line_300 = bean_property_map_1_expr77_line_300 == null;
			int PROBE_END_LINE_300 = 306;
			if (bean_property_map_1_expr76_line_300) {
                prop = _findWithEquals(key, index);
                if (prop == null) {
                    return false;
                }
                break;
            }
            int PROBE_START_LINE_307 = 310;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2069_line_307 = bucket;
			String q_key_65_line_307 = v_bucket_2069_line_307.key;
			String p_key_2066_line_307 = key;
			boolean bean_property_map_1_expr79_line_307 = q_key_65_line_307 == p_key_2066_line_307;
			int PROBE_END_LINE_307 = 310;
			if (bean_property_map_1_expr79_line_307) {
                int PROBE_START_LINE_308 = 308;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2069_line_308 = bucket;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty q_value_66_line_308 = v_bucket_2069_line_308.value;
				int PROBE_END_LINE_308 = 308;
				prop = q_value_66_line_308;
                break;
            }
        }
        try {
            int PROBE_START_LINE_313 = 313;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty v_prop_2068_line_313 = prop;
			com.fasterxml.jackson.core.JsonParser p_p_2063_line_313 = p;
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2064_line_313 = ctxt;
			Object p_bean_2065_line_313 = bean;
			int PROBE_END_LINE_313 = 313;
			v_prop_2068_line_313.deserializeAndSet(p_p_2063_line_313, p_ctxt_2064_line_313, p_bean_2065_line_313);
        } catch (Exception e) {
            wrapAndThrow(e, bean, key, ctxt);
        }
        return true;
    }

    /**
     * @since 2.3
     */
    public SettableBeanProperty find(int propertyIndex)
    {
        for (int i = 0, end = _buckets.length; i < end; ++i) {
            for (Bucket bucket = _buckets[i]; bucket != null; bucket = bucket.next) {
                if (bucket.index == propertyIndex) {
                    return bucket.value;
                }
            }
        }
        return null;
    }
    
    /**
     * Specialized method that can be used to replace an existing entry
     * (note: entry MUST exist; otherwise exception is thrown) with
     * specified replacement.
     */
    public void replace(SettableBeanProperty property)
    {
        int PROBE_START_LINE_342 = 342;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_property_2072_line_342 = property;
		String bean_property_map_1_expr82_line_342 = getPropertyName(p_property_2072_line_342);
		int PROBE_END_LINE_342 = 342;
		String name = bean_property_map_1_expr82_line_342;
        int PROBE_START_LINE_343 = 343;
		String v_name_2073_line_343 = name;
		int bean_property_map_1_expr84_line_343 = v_name_2073_line_343.hashCode();
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_343 = _buckets;
		int q_length_67_line_343 = f__buckets_2035_line_343.length;
		int bean_property_map_1_expr86_line_343 = q_length_67_line_343 - 1;
		int bean_property_map_1_expr85_line_343 = (bean_property_map_1_expr86_line_343);
		int bean_property_map_1_expr83_line_343 = bean_property_map_1_expr84_line_343
				& bean_property_map_1_expr85_line_343;
		int PROBE_END_LINE_343 = 343;
		int index = bean_property_map_1_expr83_line_343;

        /* This is bit tricky just because buckets themselves
         * are immutable, so we need to recreate the chain. Fine.
         */
        Bucket tail = null;
        int PROBE_START_LINE_349 = 349;
		int bean_property_map_1_expr87_line_349 = -1;
		int PROBE_END_LINE_349 = 349;
		int foundIndex = bean_property_map_1_expr87_line_349;
        
        int PROBE_START_LINE_350 = 350;
		boolean FOR_STMT_TOGGLE_LINE_351 = false;
		int PROBE_END_LINE_350 = 350;
		for (Bucket bucket = null; true;) {
            int PROBE_START_LINE_353 = 357;
			if (!FOR_STMT_TOGGLE_LINE_351) {
				FOR_STMT_TOGGLE_LINE_351 = true;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_351 = _buckets;
				int v_index_2074_line_351 = index;
				Bucket bean_property_map_1_expr89_line_351 = f__buckets_2035_line_351[v_index_2074_line_351];
				bucket = bean_property_map_1_expr89_line_351;
			} else {
				if (FOR_STMT_TOGGLE_LINE_351) {
					com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2077_line_351_v1 = bucket;
					com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket q_next_67_line_351 = v_bucket_2077_line_351_v1.next;
					bucket = q_next_67_line_351;
				} else {
					FOR_STMT_TOGGLE_LINE_351 = true;
				}
			}
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2077_line_351 = bucket;
			boolean bean_property_map_1_expr90_line_351 = v_bucket_2077_line_351 != null;
			if (!(bean_property_map_1_expr90_line_351)) {
				break;
			}
			int v_found_index_2076_line_353 = foundIndex;
			boolean bean_property_map_1_expr93_line_353 = v_found_index_2076_line_353 < 0;
			boolean bean_property_map_1_expr94_line_353 = true;
			if (bean_property_map_1_expr93_line_353) {
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2077_line_353 = bucket;
				String q_key_68_line_353 = v_bucket_2077_line_353.key;
				String v_name_2073_line_353 = name;
				bean_property_map_1_expr94_line_353 = q_key_68_line_353.equals(v_name_2073_line_353);
			}
			boolean bean_property_map_1_expr92_line_353 = bean_property_map_1_expr93_line_353
					&& bean_property_map_1_expr94_line_353;
			int PROBE_END_LINE_353 = 357;
			// match to remove?
            if (bean_property_map_1_expr92_line_353) {
                int PROBE_START_LINE_354 = 354;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2077_line_354 = bucket;
				int q_index_69_line_354 = v_bucket_2077_line_354.index;
				int PROBE_END_LINE_354 = 354;
				foundIndex = q_index_69_line_354;
            } else {
                int PROBE_START_LINE_356 = 356;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_tail_2075_line_356 = tail;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2077_line_356 = bucket;
				String q_key_70_line_356 = v_bucket_2077_line_356.key;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2077_line_356_v1 = bucket;
				com.fasterxml.jackson.databind.deser.SettableBeanProperty q_value_70_line_356 = v_bucket_2077_line_356_v1.value;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2077_line_356_v2 = bucket;
				int q_index_71_line_356 = v_bucket_2077_line_356_v2.index;
				int PROBE_END_LINE_356 = 356;
				tail = new Bucket(v_tail_2075_line_356, q_key_70_line_356, q_value_70_line_356, q_index_71_line_356);
            }
        }
        int PROBE_START_LINE_360 = 362;
		int v_found_index_2076_line_360 = foundIndex;
		boolean bean_property_map_1_expr98_line_360 = v_found_index_2076_line_360 < 0;
		int PROBE_END_LINE_360 = 362;
		// Not finding specified entry is error, so:
        if (bean_property_map_1_expr98_line_360) {
            throw new NoSuchElementException("No entry '"+property+"' found, can't replace");
        }
        int PROBE_START_LINE_366 = 366;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_366 = _buckets;
		int v_index_2074_line_366 = index;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_tail_2075_line_366 = tail;
		String v_name_2073_line_366 = name;
		com.fasterxml.jackson.databind.deser.SettableBeanProperty p_property_2072_line_366 = property;
		int v_found_index_2076_line_366 = foundIndex;
		int PROBE_END_LINE_366 = 366;
		/* So let's attach replacement in front: useful also because
         * it allows replacement even when iterating over entries
         */
        f__buckets_2035_line_366[v_index_2074_line_366] = new Bucket(v_tail_2075_line_366, v_name_2073_line_366, p_property_2072_line_366, v_found_index_2076_line_366);
    }

    /**
     * Specialized method for removing specified existing entry.
     * NOTE: entry MUST exist, otherwise an exception is thrown.
     */
    public void remove(SettableBeanProperty property)
    {
        // Mostly this is the same as code with 'replace', just bit simpler...
        String name = getPropertyName(property);
        int index = name.hashCode() & (_buckets.length-1);
        Bucket tail = null;
        boolean found = false;
        // slightly complex just because chain is immutable, must recreate
        for (Bucket bucket = _buckets[index]; bucket != null; bucket = bucket.next) {
            // match to remove?
            if (!found && bucket.key.equals(name)) {
                found = true;
            } else {
                tail = new Bucket(tail, bucket.key, bucket.value, bucket.index);
            }
        }
        if (!found) { // must be found
            throw new NoSuchElementException("No entry '"+property+"' found, can't remove");
        }
        _buckets[index] = tail;
    }
    
    /*
    /**********************************************************
    /* Helper methods
    /**********************************************************
     */
    
    private SettableBeanProperty _findWithEquals(String key, int index)
    {
        int PROBE_START_LINE_403 = 403;
		com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2035_line_403 = _buckets;
		int p_index_2081_line_403 = index;
		Bucket bean_property_map_1_expr102_line_403 = f__buckets_2035_line_403[p_index_2081_line_403];
		int PROBE_END_LINE_403 = 403;
		Bucket bucket = bean_property_map_1_expr102_line_403;
        while (true) {
            int PROBE_START_LINE_404 = 404;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2082_line_404 = bucket;
			boolean bean_property_map_1_expr103_line_404 = v_bucket_2082_line_404 != null;
			if (!(bean_property_map_1_expr103_line_404)) {
				break;
			}
			int PROBE_END_LINE_404 = 404;
			int PROBE_START_LINE_405 = 407;
			String p_key_2080_line_405 = key;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2082_line_405 = bucket;
			String q_key_71_line_405 = v_bucket_2082_line_405.key;
			boolean bean_property_map_1_expr104_line_405 = p_key_2080_line_405.equals(q_key_71_line_405);
			int PROBE_END_LINE_405 = 407;
			if (bean_property_map_1_expr104_line_405) {
                return bucket.value;
            }
            int PROBE_START_LINE_408 = 408;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_bucket_2082_line_408 = bucket;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket q_next_72_line_408 = v_bucket_2082_line_408.next;
			int PROBE_END_LINE_408 = 408;
			bucket = q_next_72_line_408;
        }
        return null;
    }

    /**
     * @since 2.5
     */
    protected void wrapAndThrow(Throwable t, Object bean, String fieldName, DeserializationContext ctxt)
        throws IOException
    {
        // inlined 'throwOrReturnThrowable'
        while (true) {
            int PROBE_START_LINE_420 = 420;
			Throwable p_t_2083_line_420 = t;
			boolean bean_property_map_1_expr107_line_420 = p_t_2083_line_420 instanceof InvocationTargetException;
			boolean bean_property_map_1_expr108_line_420 = true;
			if (bean_property_map_1_expr107_line_420) {
				Throwable p_t_2083_line_420_v1 = t;
				Throwable bean_property_map_1_expr109_line_420 = p_t_2083_line_420_v1.getCause();
				bean_property_map_1_expr108_line_420 = bean_property_map_1_expr109_line_420 != null;
			}
			boolean bean_property_map_1_expr106_line_420 = bean_property_map_1_expr107_line_420
					&& bean_property_map_1_expr108_line_420;
			if (!(bean_property_map_1_expr106_line_420)) {
				break;
			}
			int PROBE_END_LINE_420 = 420;
			t = t.getCause();
        }
        int PROBE_START_LINE_424 = 426;
		Throwable p_t_2083_line_424 = t;
		boolean bean_property_map_1_expr110_line_424 = p_t_2083_line_424 instanceof Error;
		int PROBE_END_LINE_424 = 426;
		// Errors to be passed as is
        if (bean_property_map_1_expr110_line_424) {
            throw (Error) t;
        }
        int PROBE_START_LINE_428 = 428;
		com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2086_line_428 = ctxt;
		boolean bean_property_map_1_expr113_line_428 = p_ctxt_2086_line_428 == null;
		boolean bean_property_map_1_expr112_line_428 = (bean_property_map_1_expr113_line_428);
		boolean bean_property_map_1_expr114_line_428 = false;
		if (!bean_property_map_1_expr112_line_428) {
			com.fasterxml.jackson.databind.DeserializationContext p_ctxt_2086_line_428_v1 = ctxt;
			com.fasterxml.jackson.databind.DeserializationFeature q_wrap_exceptions_73_line_428 = DeserializationFeature.WRAP_EXCEPTIONS;
			bean_property_map_1_expr114_line_428 = p_ctxt_2086_line_428_v1.isEnabled(q_wrap_exceptions_73_line_428);
		}
		boolean bean_property_map_1_expr111_line_428 = bean_property_map_1_expr112_line_428
				|| bean_property_map_1_expr114_line_428;
		int PROBE_END_LINE_428 = 428;
		// StackOverflowErrors are tricky ones; need to be careful...
        boolean wrap = bean_property_map_1_expr111_line_428;
        int PROBE_START_LINE_430 = 438;
		Throwable p_t_2083_line_430 = t;
		boolean bean_property_map_1_expr115_line_430 = p_t_2083_line_430 instanceof IOException;
		int PROBE_END_LINE_430 = 438;
		// Ditto for IOExceptions; except we may want to wrap JSON exceptions
        if (bean_property_map_1_expr115_line_430) {
            if (!wrap || !(t instanceof JsonProcessingException)) {
                throw (IOException) t;
            }
        } else {
			int PROBE_START_LINE_434 = 438;
			boolean v_wrap_2087_line_434 = wrap;
			boolean bean_property_map_1_expr116_line_434 = !v_wrap_2087_line_434;
			int PROBE_END_LINE_434 = 438;
			if (bean_property_map_1_expr116_line_434) {
				if (t instanceof RuntimeException) {
					throw (RuntimeException) t;
				}
			}
		}
        int PROBE_START_LINE_439 = 439;
		Throwable p_t_2083_line_439 = t;
		Object p_bean_2084_line_439 = bean;
		String p_field_name_2085_line_439 = fieldName;
		com.fasterxml.jackson.databind.JsonMappingException bean_property_map_1_expr117_line_439 = JsonMappingException
				.wrapWithPath(p_t_2083_line_439, p_bean_2084_line_439, p_field_name_2085_line_439);
		int PROBE_END_LINE_439 = 439;
		throw bean_property_map_1_expr117_line_439;
    }

    /*
    /**********************************************************
    /* Helper beans
    /**********************************************************
     */
    
    private final static class Bucket
        implements java.io.Serializable
    {
        private static final long serialVersionUID = 1L;

        public final Bucket next;
        public final String key;
        public final SettableBeanProperty value;

        /**
         * Index that indicates insertion order of the bucket
         */
        public final int index;
        
        public Bucket(Bucket next, String key, SettableBeanProperty value, int index)
        {
            int PROBE_START_LINE_464 = 464;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket p_next_2088_line_464 = next;
			int PROBE_END_LINE_464 = 464;
			this.next = p_next_2088_line_464;
            int PROBE_START_LINE_465 = 465;
			String p_key_2089_line_465 = key;
			int PROBE_END_LINE_465 = 465;
			this.key = p_key_2089_line_465;
            int PROBE_START_LINE_466 = 466;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty p_value_2090_line_466 = value;
			int PROBE_END_LINE_466 = 466;
			this.value = p_value_2090_line_466;
            int PROBE_START_LINE_467 = 467;
			int p_index_2091_line_467 = index;
			int PROBE_END_LINE_467 = 467;
			this.index = p_index_2091_line_467;
        }
    }

    private final static class IteratorImpl
        implements Iterator<SettableBeanProperty>
    {
        /**
         * Buckets of the map
         */
        private final Bucket[] _buckets;

        /**
         * Bucket that contains next value to return (if any); null if nothing more to iterate
         */
        private Bucket _currentBucket;

        /**
         * Index of the next bucket in bucket array to check.
         */
        private int _nextBucketIndex;
        
        public IteratorImpl(Bucket[] buckets) {
            int PROBE_START_LINE_490 = 490;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] p_buckets_2094_line_490 = buckets;
			int PROBE_END_LINE_490 = 490;
			_buckets = p_buckets_2094_line_490;
            // need to initialize to point to first entry...
            int i = 0;
            int PROBE_START_LINE_492 = 492;
			boolean FOR_STMT_TOGGLE_LINE_493 = false;
			int PROBE_END_LINE_492 = 492;
			for (int len = 0; true; ) {
                int PROBE_START_LINE_494 = 494;
				if (!FOR_STMT_TOGGLE_LINE_493) {
					FOR_STMT_TOGGLE_LINE_493 = true;
					com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2095_line_493 = _buckets;
					int q_length_74_line_493 = f__buckets_2095_line_493.length;
					len = q_length_74_line_493;
				} else {
					if (FOR_STMT_TOGGLE_LINE_493) {
					} else {
						FOR_STMT_TOGGLE_LINE_493 = true;
					}
				}
				int v_i_2096_line_493 = i;
				int v_len_2097_line_493 = len;
				boolean bean_property_map_1_expr132_line_493 = v_i_2096_line_493 < v_len_2097_line_493;
				if (!(bean_property_map_1_expr132_line_493)) {
					break;
				}
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2095_line_494 = _buckets;
				Bucket bean_property_map_1_expr133_line_494 = f__buckets_2095_line_494[i++];
				int PROBE_END_LINE_494 = 494;
				Bucket b = bean_property_map_1_expr133_line_494;
                int PROBE_START_LINE_495 = 498;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_b_2098_line_495 = b;
				boolean bean_property_map_1_expr135_line_495 = v_b_2098_line_495 != null;
				int PROBE_END_LINE_495 = 498;
				if (bean_property_map_1_expr135_line_495) {
                    int PROBE_START_LINE_496 = 496;
					com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_b_2098_line_496 = b;
					int PROBE_END_LINE_496 = 496;
					_currentBucket = v_b_2098_line_496;
                    break;
                }
            }
            int PROBE_START_LINE_500 = 500;
			int v_i_2096_line_500 = i;
			int PROBE_END_LINE_500 = 500;
			_nextBucketIndex = v_i_2096_line_500;
        }

        @Override
        public boolean hasNext() {
            int PROBE_START_LINE_505 = 505;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket f__current_bucket_2099_line_505 = _currentBucket;
			boolean bean_property_map_1_expr138_line_505 = f__current_bucket_2099_line_505 != null;
			int PROBE_END_LINE_505 = 505;
			return bean_property_map_1_expr138_line_505;
        }

        @Override
        public SettableBeanProperty next()
        {
            int PROBE_START_LINE_511 = 511;
			Bucket f__current_bucket_2099_line_511 = _currentBucket;
			int PROBE_END_LINE_511 = 511;
			Bucket curr = f__current_bucket_2099_line_511;
            int PROBE_START_LINE_512 = 514;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_curr_2101_line_512 = curr;
			boolean bean_property_map_1_expr139_line_512 = v_curr_2101_line_512 == null;
			int PROBE_END_LINE_512 = 514;
			if (bean_property_map_1_expr139_line_512) { // sanity check
                throw new NoSuchElementException();
            }
            int PROBE_START_LINE_516 = 516;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_curr_2101_line_516 = curr;
			Bucket q_next_75_line_516 = v_curr_2101_line_516.next;
			int PROBE_END_LINE_516 = 516;
			// need to advance, too
            Bucket b = q_next_75_line_516;
            while (true) {
                int PROBE_START_LINE_517 = 517;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_b_2102_line_517 = b;
				boolean bean_property_map_1_expr141_line_517 = v_b_2102_line_517 == null;
				boolean bean_property_map_1_expr142_line_517 = true;
				if (bean_property_map_1_expr141_line_517) {
					int f__next_bucket_index_2100_line_517 = _nextBucketIndex;
					com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2095_line_517 = _buckets;
					int q_length_76_line_517 = f__buckets_2095_line_517.length;
					bean_property_map_1_expr142_line_517 = f__next_bucket_index_2100_line_517 < q_length_76_line_517;
				}
				boolean bean_property_map_1_expr140_line_517 = bean_property_map_1_expr141_line_517
						&& bean_property_map_1_expr142_line_517;
				if (!(bean_property_map_1_expr140_line_517)) {
					break;
				}
				int PROBE_END_LINE_517 = 517;
				int PROBE_START_LINE_518 = 518;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket[] f__buckets_2095_line_518 = _buckets;
				com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket bean_property_map_1_expr144_line_518 = f__buckets_2095_line_518[_nextBucketIndex++];
				int PROBE_END_LINE_518 = 518;
				b = bean_property_map_1_expr144_line_518;
            }
            int PROBE_START_LINE_520 = 520;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_b_2102_line_520 = b;
			int PROBE_END_LINE_520 = 520;
			_currentBucket = v_b_2102_line_520;
            int PROBE_START_LINE_521 = 521;
			com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap.Bucket v_curr_2101_line_521 = curr;
			com.fasterxml.jackson.databind.deser.SettableBeanProperty q_value_76_line_521 = v_curr_2101_line_521.value;
			int PROBE_END_LINE_521 = 521;
			return q_value_76_line_521;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
