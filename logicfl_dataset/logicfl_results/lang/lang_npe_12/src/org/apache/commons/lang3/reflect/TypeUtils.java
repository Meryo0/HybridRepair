/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.lang3.reflect;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;
import org.apache.commons.lang3.builder.Builder;

/**
 * <p> Utility methods focusing on type inspection, particularly with regard to
 * generics. </p>
 *
 * @since 3.0
 */
public class TypeUtils {

    /**
     * {@link WildcardType} builder.
     * @since 3.2
     */
    public static class WildcardTypeBuilder implements Builder<WildcardType> {
        /**
         * Constructor
         */
        private WildcardTypeBuilder() {
        }
        
        private Type[] upperBounds;
        private Type[] lowerBounds;

        /**
         * Specify upper bounds of the wildcard type to build.
         * @param bounds to set
         * @return {@code this}
         */
        public WildcardTypeBuilder withUpperBounds(final Type... bounds) {
            int PROBE_START_LINE_68 = 68;
			java.lang.reflect.Type[] p_bounds_490_line_68 = bounds;
			int PROBE_END_LINE_68 = 68;
			this.upperBounds = p_bounds_490_line_68;
            return this;
        }

        /**
         * Specify lower bounds of the wildcard type to build.
         * @param bounds to set
         * @return {@code this}
         */
        public WildcardTypeBuilder withLowerBounds(final Type... bounds) {
            int PROBE_START_LINE_78 = 78;
			java.lang.reflect.Type[] p_bounds_492_line_78 = bounds;
			int PROBE_END_LINE_78 = 78;
			this.lowerBounds = p_bounds_492_line_78;
            return this;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public WildcardType build() {
            int PROBE_START_LINE_87 = 87;
			java.lang.reflect.Type[] f_upper_bounds_491_line_87 = upperBounds;
			java.lang.reflect.Type[] f_lower_bounds_493_line_87 = lowerBounds;
			int PROBE_END_LINE_87 = 87;
			return new WildcardTypeImpl(f_upper_bounds_491_line_87, f_lower_bounds_493_line_87);
        }
    }

    /**
     * GenericArrayType implementation class.
     * @since 3.2 
     */
    private static final class GenericArrayTypeImpl implements GenericArrayType {
        private final Type componentType;

        /**
         * Constructor
         * @param componentType of this array type
         */
        private GenericArrayTypeImpl(final Type componentType) {
            this.componentType = componentType;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public Type getGenericComponentType() {
            return componentType;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public String toString() {
            return TypeUtils.toString(this);
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public boolean equals(final Object obj) {
            return obj == this || obj instanceof GenericArrayType && TypeUtils.equals(this, (GenericArrayType) obj);
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public int hashCode() {
            int result = 67 << 4;
            result |= componentType.hashCode();
            return result;
        }
    }

    /**
     * ParameterizedType implementation class.
     * @since 3.2 
     */
    private static final class ParameterizedTypeImpl implements ParameterizedType {
        private final Class<?> raw;
        private final Type useOwner;
        private final Type[] typeArguments;

        /**
         * Constructor
         * @param raw type
         * @param useOwner owner type to use, if any
         * @param typeArguments formal type arguments
         */
        private ParameterizedTypeImpl(final Class<?> raw, final Type useOwner, final Type[] typeArguments) {
            this.raw = raw;
            this.useOwner = useOwner;
            this.typeArguments = typeArguments.clone();
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public Type getRawType() {
            return raw;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public Type getOwnerType() {
            return useOwner;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public Type[] getActualTypeArguments() {
            return typeArguments.clone();
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public String toString() {
            return TypeUtils.toString(this);
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public boolean equals(final Object obj) {
            return obj == this || obj instanceof ParameterizedType && TypeUtils.equals(this, ((ParameterizedType) obj));
        }

        /**
         * {@inheritDoc}
         */
        @SuppressWarnings( "deprecation" )  // ObjectUtils.hashCode(Object) has been deprecated in 3.2
        @Override
        public int hashCode() {
            int result = 71 << 4;
            result |= raw.hashCode();
            result <<= 4;
            result |= ObjectUtils.hashCode(useOwner);
            result <<= 8;
            result |= Arrays.hashCode(typeArguments);
            return result;
        }
    }

    /**
     * WildcardType implementation class.
     * @since 3.2 
     */
    private static final class WildcardTypeImpl implements WildcardType {
        private static final Type[] EMPTY_BOUNDS = new Type[0];

        private final Type[] upperBounds;
        private final Type[] lowerBounds;

        /**
         * Constructor
         * @param upperBounds of this type
         * @param lowerBounds of this type
         */
        private WildcardTypeImpl(final Type[] upperBounds, final Type[] lowerBounds) {
            int PROBE_START_LINE_234 = 234;
			java.lang.reflect.Type[] p_upper_bounds_501_line_234 = upperBounds;
			java.lang.reflect.Type[] f_empty_bounds_500_line_234 = EMPTY_BOUNDS;
			java.lang.reflect.Type[] type_utils_1_expr13_line_234 = ObjectUtils
					.defaultIfNull(p_upper_bounds_501_line_234, f_empty_bounds_500_line_234);
			int PROBE_END_LINE_234 = 234;
			this.upperBounds = type_utils_1_expr13_line_234;
            int PROBE_START_LINE_235 = 235;
			java.lang.reflect.Type[] p_lower_bounds_502_line_235 = lowerBounds;
			java.lang.reflect.Type[] f_empty_bounds_500_line_235 = EMPTY_BOUNDS;
			java.lang.reflect.Type[] type_utils_1_expr17_line_235 = ObjectUtils
					.defaultIfNull(p_lower_bounds_502_line_235, f_empty_bounds_500_line_235);
			int PROBE_END_LINE_235 = 235;
			this.lowerBounds = type_utils_1_expr17_line_235;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public Type[] getUpperBounds() {
            int PROBE_START_LINE_243 = 243;
			java.lang.reflect.Type[] f_upper_bounds_503_line_243 = upperBounds;
			java.lang.reflect.Type[] type_utils_1_expr19_line_243 = f_upper_bounds_503_line_243.clone();
			int PROBE_END_LINE_243 = 243;
			return type_utils_1_expr19_line_243;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public Type[] getLowerBounds() {
            int PROBE_START_LINE_251 = 251;
			java.lang.reflect.Type[] f_lower_bounds_504_line_251 = lowerBounds;
			java.lang.reflect.Type[] type_utils_1_expr20_line_251 = f_lower_bounds_504_line_251.clone();
			int PROBE_END_LINE_251 = 251;
			return type_utils_1_expr20_line_251;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public String toString() {
            return TypeUtils.toString(this);
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public boolean equals(final Object obj) {
            int PROBE_START_LINE_267 = 267;
			Object p_obj_505_line_267 = obj;
			boolean type_utils_1_expr22_line_267 = p_obj_505_line_267 == this;
			boolean type_utils_1_expr24_line_267 = false;
			if (!type_utils_1_expr22_line_267) {
				Object p_obj_505_line_267_v1 = obj;
				boolean type_utils_1_expr25_line_267 = p_obj_505_line_267_v1 instanceof WildcardType;
				boolean type_utils_1_expr26_line_267 = true;
				if (type_utils_1_expr25_line_267) {
					Object p_obj_505_line_267_v2 = obj;
					type_utils_1_expr26_line_267 = TypeUtils.equals(this, (WildcardType) p_obj_505_line_267_v2);
				}
				type_utils_1_expr24_line_267 = type_utils_1_expr25_line_267 && type_utils_1_expr26_line_267;
			}
			boolean type_utils_1_expr21_line_267 = type_utils_1_expr22_line_267 || type_utils_1_expr24_line_267;
			int PROBE_END_LINE_267 = 267;
			return type_utils_1_expr21_line_267;
        }

        /**
         * {@inheritDoc}
         */
        @Override
        public int hashCode() {
            int result = 73 << 8;
            result |= Arrays.hashCode(upperBounds);
            result <<= 8;
            result |= Arrays.hashCode(lowerBounds);
            return result;
        }
    }

    int PROBE_START_LINE_283 = 287;

	public static final org.apache.commons.lang3.reflect.TypeUtils.WildcardTypeBuilder type_utils_1_expr32_line_287 = wildcardType();
	public static final org.apache.commons.lang3.reflect.TypeUtils.WildcardTypeBuilder type_utils_1_expr30_line_287 = type_utils_1_expr32_line_287
			.withUpperBounds(Object.class);
	public static final java.lang.reflect.WildcardType type_utils_1_expr29_line_287 = type_utils_1_expr30_line_287
			.build();

	int PROBE_END_LINE_283 = 287;

	/**
     * A wildcard instance matching {@code ?}.
     * @since 3.2
     */
    public static final WildcardType WILDCARD_ALL = type_utils_1_expr29_line_287;

    /**
     * <p>{@code TypeUtils} instances should NOT be constructed in standard
     * programming. Instead, the class should be used as
     * {@code TypeUtils.isAssignable(cls, toClass)}.</p> <p>This
     * constructor is public to permit tools that require a JavaBean instance to
     * operate.</p>
     */
    public TypeUtils() {
        super();
    }

    /**
     * <p>Checks if the subject type may be implicitly cast to the target type
     * following the Java generics rules. If both types are {@link Class}
     * objects, the method returns the result of
     * {@link ClassUtils#isAssignable(Class, Class)}.</p>
     *
     * @param type the subject type to be assigned to the target type
     * @param toType the target type
     * @return {@code true} if {@code type} is assignable to {@code toType}.
     */
    public static boolean isAssignable(final Type type, final Type toType) {
        int PROBE_START_LINE_311 = 311;
		java.lang.reflect.Type p_type_507_line_311 = type;
		java.lang.reflect.Type p_to_type_508_line_311 = toType;
		boolean type_utils_1_expr33_line_311 = isAssignable(p_type_507_line_311, p_to_type_508_line_311, null);
		int PROBE_END_LINE_311 = 311;
		return type_utils_1_expr33_line_311;
    }

    /**
     * <p>Checks if the subject type may be implicitly cast to the target type
     * following the Java generics rules.</p>
     *
     * @param type the subject type to be assigned to the target type
     * @param toType the target type
     * @param typeVarAssigns optional map of type variable assignments
     * @return {@code true} if {@code type} is assignable to {@code toType}.
     */
    private static boolean isAssignable(final Type type, final Type toType,
            final Map<TypeVariable<?>, Type> typeVarAssigns) {
        int PROBE_START_LINE_325 = 327;
				java.lang.reflect.Type p_to_type_510_line_325 = toType;
				boolean type_utils_1_expr35_line_325 = p_to_type_510_line_325 == null;
				boolean type_utils_1_expr36_line_325 = false;
				if (!type_utils_1_expr35_line_325) {
					java.lang.reflect.Type p_to_type_510_line_325_v1 = toType;
					type_utils_1_expr36_line_325 = p_to_type_510_line_325_v1 instanceof Class<?>;
				}
				boolean type_utils_1_expr34_line_325 = type_utils_1_expr35_line_325 || type_utils_1_expr36_line_325;
				int PROBE_END_LINE_325 = 327;
		if (type_utils_1_expr34_line_325) {
            int PROBE_START_LINE_326 = 326;
			java.lang.reflect.Type p_type_509_line_326 = type;
			java.lang.reflect.Type p_to_type_510_line_326 = toType;
			boolean type_utils_1_expr37_line_326 = isAssignable(p_type_509_line_326, (Class<?>) p_to_type_510_line_326);
			int PROBE_END_LINE_326 = 326;
			return type_utils_1_expr37_line_326;
        }

        int PROBE_START_LINE_329 = 331;
		java.lang.reflect.Type p_to_type_510_line_329 = toType;
		boolean type_utils_1_expr39_line_329 = p_to_type_510_line_329 instanceof ParameterizedType;
		int PROBE_END_LINE_329 = 331;
		if (type_utils_1_expr39_line_329) {
            int PROBE_START_LINE_330 = 330;
			java.lang.reflect.Type p_type_509_line_330 = type;
			java.lang.reflect.Type p_to_type_510_line_330 = toType;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_type_var_assigns_511_line_330 = typeVarAssigns;
			boolean type_utils_1_expr40_line_330 = isAssignable(p_type_509_line_330,
					(ParameterizedType) p_to_type_510_line_330, p_type_var_assigns_511_line_330);
			int PROBE_END_LINE_330 = 330;
			return type_utils_1_expr40_line_330;
        }

        int PROBE_START_LINE_333 = 335;
		java.lang.reflect.Type p_to_type_510_line_333 = toType;
		boolean type_utils_1_expr42_line_333 = p_to_type_510_line_333 instanceof GenericArrayType;
		int PROBE_END_LINE_333 = 335;
		if (type_utils_1_expr42_line_333) {
            return isAssignable(type, (GenericArrayType) toType, typeVarAssigns);
        }

        int PROBE_START_LINE_337 = 339;
		java.lang.reflect.Type p_to_type_510_line_337 = toType;
		boolean type_utils_1_expr43_line_337 = p_to_type_510_line_337 instanceof WildcardType;
		int PROBE_END_LINE_337 = 339;
		if (type_utils_1_expr43_line_337) {
            int PROBE_START_LINE_338 = 338;
			java.lang.reflect.Type p_type_509_line_338 = type;
			java.lang.reflect.Type p_to_type_510_line_338 = toType;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_type_var_assigns_511_line_338 = typeVarAssigns;
			boolean type_utils_1_expr44_line_338 = isAssignable(p_type_509_line_338,
					(WildcardType) p_to_type_510_line_338, p_type_var_assigns_511_line_338);
			int PROBE_END_LINE_338 = 338;
			return type_utils_1_expr44_line_338;
        }

        if (toType instanceof TypeVariable<?>) {
            return isAssignable(type, (TypeVariable<?>) toType, typeVarAssigns);
        }

        throw new IllegalStateException("found an unhandled type: " + toType);
    }

    /**
     * <p>Checks if the subject type may be implicitly cast to the target class
     * following the Java generics rules.</p>
     *
     * @param type the subject type to be assigned to the target type
     * @param toClass the target class
     * @return {@code true} if {@code type} is assignable to {@code toClass}.
     */
    private static boolean isAssignable(final Type type, final Class<?> toClass) {
        int PROBE_START_LINE_357 = 360;
		java.lang.reflect.Type p_type_512_line_357 = type;
		boolean type_utils_1_expr46_line_357 = p_type_512_line_357 == null;
		int PROBE_END_LINE_357 = 360;
		if (type_utils_1_expr46_line_357) {
            int PROBE_START_LINE_359 = 359;
			Class<?> p_to_class_513_line_359 = toClass;
			boolean type_utils_1_expr48_line_359 = p_to_class_513_line_359 == null;
			boolean type_utils_1_expr49_line_359 = false;
			if (!type_utils_1_expr48_line_359) {
				Class<?> p_to_class_513_line_359_v1 = toClass;
				boolean type_utils_1_expr50_line_359 = p_to_class_513_line_359_v1.isPrimitive();
				type_utils_1_expr49_line_359 = !type_utils_1_expr50_line_359;
			}
			boolean type_utils_1_expr47_line_359 = type_utils_1_expr48_line_359 || type_utils_1_expr49_line_359;
			int PROBE_END_LINE_359 = 359;
			// consistency with ClassUtils.isAssignable() behavior
            return type_utils_1_expr47_line_359;
        }

        int PROBE_START_LINE_364 = 366;
		Class<?> p_to_class_513_line_364 = toClass;
		boolean type_utils_1_expr51_line_364 = p_to_class_513_line_364 == null;
		int PROBE_END_LINE_364 = 366;
		// only a null type can be assigned to null type which
        // would have cause the previous to return true
        if (type_utils_1_expr51_line_364) {
            return false;
        }

        int PROBE_START_LINE_369 = 371;
		Class<?> p_to_class_513_line_369 = toClass;
		java.lang.reflect.Type p_type_512_line_369 = type;
		boolean type_utils_1_expr52_line_369 = p_to_class_513_line_369.equals(p_type_512_line_369);
		int PROBE_END_LINE_369 = 371;
		// all types are assignable to themselves
        if (type_utils_1_expr52_line_369) {
            return true;
        }

        int PROBE_START_LINE_373 = 376;
		java.lang.reflect.Type p_type_512_line_373 = type;
		boolean type_utils_1_expr53_line_373 = p_type_512_line_373 instanceof Class<?>;
		int PROBE_END_LINE_373 = 376;
		if (type_utils_1_expr53_line_373) {
            int PROBE_START_LINE_375 = 375;
			java.lang.reflect.Type p_type_512_line_375 = type;
			Class<?> p_to_class_513_line_375 = toClass;
			boolean type_utils_1_expr54_line_375 = ClassUtils.isAssignable((Class<?>) p_type_512_line_375,
					p_to_class_513_line_375);
			int PROBE_END_LINE_375 = 375;
			// just comparing two classes
            return type_utils_1_expr54_line_375;
        }

        int PROBE_START_LINE_378 = 381;
		java.lang.reflect.Type p_type_512_line_378 = type;
		boolean type_utils_1_expr56_line_378 = p_type_512_line_378 instanceof ParameterizedType;
		int PROBE_END_LINE_378 = 381;
		if (type_utils_1_expr56_line_378) {
            int PROBE_START_LINE_380 = 380;
			java.lang.reflect.Type p_type_512_line_380 = type;
			Class<?> type_utils_1_expr58_line_380 = getRawType((ParameterizedType) p_type_512_line_380);
			Class<?> p_to_class_513_line_380 = toClass;
			boolean type_utils_1_expr57_line_380 = isAssignable(type_utils_1_expr58_line_380, p_to_class_513_line_380);
			int PROBE_END_LINE_380 = 380;
			// only have to compare the raw type to the class
            return type_utils_1_expr57_line_380;
        }

        // *
        if (type instanceof TypeVariable<?>) {
            // if any of the bounds are assignable to the class, then the
            // type is assignable to the class.
            for (final Type bound : ((TypeVariable<?>) type).getBounds()) {
                if (isAssignable(bound, toClass)) {
                    return true;
                }
            }

            return false;
        }

        // the only classes to which a generic array type can be assigned
        // are class Object and array classes
        if (type instanceof GenericArrayType) {
            return toClass.equals(Object.class)
                    || toClass.isArray()
                    && isAssignable(((GenericArrayType) type).getGenericComponentType(), toClass
                            .getComponentType());
        }

        // wildcard types are not assignable to a class (though one would think
        // "? super Object" would be assignable to Object)
        if (type instanceof WildcardType) {
            return false;
        }

        throw new IllegalStateException("found an unhandled type: " + type);
    }

    /**
     * <p>Checks if the subject type may be implicitly cast to the target
     * parameterized type following the Java generics rules.</p>
     *
     * @param type the subject type to be assigned to the target type
     * @param toParameterizedType the target parameterized type
     * @param typeVarAssigns a map with type variables
     * @return {@code true} if {@code type} is assignable to {@code toType}.
     */
    private static boolean isAssignable(final Type type, final ParameterizedType toParameterizedType,
            final Map<TypeVariable<?>, Type> typeVarAssigns) {
        int PROBE_START_LINE_425 = 427;
				java.lang.reflect.Type p_type_514_line_425 = type;
				boolean type_utils_1_expr60_line_425 = p_type_514_line_425 == null;
				int PROBE_END_LINE_425 = 427;
		if (type_utils_1_expr60_line_425) {
            return true;
        }

        int PROBE_START_LINE_431 = 433;
		java.lang.reflect.ParameterizedType p_to_parameterized_type_515_line_431 = toParameterizedType;
		boolean type_utils_1_expr61_line_431 = p_to_parameterized_type_515_line_431 == null;
		int PROBE_END_LINE_431 = 433;
		// only a null type can be assigned to null type which
        // would have cause the previous to return true
        if (type_utils_1_expr61_line_431) {
            return false;
        }

        int PROBE_START_LINE_436 = 438;
		java.lang.reflect.ParameterizedType p_to_parameterized_type_515_line_436 = toParameterizedType;
		java.lang.reflect.Type p_type_514_line_436 = type;
		boolean type_utils_1_expr62_line_436 = p_to_parameterized_type_515_line_436.equals(p_type_514_line_436);
		int PROBE_END_LINE_436 = 438;
		// all types are assignable to themselves
        if (type_utils_1_expr62_line_436) {
            return true;
        }

        int PROBE_START_LINE_441 = 441;
		java.lang.reflect.ParameterizedType p_to_parameterized_type_515_line_441 = toParameterizedType;
		Class<?> type_utils_1_expr63_line_441 = getRawType(p_to_parameterized_type_515_line_441);
		int PROBE_END_LINE_441 = 441;
		// get the target type's raw type
        final Class<?> toClass = type_utils_1_expr63_line_441;
        int PROBE_START_LINE_444 = 444;
		java.lang.reflect.Type p_type_514_line_444 = type;
		Class<?> v_to_class_517_line_444 = toClass;
		Map<TypeVariable<?>, Type> type_utils_1_expr64_line_444 = getTypeArguments(p_type_514_line_444,
				v_to_class_517_line_444, null);
		int PROBE_END_LINE_444 = 444;
		// get the subject type's type arguments including owner type arguments
        // and supertype arguments up to and including the target class.
        final Map<TypeVariable<?>, Type> fromTypeVarAssigns = type_utils_1_expr64_line_444;

        int PROBE_START_LINE_447 = 449;
		Map<TypeVariable<?>, java.lang.reflect.Type> v_from_type_var_assigns_518_line_447 = fromTypeVarAssigns;
		boolean type_utils_1_expr65_line_447 = v_from_type_var_assigns_518_line_447 == null;
		int PROBE_END_LINE_447 = 449;
		// null means the two types are not compatible
        if (type_utils_1_expr65_line_447) {
            return false;
        }

        int PROBE_START_LINE_454 = 456;
		Map<TypeVariable<?>, java.lang.reflect.Type> v_from_type_var_assigns_518_line_454 = fromTypeVarAssigns;
		boolean type_utils_1_expr66_line_454 = v_from_type_var_assigns_518_line_454.isEmpty();
		int PROBE_END_LINE_454 = 456;
		// compatible types, but there's no type arguments. this is equivalent
        // to comparing Map< ?, ? > to Map, and raw types are always assignable
        // to parameterized types.
        if (type_utils_1_expr66_line_454) {
            return true;
        }

        int PROBE_START_LINE_459 = 460;
		java.lang.reflect.ParameterizedType p_to_parameterized_type_515_line_459 = toParameterizedType;
		Map<TypeVariable<?>, Type> type_utils_1_expr67_line_459 = getTypeArguments(p_to_parameterized_type_515_line_459,
				toClass, typeVarAssigns);
		int PROBE_END_LINE_459 = 460;
		// get the target type's type arguments including owner type arguments
        final Map<TypeVariable<?>, Type> toTypeVarAssigns = type_utils_1_expr67_line_459;

        int PROBE_START_LINE_463 = 476;
		Map<TypeVariable<?>, java.lang.reflect.Type> v_to_type_var_assigns_519_line_463 = toTypeVarAssigns;
		Set<TypeVariable<?>> type_utils_1_expr68_line_463 = v_to_type_var_assigns_519_line_463.keySet();
		int PROBE_END_LINE_463 = 476;
		// now to check each type argument
        for (final TypeVariable<?> var : type_utils_1_expr68_line_463) {
            int PROBE_START_LINE_464 = 464;
			TypeVariable<?> v_var_520_line_464 = var;
			Map<TypeVariable<?>, java.lang.reflect.Type> v_to_type_var_assigns_519_line_464 = toTypeVarAssigns;
			Type type_utils_1_expr69_line_464 = unrollVariableAssignments(v_var_520_line_464,
					v_to_type_var_assigns_519_line_464);
			int PROBE_END_LINE_464 = 464;
			final Type toTypeArg = type_utils_1_expr69_line_464;
            int PROBE_START_LINE_465 = 465;
			TypeVariable<?> v_var_520_line_465 = var;
			Map<TypeVariable<?>, java.lang.reflect.Type> v_from_type_var_assigns_518_line_465 = fromTypeVarAssigns;
			Type type_utils_1_expr70_line_465 = unrollVariableAssignments(v_var_520_line_465,
					v_from_type_var_assigns_518_line_465);
			int PROBE_END_LINE_465 = 465;
			final Type fromTypeArg = type_utils_1_expr70_line_465;

            int PROBE_START_LINE_470 = 475;
			java.lang.reflect.Type v_from_type_arg_522_line_470 = fromTypeArg;
			boolean type_utils_1_expr73_line_470 = v_from_type_arg_522_line_470 != null;
			boolean type_utils_1_expr74_line_471 = true;
			if (type_utils_1_expr73_line_470) {
				java.lang.reflect.Type v_to_type_arg_521_line_471 = toTypeArg;
				java.lang.reflect.Type v_from_type_arg_522_line_471 = fromTypeArg;
				boolean type_utils_1_expr75_line_471 = v_to_type_arg_521_line_471.equals(v_from_type_arg_522_line_471);
				type_utils_1_expr74_line_471 = !type_utils_1_expr75_line_471;
			}
			boolean type_utils_1_expr72_line_470 = type_utils_1_expr73_line_470 && type_utils_1_expr74_line_471;
			boolean type_utils_1_expr71_line_470 = type_utils_1_expr72_line_470
					&& !(toTypeArg instanceof WildcardType && isAssignable(fromTypeArg, toTypeArg, typeVarAssigns));
			int PROBE_END_LINE_470 = 475;
			// parameters must either be absent from the subject type, within
            // the bounds of the wildcard type, or be an exact match to the
            // parameters of the target type.
            if (type_utils_1_expr71_line_470) {
                return false;
            }
        }
        return true;
    }

    /**
     * Look up {@code var} in {@code typeVarAssigns} <em>transitively</em>,
     * i.e. keep looking until the value found is <em>not</em> a type variable.
     * @param var the type variable to look up
     * @param typeVarAssigns the map used for the look up
     * @return Type or {@code null} if some variable was not in the map
     * @since 3.2
     */
    private static Type unrollVariableAssignments(TypeVariable<?> var, final Map<TypeVariable<?>, Type> typeVarAssigns) {
        Type result = null;
        do {
            int PROBE_START_LINE_491 = 491;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_type_var_assigns_524_line_491 = typeVarAssigns;
			TypeVariable<?> p_var_523_line_491 = var;
			java.lang.reflect.Type type_utils_1_expr77_line_491 = p_type_var_assigns_524_line_491
					.get(p_var_523_line_491);
			int PROBE_END_LINE_491 = 491;
			result = type_utils_1_expr77_line_491;
            int PROBE_START_LINE_492 = 495;
			java.lang.reflect.Type v_result_525_line_492 = result;
			boolean type_utils_1_expr79_line_492 = v_result_525_line_492 instanceof TypeVariable<?>;
			boolean type_utils_1_expr80_line_492 = true;
			if (type_utils_1_expr79_line_492) {
				java.lang.reflect.Type v_result_525_line_492_v1 = result;
				TypeVariable<?> p_var_523_line_492 = var;
				boolean type_utils_1_expr81_line_492 = v_result_525_line_492_v1.equals(p_var_523_line_492);
				type_utils_1_expr80_line_492 = !type_utils_1_expr81_line_492;
			}
			boolean type_utils_1_expr78_line_492 = type_utils_1_expr79_line_492 && type_utils_1_expr80_line_492;
			int PROBE_END_LINE_492 = 495;
			if (type_utils_1_expr78_line_492) {
                int PROBE_START_LINE_493 = 493;
				java.lang.reflect.Type v_result_525_line_493 = result;
				int PROBE_END_LINE_493 = 493;
				var = (TypeVariable<?>) v_result_525_line_493;
                continue;
            }
            break;
        } while (true);
        int PROBE_START_LINE_498 = 498;
		java.lang.reflect.Type v_result_525_line_498 = result;
		int PROBE_END_LINE_498 = 498;
		return v_result_525_line_498;
    }

    /**
     * <p>Checks if the subject type may be implicitly cast to the target
     * generic array type following the Java generics rules.</p>
     *
     * @param type the subject type to be assigned to the target type
     * @param toGenericArrayType the target generic array type
     * @param typeVarAssigns a map with type variables
     * @return {@code true} if {@code type} is assignable to
     * {@code toGenericArrayType}.
     */
    private static boolean isAssignable(final Type type, final GenericArrayType toGenericArrayType,
            final Map<TypeVariable<?>, Type> typeVarAssigns) {
        if (type == null) {
            return true;
        }

        // only a null type can be assigned to null type which
        // would have cause the previous to return true
        if (toGenericArrayType == null) {
            return false;
        }

        // all types are assignable to themselves
        if (toGenericArrayType.equals(type)) {
            return true;
        }

        final Type toComponentType = toGenericArrayType.getGenericComponentType();

        if (type instanceof Class<?>) {
            final Class<?> cls = (Class<?>) type;

            // compare the component types
            return cls.isArray()
                    && isAssignable(cls.getComponentType(), toComponentType, typeVarAssigns);
        }

        if (type instanceof GenericArrayType) {
            // compare the component types
            return isAssignable(((GenericArrayType) type).getGenericComponentType(),
                    toComponentType, typeVarAssigns);
        }

        if (type instanceof WildcardType) {
            // so long as one of the upper bounds is assignable, it's good
            for (final Type bound : getImplicitUpperBounds((WildcardType) type)) {
                if (isAssignable(bound, toGenericArrayType)) {
                    return true;
                }
            }

            return false;
        }

        if (type instanceof TypeVariable<?>) {
            // probably should remove the following logic and just return false.
            // type variables cannot specify arrays as bounds.
            for (final Type bound : getImplicitBounds((TypeVariable<?>) type)) {
                if (isAssignable(bound, toGenericArrayType)) {
                    return true;
                }
            }

            return false;
        }

        if (type instanceof ParameterizedType) {
            // the raw type of a parameterized type is never an array or
            // generic array, otherwise the declaration would look like this:
            // Collection[]< ? extends String > collection;
            return false;
        }

        throw new IllegalStateException("found an unhandled type: " + type);
    }

    /**
     * <p>Checks if the subject type may be implicitly cast to the target
     * wildcard type following the Java generics rules.</p>
     *
     * @param type the subject type to be assigned to the target type
     * @param toWildcardType the target wildcard type
     * @param typeVarAssigns a map with type variables
     * @return {@code true} if {@code type} is assignable to
     * {@code toWildcardType}.
     */
    private static boolean isAssignable(final Type type, final WildcardType toWildcardType,
            final Map<TypeVariable<?>, Type> typeVarAssigns) {
        int PROBE_START_LINE_589 = 591;
				java.lang.reflect.Type p_type_529_line_589 = type;
				boolean type_utils_1_expr84_line_589 = p_type_529_line_589 == null;
				int PROBE_END_LINE_589 = 591;
		if (type_utils_1_expr84_line_589) {
            return true;
        }

        int PROBE_START_LINE_595 = 597;
		java.lang.reflect.WildcardType p_to_wildcard_type_530_line_595 = toWildcardType;
		boolean type_utils_1_expr85_line_595 = p_to_wildcard_type_530_line_595 == null;
		int PROBE_END_LINE_595 = 597;
		// only a null type can be assigned to null type which
        // would have cause the previous to return true
        if (type_utils_1_expr85_line_595) {
            return false;
        }

        int PROBE_START_LINE_600 = 602;
		java.lang.reflect.WildcardType p_to_wildcard_type_530_line_600 = toWildcardType;
		java.lang.reflect.Type p_type_529_line_600 = type;
		boolean type_utils_1_expr86_line_600 = p_to_wildcard_type_530_line_600.equals(p_type_529_line_600);
		int PROBE_END_LINE_600 = 602;
		// all types are assignable to themselves
        if (type_utils_1_expr86_line_600) {
            return true;
        }

        int PROBE_START_LINE_604 = 604;
		java.lang.reflect.WildcardType p_to_wildcard_type_530_line_604 = toWildcardType;
		Type[] type_utils_1_expr87_line_604 = getImplicitUpperBounds(p_to_wildcard_type_530_line_604);
		int PROBE_END_LINE_604 = 604;
		final Type[] toUpperBounds = type_utils_1_expr87_line_604;
        int PROBE_START_LINE_605 = 605;
		java.lang.reflect.WildcardType p_to_wildcard_type_530_line_605 = toWildcardType;
		Type[] type_utils_1_expr88_line_605 = getImplicitLowerBounds(p_to_wildcard_type_530_line_605);
		int PROBE_END_LINE_605 = 605;
		final Type[] toLowerBounds = type_utils_1_expr88_line_605;

        int PROBE_START_LINE_607 = 642;
		java.lang.reflect.Type p_type_529_line_607 = type;
		boolean type_utils_1_expr89_line_607 = p_type_529_line_607 instanceof WildcardType;
		int PROBE_END_LINE_607 = 642;
		if (type_utils_1_expr89_line_607) {
            final WildcardType wildcardType = (WildcardType) type;
            final Type[] upperBounds = getImplicitUpperBounds(wildcardType);
            final Type[] lowerBounds = getImplicitLowerBounds(wildcardType);

            for (Type toBound : toUpperBounds) {
                // if there are assignments for unresolved type variables,
                // now's the time to substitute them.
                toBound = substituteTypeVariables(toBound, typeVarAssigns);

                // each upper bound of the subject type has to be assignable to
                // each
                // upper bound of the target type
                for (final Type bound : upperBounds) {
                    if (!isAssignable(bound, toBound, typeVarAssigns)) {
                        return false;
                    }
                }
            }

            for (Type toBound : toLowerBounds) {
                // if there are assignments for unresolved type variables,
                // now's the time to substitute them.
                toBound = substituteTypeVariables(toBound, typeVarAssigns);

                // each lower bound of the target type has to be assignable to
                // each
                // lower bound of the subject type
                for (final Type bound : lowerBounds) {
                    if (!isAssignable(toBound, bound, typeVarAssigns)) {
                        return false;
                    }
                }
            }
            return true;
        }

        int PROBE_START_LINE_644 = 651;
		java.lang.reflect.Type[] v_to_upper_bounds_532_line_644 = toUpperBounds;
		int PROBE_END_LINE_644 = 651;
		for (final Type toBound : v_to_upper_bounds_532_line_644) {
            int PROBE_START_LINE_647 = 650;
			java.lang.reflect.Type p_type_529_line_647 = type;
			java.lang.reflect.Type v_to_bound_534_line_647 = toBound;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_type_var_assigns_531_line_647 = typeVarAssigns;
			java.lang.reflect.Type type_utils_1_expr92_line_647 = substituteTypeVariables(v_to_bound_534_line_647,
					p_type_var_assigns_531_line_647);
			boolean type_utils_1_expr91_line_647 = isAssignable(p_type_529_line_647, type_utils_1_expr92_line_647,
					typeVarAssigns);
			boolean type_utils_1_expr90_line_647 = !type_utils_1_expr91_line_647;
			int PROBE_END_LINE_647 = 650;
			// if there are assignments for unresolved type variables,
            // now's the time to substitute them.
            if (type_utils_1_expr90_line_647) {
                return false;
            }
        }

        int PROBE_START_LINE_653 = 660;
		java.lang.reflect.Type[] v_to_lower_bounds_533_line_653 = toLowerBounds;
		int PROBE_END_LINE_653 = 660;
		for (final Type toBound : v_to_lower_bounds_533_line_653) {
            int PROBE_START_LINE_656 = 659;
			java.lang.reflect.Type v_to_bound_535_line_656 = toBound;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_type_var_assigns_531_line_656 = typeVarAssigns;
			java.lang.reflect.Type type_utils_1_expr95_line_656 = substituteTypeVariables(v_to_bound_535_line_656,
					p_type_var_assigns_531_line_656);
			java.lang.reflect.Type p_type_529_line_656 = type;
			boolean type_utils_1_expr94_line_656 = isAssignable(type_utils_1_expr95_line_656, p_type_529_line_656,
					typeVarAssigns);
			boolean type_utils_1_expr93_line_656 = !type_utils_1_expr94_line_656;
			int PROBE_END_LINE_656 = 659;
			// if there are assignments for unresolved type variables,
            // now's the time to substitute them.
            if (type_utils_1_expr93_line_656) {
                return false;
            }
        }
        return true;
    }

    /**
     * <p>Checks if the subject type may be implicitly cast to the target type
     * variable following the Java generics rules.</p>
     *
     * @param type the subject type to be assigned to the target type
     * @param toTypeVariable the target type variable
     * @param typeVarAssigns a map with type variables
     * @return {@code true} if {@code type} is assignable to
     * {@code toTypeVariable}.
     */
    private static boolean isAssignable(final Type type, final TypeVariable<?> toTypeVariable,
            final Map<TypeVariable<?>, Type> typeVarAssigns) {
        if (type == null) {
            return true;
        }

        // only a null type can be assigned to null type which
        // would have cause the previous to return true
        if (toTypeVariable == null) {
            return false;
        }

        // all types are assignable to themselves
        if (toTypeVariable.equals(type)) {
            return true;
        }

        if (type instanceof TypeVariable<?>) {
            // a type variable is assignable to another type variable, if
            // and only if the former is the latter, extends the latter, or
            // is otherwise a descendant of the latter.
            final Type[] bounds = getImplicitBounds((TypeVariable<?>) type);

            for (final Type bound : bounds) {
                if (isAssignable(bound, toTypeVariable, typeVarAssigns)) {
                    return true;
                }
            }
        }

        if (type instanceof Class<?> || type instanceof ParameterizedType
                || type instanceof GenericArrayType || type instanceof WildcardType) {
            return false;
        }

        throw new IllegalStateException("found an unhandled type: " + type);
    }

    /**
     * <p>Find the mapping for {@code type} in {@code typeVarAssigns}.</p>
     *
     * @param type the type to be replaced
     * @param typeVarAssigns the map with type variables
     * @return the replaced type
     * @throws IllegalArgumentException if the type cannot be substituted
     */
    private static Type substituteTypeVariables(final Type type, final Map<TypeVariable<?>, Type> typeVarAssigns) {
        int PROBE_START_LINE_721 = 729;
		java.lang.reflect.Type p_type_539_line_721 = type;
		boolean type_utils_1_expr97_line_721 = p_type_539_line_721 instanceof TypeVariable<?>;
		boolean type_utils_1_expr98_line_721 = true;
		if (type_utils_1_expr97_line_721) {
			Map<TypeVariable<?>, java.lang.reflect.Type> p_type_var_assigns_540_line_721 = typeVarAssigns;
			type_utils_1_expr98_line_721 = p_type_var_assigns_540_line_721 != null;
		}
		boolean type_utils_1_expr96_line_721 = type_utils_1_expr97_line_721 && type_utils_1_expr98_line_721;
		int PROBE_END_LINE_721 = 729;
		if (type_utils_1_expr96_line_721) {
            final Type replacementType = typeVarAssigns.get(type);

            if (replacementType == null) {
                throw new IllegalArgumentException("missing assignment type for type variable "
                        + type);
            }
            return replacementType;
        }
        int PROBE_START_LINE_730 = 730;
		java.lang.reflect.Type p_type_539_line_730 = type;
		int PROBE_END_LINE_730 = 730;
		return p_type_539_line_730;
    }

    /**
     * <p>Retrieves all the type arguments for this parameterized type
     * including owner hierarchy arguments such as
     * {@code Outer<K,V>.Inner<T>.DeepInner<E>} .
     * The arguments are returned in a
     * {@link Map} specifying the argument type for each {@link TypeVariable}.
     * </p>
     *
     * @param type specifies the subject parameterized type from which to
     *             harvest the parameters.
     * @return a {@code Map} of the type arguments to their respective type
     * variables.
     */
    public static Map<TypeVariable<?>, Type> getTypeArguments(final ParameterizedType type) {
        return getTypeArguments(type, getRawType(type), null);
    }

    /**
     * <p>Gets the type arguments of a class/interface based on a subtype. For
     * instance, this method will determine that both of the parameters for the
     * interface {@link Map} are {@link Object} for the subtype
     * {@link java.util.Properties Properties} even though the subtype does not
     * directly implement the {@code Map} interface.</p>
     * <p>This method returns {@code null} if {@code type} is not assignable to
     * {@code toClass}. It returns an empty map if none of the classes or
     * interfaces in its inheritance hierarchy specify any type arguments.</p>
     * <p>A side effect of this method is that it also retrieves the type
     * arguments for the classes and interfaces that are part of the hierarchy
     * between {@code type} and {@code toClass}. So with the above
     * example, this method will also determine that the type arguments for
     * {@link java.util.Hashtable Hashtable} are also both {@code Object}.
     * In cases where the interface specified by {@code toClass} is
     * (indirectly) implemented more than once (e.g. where {@code toClass}
     * specifies the interface {@link java.lang.Iterable Iterable} and
     * {@code type} specifies a parameterized type that implements both
     * {@link java.util.Set Set} and {@link java.util.Collection Collection}),
     * this method will look at the inheritance hierarchy of only one of the
     * implementations/subclasses; the first interface encountered that isn't a
     * subinterface to one of the others in the {@code type} to
     * {@code toClass} hierarchy.</p>
     *
     * @param type the type from which to determine the type parameters of
     * {@code toClass}
     * @param toClass the class whose type parameters are to be determined based
     * on the subtype {@code type}
     * @return a {@code Map} of the type assignments for the type variables in
     * each type in the inheritance hierarchy from {@code type} to
     * {@code toClass} inclusive.
     */
    public static Map<TypeVariable<?>, Type> getTypeArguments(final Type type, final Class<?> toClass) {
        return getTypeArguments(type, toClass, null);
    }

    /**
     * <p>Return a map of the type arguments of @{code type} in the context of {@code toClass}.</p>
     *
     * @param type the type in question
     * @param toClass the class
     * @param subtypeVarAssigns a map with type variables
     * @return the {@code Map} with type arguments
     */
    private static Map<TypeVariable<?>, Type> getTypeArguments(final Type type, final Class<?> toClass,
            final Map<TypeVariable<?>, Type> subtypeVarAssigns) {
        int PROBE_START_LINE_796 = 798;
				java.lang.reflect.Type p_type_544_line_796 = type;
				boolean type_utils_1_expr99_line_796 = p_type_544_line_796 instanceof Class<?>;
				int PROBE_END_LINE_796 = 798;
		if (type_utils_1_expr99_line_796) {
            int PROBE_START_LINE_797 = 797;
			java.lang.reflect.Type p_type_544_line_797 = type;
			Class<?> p_to_class_545_line_797 = toClass;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_subtype_var_assigns_546_line_797 = subtypeVarAssigns;
			Map<TypeVariable<?>, java.lang.reflect.Type> type_utils_1_expr100_line_797 = getTypeArguments(
					(Class<?>) p_type_544_line_797, p_to_class_545_line_797, p_subtype_var_assigns_546_line_797);
			int PROBE_END_LINE_797 = 797;
			return type_utils_1_expr100_line_797;
        }

        int PROBE_START_LINE_800 = 802;
		java.lang.reflect.Type p_type_544_line_800 = type;
		boolean type_utils_1_expr102_line_800 = p_type_544_line_800 instanceof ParameterizedType;
		int PROBE_END_LINE_800 = 802;
		if (type_utils_1_expr102_line_800) {
            int PROBE_START_LINE_801 = 801;
			java.lang.reflect.Type p_type_544_line_801 = type;
			Class<?> p_to_class_545_line_801 = toClass;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_subtype_var_assigns_546_line_801 = subtypeVarAssigns;
			Map<TypeVariable<?>, java.lang.reflect.Type> type_utils_1_expr103_line_801 = getTypeArguments(
					(ParameterizedType) p_type_544_line_801, p_to_class_545_line_801,
					p_subtype_var_assigns_546_line_801);
			int PROBE_END_LINE_801 = 801;
			return type_utils_1_expr103_line_801;
        }

        if (type instanceof GenericArrayType) {
            return getTypeArguments(((GenericArrayType) type).getGenericComponentType(), toClass
                    .isArray() ? toClass.getComponentType() : toClass, subtypeVarAssigns);
        }

        // since wildcard types are not assignable to classes, should this just
        // return null?
        if (type instanceof WildcardType) {
            for (final Type bound : getImplicitUpperBounds((WildcardType) type)) {
                // find the first bound that is assignable to the target class
                if (isAssignable(bound, toClass)) {
                    return getTypeArguments(bound, toClass, subtypeVarAssigns);
                }
            }

            return null;
        }

        if (type instanceof TypeVariable<?>) {
            for (final Type bound : getImplicitBounds((TypeVariable<?>) type)) {
                // find the first bound that is assignable to the target class
                if (isAssignable(bound, toClass)) {
                    return getTypeArguments(bound, toClass, subtypeVarAssigns);
                }
            }

            return null;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    /**
     * <p>Return a map of the type arguments of a parameterized type in the context of {@code toClass}.</p>
     *
     * @param parameterizedType the parameterized type
     * @param toClass the class
     * @param subtypeVarAssigns a map with type variables
     * @return the {@code Map} with type arguments
     */
    private static Map<TypeVariable<?>, Type> getTypeArguments(
            final ParameterizedType parameterizedType, final Class<?> toClass,
            final Map<TypeVariable<?>, Type> subtypeVarAssigns) {
        int PROBE_START_LINE_846 = 846;
				java.lang.reflect.ParameterizedType p_parameterized_type_547_line_846 = parameterizedType;
				Class<?> type_utils_1_expr105_line_846 = getRawType(p_parameterized_type_547_line_846);
				int PROBE_END_LINE_846 = 846;
		final Class<?> cls = type_utils_1_expr105_line_846;

        int PROBE_START_LINE_849 = 851;
		Class<?> v_cls_550_line_849 = cls;
		Class<?> p_to_class_548_line_849 = toClass;
		boolean type_utils_1_expr107_line_849 = isAssignable(v_cls_550_line_849, p_to_class_548_line_849);
		boolean type_utils_1_expr106_line_849 = !type_utils_1_expr107_line_849;
		int PROBE_END_LINE_849 = 851;
		// make sure they're assignable
        if (type_utils_1_expr106_line_849) {
            return null;
        }

        int PROBE_START_LINE_853 = 853;
		java.lang.reflect.ParameterizedType p_parameterized_type_547_line_853 = parameterizedType;
		Type type_utils_1_expr108_line_853 = p_parameterized_type_547_line_853.getOwnerType();
		int PROBE_END_LINE_853 = 853;
		final Type ownerType = type_utils_1_expr108_line_853;
        Map<TypeVariable<?>, Type> typeVarAssigns = null;

        int PROBE_START_LINE_856 = 865;
		java.lang.reflect.Type v_owner_type_551_line_856 = ownerType;
		boolean type_utils_1_expr109_line_856 = v_owner_type_551_line_856 instanceof ParameterizedType;
		int PROBE_END_LINE_856 = 865;
		if (type_utils_1_expr109_line_856) {
            // get the owner type arguments first
            final ParameterizedType parameterizedOwnerType = (ParameterizedType) ownerType;
            typeVarAssigns = getTypeArguments(parameterizedOwnerType,
                    getRawType(parameterizedOwnerType), subtypeVarAssigns);
        } else {
            int PROBE_START_LINE_863 = 864;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_subtype_var_assigns_549_line_863 = subtypeVarAssigns;
			boolean type_utils_1_expr112_line_863 = p_subtype_var_assigns_549_line_863 == null;
			Map<TypeVariable<?>, java.lang.reflect.Type> p_subtype_var_assigns_549_line_864 = null;
			if (!type_utils_1_expr112_line_863) {
				p_subtype_var_assigns_549_line_864 = subtypeVarAssigns;
			}
			Map<TypeVariable<?>, java.lang.reflect.Type> type_utils_1_expr111_line_863 = type_utils_1_expr112_line_863
					? new HashMap<TypeVariable<?>, Type>()
					: new HashMap<TypeVariable<?>, Type>(p_subtype_var_assigns_549_line_864);
			int PROBE_END_LINE_863 = 864;
			// no owner, prep the type variable assignments map
            typeVarAssigns = type_utils_1_expr111_line_863;
        }

        int PROBE_START_LINE_868 = 868;
		java.lang.reflect.ParameterizedType p_parameterized_type_547_line_868 = parameterizedType;
		Type[] type_utils_1_expr115_line_868 = p_parameterized_type_547_line_868.getActualTypeArguments();
		int PROBE_END_LINE_868 = 868;
		// get the subject parameterized type's arguments
        final Type[] typeArgs = type_utils_1_expr115_line_868;
        int PROBE_START_LINE_870 = 870;
		Class<?> v_cls_550_line_870 = cls;
		TypeVariable<?>[] type_utils_1_expr116_line_870 = v_cls_550_line_870.getTypeParameters();
		int PROBE_END_LINE_870 = 870;
		// and get the corresponding type variables from the raw class
        final TypeVariable<?>[] typeParams = type_utils_1_expr116_line_870;

        // map the arguments to their respective type variables
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_874 = 874;
			int v_i_555_line_873 = i;
			TypeVariable<?>[] v_type_params_554_line_873 = typeParams;
			int q_length_13_line_873 = v_type_params_554_line_873.length;
			boolean type_utils_1_expr118_line_873 = v_i_555_line_873 < q_length_13_line_873;
			if (!(type_utils_1_expr118_line_873)) {
				break;
			}
			java.lang.reflect.Type[] v_type_args_553_line_874 = typeArgs;
			int v_i_555_line_874 = i;
			Type type_utils_1_expr120_line_874 = v_type_args_553_line_874[v_i_555_line_874];
			int PROBE_END_LINE_874 = 874;
			final Type typeArg = type_utils_1_expr120_line_874;
            int PROBE_START_LINE_875 = 876;
			Map<TypeVariable<?>, java.lang.reflect.Type> v_type_var_assigns_552_line_875 = typeVarAssigns;
			TypeVariable<?>[] v_type_params_554_line_875 = typeParams;
			int v_i_555_line_875 = i;
			TypeVariable<?> type_utils_1_expr122_line_875 = v_type_params_554_line_875[v_i_555_line_875];
			Map<TypeVariable<?>, java.lang.reflect.Type> v_type_var_assigns_552_line_875_v1 = typeVarAssigns;
			java.lang.reflect.Type v_type_arg_556_line_875 = typeArg;
			boolean type_utils_1_expr124_line_875 = v_type_var_assigns_552_line_875_v1
					.containsKey(v_type_arg_556_line_875);
			java.lang.reflect.Type type_utils_1_expr125_line_875 = null;
			java.lang.reflect.Type v_type_arg_556_line_876_v1 = null;
			if (type_utils_1_expr124_line_875) {
				Map<TypeVariable<?>, java.lang.reflect.Type> v_type_var_assigns_552_line_875_v2 = typeVarAssigns;
				java.lang.reflect.Type v_type_arg_556_line_876 = typeArg;
				type_utils_1_expr125_line_875 = v_type_var_assigns_552_line_875_v2.get(v_type_arg_556_line_876);
			} else {
				v_type_arg_556_line_876_v1 = typeArg;
			}
			java.lang.reflect.Type type_utils_1_expr123_line_875 = type_utils_1_expr124_line_875
					? type_utils_1_expr125_line_875
					: v_type_arg_556_line_876_v1;
			int PROBE_END_LINE_875 = 876;
			v_type_var_assigns_552_line_875.put(type_utils_1_expr122_line_875, type_utils_1_expr123_line_875);
        }

        int PROBE_START_LINE_879 = 882;
		Class<?> p_to_class_548_line_879 = toClass;
		Class<?> v_cls_550_line_879 = cls;
		boolean type_utils_1_expr126_line_879 = p_to_class_548_line_879.equals(v_cls_550_line_879);
		int PROBE_END_LINE_879 = 882;
		if (type_utils_1_expr126_line_879) {
            int PROBE_START_LINE_881 = 881;
			Map<TypeVariable<?>, java.lang.reflect.Type> v_type_var_assigns_552_line_881 = typeVarAssigns;
			int PROBE_END_LINE_881 = 881;
			// target class has been reached. Done.
            return v_type_var_assigns_552_line_881;
        }

        int PROBE_START_LINE_885 = 885;
		Class<?> v_cls_550_line_885 = cls;
		Class<?> p_to_class_548_line_885 = toClass;
		java.lang.reflect.Type type_utils_1_expr128_line_885 = getClosestParentType(v_cls_550_line_885,
				p_to_class_548_line_885);
		Class<?> p_to_class_548_line_885_v1 = toClass;
		Map<TypeVariable<?>, java.lang.reflect.Type> v_type_var_assigns_552_line_885 = typeVarAssigns;
		Map<TypeVariable<?>, java.lang.reflect.Type> type_utils_1_expr127_line_885 = getTypeArguments(
				type_utils_1_expr128_line_885, p_to_class_548_line_885_v1, v_type_var_assigns_552_line_885);
		int PROBE_END_LINE_885 = 885;
		// walk the inheritance hierarchy until the target class is reached
        return type_utils_1_expr127_line_885;
    }

    /**
     * <p>Return a map of the type arguments of a class in the context of @{code toClass}.</p>
     *
     * @param cls the class in question
     * @param toClass the context class
     * @param subtypeVarAssigns a map with type variables
     * @return the {@code Map} with type arguments
     */
    private static Map<TypeVariable<?>, Type> getTypeArguments(Class<?> cls, final Class<?> toClass,
            final Map<TypeVariable<?>, Type> subtypeVarAssigns) {
        int PROBE_START_LINE_899 = 901;
				Class<?> p_cls_557_line_899 = cls;
				Class<?> p_to_class_558_line_899 = toClass;
				boolean type_utils_1_expr130_line_899 = isAssignable(p_cls_557_line_899, p_to_class_558_line_899);
				boolean type_utils_1_expr129_line_899 = !type_utils_1_expr130_line_899;
				int PROBE_END_LINE_899 = 901;
		// make sure they're assignable
        if (type_utils_1_expr129_line_899) {
            return null;
        }

        int PROBE_START_LINE_904 = 914;
		Class<?> p_cls_557_line_904 = cls;
		boolean type_utils_1_expr131_line_904 = p_cls_557_line_904.isPrimitive();
		int PROBE_END_LINE_904 = 914;
		// can't work with primitives
        if (type_utils_1_expr131_line_904) {
            // both classes are primitives?
            if (toClass.isPrimitive()) {
                // dealing with widening here. No type arguments to be
                // harvested with these two types.
                return new HashMap<TypeVariable<?>, Type>();
            }

            // work with wrapper the wrapper class instead of the primitive
            cls = ClassUtils.primitiveToWrapper(cls);
        }

        int PROBE_START_LINE_917 = 918;
		Map<TypeVariable<?>, java.lang.reflect.Type> p_subtype_var_assigns_559_line_917 = subtypeVarAssigns;
		boolean type_utils_1_expr133_line_917 = p_subtype_var_assigns_559_line_917 == null;
		Map<TypeVariable<?>, java.lang.reflect.Type> p_subtype_var_assigns_559_line_918 = null;
		if (!type_utils_1_expr133_line_917) {
			p_subtype_var_assigns_559_line_918 = subtypeVarAssigns;
		}
		HashMap<TypeVariable<?>, Type> type_utils_1_expr132_line_917 = type_utils_1_expr133_line_917
				? new HashMap<TypeVariable<?>, Type>()
				: new HashMap<TypeVariable<?>, Type>(p_subtype_var_assigns_559_line_918);
		int PROBE_END_LINE_917 = 918;
		// create a copy of the incoming map, or an empty one if it's null
        final HashMap<TypeVariable<?>, Type> typeVarAssigns = type_utils_1_expr132_line_917;

        int PROBE_START_LINE_921 = 923;
		Class<?> p_to_class_558_line_921 = toClass;
		Class<?> p_cls_557_line_921 = cls;
		boolean type_utils_1_expr136_line_921 = p_to_class_558_line_921.equals(p_cls_557_line_921);
		int PROBE_END_LINE_921 = 923;
		// has target class been reached?
        if (type_utils_1_expr136_line_921) {
            return typeVarAssigns;
        }

        int PROBE_START_LINE_926 = 926;
		Class<?> p_cls_557_line_926 = cls;
		Class<?> p_to_class_558_line_926 = toClass;
		java.lang.reflect.Type type_utils_1_expr138_line_926 = getClosestParentType(p_cls_557_line_926,
				p_to_class_558_line_926);
		Class<?> p_to_class_558_line_926_v1 = toClass;
		HashMap<TypeVariable<?>, java.lang.reflect.Type> v_type_var_assigns_560_line_926 = typeVarAssigns;
		Map<TypeVariable<?>, java.lang.reflect.Type> type_utils_1_expr137_line_926 = getTypeArguments(
				type_utils_1_expr138_line_926, p_to_class_558_line_926_v1, v_type_var_assigns_560_line_926);
		int PROBE_END_LINE_926 = 926;
		// walk the inheritance hierarchy until the target class is reached
        return type_utils_1_expr137_line_926;
    }

    /**
     * <p>Tries to determine the type arguments of a class/interface based on a
     * super parameterized type's type arguments. This method is the inverse of
     * {@link #getTypeArguments(Type, Class)} which gets a class/interface's
     * type arguments based on a subtype. It is far more limited in determining
     * the type arguments for the subject class's type variables in that it can
     * only determine those parameters that map from the subject {@link Class}
     * object to the supertype.</p> <p>Example: {@link java.util.TreeSet
     * TreeSet} sets its parameter as the parameter for
     * {@link java.util.NavigableSet NavigableSet}, which in turn sets the
     * parameter of {@link java.util.SortedSet}, which in turn sets the
     * parameter of {@link Set}, which in turn sets the parameter of
     * {@link java.util.Collection}, which in turn sets the parameter of
     * {@link java.lang.Iterable}. Since {@code TreeSet}'s parameter maps
     * (indirectly) to {@code Iterable}'s parameter, it will be able to
     * determine that based on the super type {@code Iterable<? extends
     * Map<Integer, ? extends Collection<?>>>}, the parameter of
     * {@code TreeSet} is {@code ? extends Map<Integer, ? extends
     * Collection<?>>}.</p>
     *
     * @param cls the class whose type parameters are to be determined, not {@code null}
     * @param superType the super type from which {@code cls}'s type
     * arguments are to be determined, not {@code null}
     * @return a {@code Map} of the type assignments that could be determined
     * for the type variables in each type in the inheritance hierarchy from
     * {@code type} to {@code toClass} inclusive.
     */
    public static Map<TypeVariable<?>, Type> determineTypeArguments(final Class<?> cls,
            final ParameterizedType superType) {
        Validate.notNull(cls, "cls is null");
        Validate.notNull(superType, "superType is null");

        final Class<?> superClass = getRawType(superType);

        // compatibility check
        if (!isAssignable(cls, superClass)) {
            return null;
        }

        if (cls.equals(superClass)) {
            return getTypeArguments(superType, superClass, null);
        }

        // get the next class in the inheritance hierarchy
        final Type midType = getClosestParentType(cls, superClass);

        // can only be a class or a parameterized type
        if (midType instanceof Class<?>) {
            return determineTypeArguments((Class<?>) midType, superType);
        }

        final ParameterizedType midParameterizedType = (ParameterizedType) midType;
        final Class<?> midClass = getRawType(midParameterizedType);
        // get the type variables of the mid class that map to the type
        // arguments of the super class
        final Map<TypeVariable<?>, Type> typeVarAssigns = determineTypeArguments(midClass, superType);
        // map the arguments of the mid type to the class type variables
        mapTypeVariablesToArguments(cls, midParameterizedType, typeVarAssigns);

        return typeVarAssigns;
    }

    /**
     * <p>Performs a mapping of type variables.</p>
     *
     * @param <T> the generic type of the class in question
     * @param cls the class in question
     * @param parameterizedType the parameterized type
     * @param typeVarAssigns the map to be filled
     */
    private static <T> void mapTypeVariablesToArguments(final Class<T> cls,
            final ParameterizedType parameterizedType, final Map<TypeVariable<?>, Type> typeVarAssigns) {
        // capture the type variables from the owner type that have assignments
        final Type ownerType = parameterizedType.getOwnerType();

        if (ownerType instanceof ParameterizedType) {
            // recursion to make sure the owner's owner type gets processed
            mapTypeVariablesToArguments(cls, (ParameterizedType) ownerType, typeVarAssigns);
        }

        // parameterizedType is a generic interface/class (or it's in the owner
        // hierarchy of said interface/class) implemented/extended by the class
        // cls. Find out which type variables of cls are type arguments of
        // parameterizedType:
        final Type[] typeArgs = parameterizedType.getActualTypeArguments();

        // of the cls's type variables that are arguments of parameterizedType,
        // find out which ones can be determined from the super type's arguments
        final TypeVariable<?>[] typeVars = getRawType(parameterizedType).getTypeParameters();

        // use List view of type parameters of cls so the contains() method can be used:
        final List<TypeVariable<Class<T>>> typeVarList = Arrays.asList(cls
                .getTypeParameters());

        for (int i = 0; i < typeArgs.length; i++) {
            final TypeVariable<?> typeVar = typeVars[i];
            final Type typeArg = typeArgs[i];

            // argument of parameterizedType is a type variable of cls
            if (typeVarList.contains(typeArg)
            // type variable of parameterizedType has an assignment in
                    // the super type.
                    && typeVarAssigns.containsKey(typeVar)) {
                // map the assignment to the cls's type variable
                typeVarAssigns.put((TypeVariable<?>) typeArg, typeVarAssigns.get(typeVar));
            }
        }
    }

    /**
     * <p>Get the closest parent type to the
     * super class specified by {@code superClass}.</p>
     *
     * @param cls the class in question
     * @param superClass the super class
     * @return the closes parent type
     */
    private static Type getClosestParentType(final Class<?> cls, final Class<?> superClass) {
        int PROBE_START_LINE_1048 = 1079;
		Class<?> p_super_class_567_line_1048 = superClass;
		boolean type_utils_1_expr139_line_1048 = p_super_class_567_line_1048.isInterface();
		int PROBE_END_LINE_1048 = 1079;
		// only look at the interfaces if the super class is also an interface
        if (type_utils_1_expr139_line_1048) {
            int PROBE_START_LINE_1050 = 1050;
			Class<?> p_cls_566_line_1050 = cls;
			Type[] type_utils_1_expr140_line_1050 = p_cls_566_line_1050.getGenericInterfaces();
			int PROBE_END_LINE_1050 = 1050;
			// get the generic interfaces of the subject class
            final Type[] interfaceTypes = type_utils_1_expr140_line_1050;
            // will hold the best generic interface match found
            Type genericInterface = null;

            int PROBE_START_LINE_1055 = 1073;
			java.lang.reflect.Type[] v_interface_types_568_line_1055 = interfaceTypes;
			int PROBE_END_LINE_1055 = 1073;
			// find the interface closest to the super class
            for (final Type midType : v_interface_types_568_line_1055) {
                Class<?> midClass = null;

                int PROBE_START_LINE_1058 = 1065;
				java.lang.reflect.Type v_mid_type_570_line_1058 = midType;
				boolean type_utils_1_expr141_line_1058 = v_mid_type_570_line_1058 instanceof ParameterizedType;
				int PROBE_END_LINE_1058 = 1065;
				if (type_utils_1_expr141_line_1058) {
                    int PROBE_START_LINE_1059 = 1059;
					java.lang.reflect.Type v_mid_type_570_line_1059 = midType;
					Class<?> type_utils_1_expr143_line_1059 = getRawType((ParameterizedType) v_mid_type_570_line_1059);
					int PROBE_END_LINE_1059 = 1059;
					midClass = type_utils_1_expr143_line_1059;
                } else {
					int PROBE_START_LINE_1060 = 1065;
					java.lang.reflect.Type v_mid_type_570_line_1060 = midType;
					boolean type_utils_1_expr145_line_1060 = v_mid_type_570_line_1060 instanceof Class<?>;
					int PROBE_END_LINE_1060 = 1065;
					if (type_utils_1_expr145_line_1060) {
						int PROBE_START_LINE_1061 = 1061;
						java.lang.reflect.Type v_mid_type_570_line_1061 = midType;
						int PROBE_END_LINE_1061 = 1061;
						midClass = (Class<?>) v_mid_type_570_line_1061;
					} else {
						throw new IllegalStateException("Unexpected generic" + " interface type found: " + midType);
					}
				}

                int PROBE_START_LINE_1069 = 1072;
				Class<?> v_mid_class_571_line_1069 = midClass;
				Class<?> p_super_class_567_line_1069 = superClass;
				boolean type_utils_1_expr149_line_1069 = isAssignable(v_mid_class_571_line_1069,
						p_super_class_567_line_1069);
				boolean type_utils_1_expr150_line_1070 = true;
				if (type_utils_1_expr149_line_1069) {
					java.lang.reflect.Type v_generic_interface_569_line_1070 = genericInterface;
					Class<?> v_mid_class_571_line_1070 = midClass;
					type_utils_1_expr150_line_1070 = isAssignable(v_generic_interface_569_line_1070,
							(Type) v_mid_class_571_line_1070);
				}
				boolean type_utils_1_expr148_line_1069 = type_utils_1_expr149_line_1069
						&& type_utils_1_expr150_line_1070;
				int PROBE_END_LINE_1069 = 1072;
				// check if this interface is further up the inheritance chain
                // than the previously found match
                if (type_utils_1_expr148_line_1069) {
                    int PROBE_START_LINE_1071 = 1071;
							java.lang.reflect.Type v_mid_type_570_line_1071 = midType;
							int PROBE_END_LINE_1071 = 1071;
					genericInterface = v_mid_type_570_line_1071;
                }
            }

            int PROBE_START_LINE_1076 = 1078;
			java.lang.reflect.Type v_generic_interface_569_line_1076 = genericInterface;
			boolean type_utils_1_expr153_line_1076 = v_generic_interface_569_line_1076 != null;
			int PROBE_END_LINE_1076 = 1078;
			// found a match?
            if (type_utils_1_expr153_line_1076) {
                int PROBE_START_LINE_1077 = 1077;
				java.lang.reflect.Type v_generic_interface_569_line_1077 = genericInterface;
				int PROBE_END_LINE_1077 = 1077;
				return v_generic_interface_569_line_1077;
            }
        }

        int PROBE_START_LINE_1083 = 1083;
		Class<?> p_cls_566_line_1083 = cls;
		java.lang.reflect.Type type_utils_1_expr154_line_1083 = p_cls_566_line_1083.getGenericSuperclass();
		int PROBE_END_LINE_1083 = 1083;
		// none of the interfaces were descendants of the target class, so the
        // super class has to be one, instead
        return type_utils_1_expr154_line_1083;
    }

    /**
     * <p>Checks if the given value can be assigned to the target type
     * following the Java generics rules.</p>
     *
     * @param value the value to be checked
     * @param type the target type
     * @return {@code true} if {@code value} is an instance of {@code type}.
     */
    public static boolean isInstance(final Object value, final Type type) {
        if (type == null) {
            return false;
        }

        return value == null ? !(type instanceof Class<?>) || !((Class<?>) type).isPrimitive()
                : isAssignable(value.getClass(), type, null);
    }

    /**
     * <p>This method strips out the redundant upper bound types in type
     * variable types and wildcard types (or it would with wildcard types if
     * multiple upper bounds were allowed).</p> <p>Example, with the variable
     * type declaration:
     *
     * <pre>&lt;K extends java.util.Collection&lt;String&gt; &amp;
     * java.util.List&lt;String&gt;&gt;</pre>
     *
     * <p>
     * since {@code List} is a subinterface of {@code Collection},
     * this method will return the bounds as if the declaration had been:
     * </p>
     *
     * <pre>&lt;K extends java.util.List&lt;String&gt;&gt;</pre>
     *
     * @param bounds an array of types representing the upper bounds of either
     * {@link WildcardType} or {@link TypeVariable}, not {@code null}.
     * @return an array containing the values from {@code bounds} minus the
     * redundant types.
     */
    public static Type[] normalizeUpperBounds(final Type[] bounds) {
        Validate.notNull(bounds, "null value specified for bounds array");
        // don't bother if there's only one (or none) type
        if (bounds.length < 2) {
            return bounds;
        }

        final Set<Type> types = new HashSet<Type>(bounds.length);

        for (final Type type1 : bounds) {
            boolean subtypeFound = false;

            for (final Type type2 : bounds) {
                if (type1 != type2 && isAssignable(type2, type1, null)) {
                    subtypeFound = true;
                    break;
                }
            }

            if (!subtypeFound) {
                types.add(type1);
            }
        }

        return types.toArray(new Type[types.size()]);
    }

    /**
     * <p>Returns an array containing the sole type of {@link Object} if
     * {@link TypeVariable#getBounds()} returns an empty array. Otherwise, it
     * returns the result of {@link TypeVariable#getBounds()} passed into
     * {@link #normalizeUpperBounds}.</p>
     *
     * @param typeVariable the subject type variable, not {@code null}
     * @return a non-empty array containing the bounds of the type variable.
     */
    public static Type[] getImplicitBounds(final TypeVariable<?> typeVariable) {
        Validate.notNull(typeVariable, "typeVariable is null");
        final Type[] bounds = typeVariable.getBounds();

        return bounds.length == 0 ? new Type[] { Object.class } : normalizeUpperBounds(bounds);
    }

    /**
     * <p>Returns an array containing the sole value of {@link Object} if
     * {@link WildcardType#getUpperBounds()} returns an empty array. Otherwise,
     * it returns the result of {@link WildcardType#getUpperBounds()}
     * passed into {@link #normalizeUpperBounds}.</p>
     *
     * @param wildcardType the subject wildcard type, not {@code null}
     * @return a non-empty array containing the upper bounds of the wildcard
     * type.
     */
    public static Type[] getImplicitUpperBounds(final WildcardType wildcardType) {
        int PROBE_START_LINE_1178 = 1178;
		java.lang.reflect.WildcardType p_wildcard_type_576_line_1178 = wildcardType;
		int PROBE_END_LINE_1178 = 1178;
		Validate.notNull(p_wildcard_type_576_line_1178, "wildcardType is null");
        int PROBE_START_LINE_1179 = 1179;
		java.lang.reflect.WildcardType p_wildcard_type_576_line_1179 = wildcardType;
		Type[] type_utils_1_expr156_line_1179 = p_wildcard_type_576_line_1179.getUpperBounds();
		int PROBE_END_LINE_1179 = 1179;
		final Type[] bounds = type_utils_1_expr156_line_1179;

        int PROBE_START_LINE_1181 = 1181;
		java.lang.reflect.Type[] v_bounds_577_line_1181 = bounds;
		int q_length_14_line_1181 = v_bounds_577_line_1181.length;
		boolean type_utils_1_expr158_line_1181 = q_length_14_line_1181 == 0;
		java.lang.reflect.Type[] type_utils_1_expr160_line_1181 = null;
		if (!type_utils_1_expr158_line_1181) {
			java.lang.reflect.Type[] v_bounds_577_line_1181_v1 = bounds;
			type_utils_1_expr160_line_1181 = normalizeUpperBounds(v_bounds_577_line_1181_v1);
		}
		java.lang.reflect.Type[] type_utils_1_expr157_line_1181 = type_utils_1_expr158_line_1181
				? new Type[]{Object.class}
				: type_utils_1_expr160_line_1181;
		int PROBE_END_LINE_1181 = 1181;
		return type_utils_1_expr157_line_1181;
    }

    /**
     * <p>Returns an array containing a single value of {@code null} if
     * {@link WildcardType#getLowerBounds()} returns an empty array. Otherwise,
     * it returns the result of {@link WildcardType#getLowerBounds()}.</p>
     *
     * @param wildcardType the subject wildcard type, not {@code null}
     * @return a non-empty array containing the lower bounds of the wildcard
     * type.
     */
    public static Type[] getImplicitLowerBounds(final WildcardType wildcardType) {
        int PROBE_START_LINE_1194 = 1194;
		java.lang.reflect.WildcardType p_wildcard_type_578_line_1194 = wildcardType;
		int PROBE_END_LINE_1194 = 1194;
		Validate.notNull(p_wildcard_type_578_line_1194, "wildcardType is null");
        int PROBE_START_LINE_1195 = 1195;
		java.lang.reflect.WildcardType p_wildcard_type_578_line_1195 = wildcardType;
		Type[] type_utils_1_expr164_line_1195 = p_wildcard_type_578_line_1195.getLowerBounds();
		int PROBE_END_LINE_1195 = 1195;
		final Type[] bounds = type_utils_1_expr164_line_1195;

        int PROBE_START_LINE_1197 = 1197;
		java.lang.reflect.Type[] v_bounds_579_line_1197 = bounds;
		int q_length_15_line_1197 = v_bounds_579_line_1197.length;
		boolean type_utils_1_expr166_line_1197 = q_length_15_line_1197 == 0;
		java.lang.reflect.Type[] v_bounds_579_line_1197_v1 = null;
		if (!type_utils_1_expr166_line_1197) {
			v_bounds_579_line_1197_v1 = bounds;
		}
		java.lang.reflect.Type[] type_utils_1_expr165_line_1197 = type_utils_1_expr166_line_1197
				? new Type[]{null}
				: v_bounds_579_line_1197_v1;
		int PROBE_END_LINE_1197 = 1197;
		return type_utils_1_expr165_line_1197;
    }

    /**
     * <p>Determines whether or not specified types satisfy the bounds of their
     * mapped type variables. When a type parameter extends another (such as
     * {@code <T, S extends T>}), uses another as a type parameter (such as
     * {@code <T, S extends Comparable>>}), or otherwise depends on
     * another type variable to be specified, the dependencies must be included
     * in {@code typeVarAssigns}.</p>
     *
     * @param typeVarAssigns specifies the potential types to be assigned to the
     * type variables, not {@code null}.
     * @return whether or not the types can be assigned to their respective type
     * variables.
     */
    public static boolean typesSatisfyVariables(final Map<TypeVariable<?>, Type> typeVarAssigns) {
        Validate.notNull(typeVarAssigns, "typeVarAssigns is null");
        // all types must be assignable to all the bounds of the their mapped
        // type variable.
        for (final Map.Entry<TypeVariable<?>, Type> entry : typeVarAssigns.entrySet()) {
            final TypeVariable<?> typeVar = entry.getKey();
            final Type type = entry.getValue();

            for (final Type bound : getImplicitBounds(typeVar)) {
                if (!isAssignable(type, substituteTypeVariables(bound, typeVarAssigns),
                        typeVarAssigns)) {
                    return false;
                }
            }
        }
        return true;
    }

    /**
     * <p>Transforms the passed in type to a {@link Class} object. Type-checking method of convenience.</p>
     *
     * @param parameterizedType the type to be converted
     * @return the corresponding {@code Class} object
     * @throws IllegalStateException if the conversion fails
     */
    private static Class<?> getRawType(final ParameterizedType parameterizedType) {
        int PROBE_START_LINE_1239 = 1239;
		java.lang.reflect.ParameterizedType p_parameterized_type_581_line_1239 = parameterizedType;
		Type type_utils_1_expr169_line_1239 = p_parameterized_type_581_line_1239.getRawType();
		int PROBE_END_LINE_1239 = 1239;
		final Type rawType = type_utils_1_expr169_line_1239;

        int PROBE_START_LINE_1246 = 1248;
		java.lang.reflect.Type v_raw_type_582_line_1246 = rawType;
		boolean type_utils_1_expr172_line_1246 = v_raw_type_582_line_1246 instanceof Class<?>;
		boolean type_utils_1_expr171_line_1246 = (type_utils_1_expr172_line_1246);
		boolean type_utils_1_expr170_line_1246 = !type_utils_1_expr171_line_1246;
		int PROBE_END_LINE_1246 = 1248;
		// check if raw type is a Class object
        // not currently necessary, but since the return type is Type instead of
        // Class, there's enough reason to believe that future versions of Java
        // may return other Type implementations. And type-safety checking is
        // rarely a bad idea.
        if (type_utils_1_expr170_line_1246) {
            throw new IllegalStateException("Wait... What!? Type of rawType: " + rawType);
        }

        int PROBE_START_LINE_1250 = 1250;
		java.lang.reflect.Type v_raw_type_582_line_1250 = rawType;
		int PROBE_END_LINE_1250 = 1250;
		return (Class<?>) v_raw_type_582_line_1250;
    }

    /**
     * <p>Get the raw type of a Java type, given its context. Primarily for use
     * with {@link TypeVariable}s and {@link GenericArrayType}s, or when you do
     * not know the runtime type of {@code type}: if you know you have a
     * {@link Class} instance, it is already raw; if you know you have a
     * {@link ParameterizedType}, its raw type is only a method call away.</p>
     *
     * @param type to resolve
     * @param assigningType type to be resolved against
     * @return the resolved {@link Class} object or {@code null} if
     * the type could not be resolved
     */
    public static Class<?> getRawType(final Type type, final Type assigningType) {
        if (type instanceof Class<?>) {
            // it is raw, no problem
            return (Class<?>) type;
        }

        if (type instanceof ParameterizedType) {
            // simple enough to get the raw type of a ParameterizedType
            return getRawType((ParameterizedType) type);
        }

        if (type instanceof TypeVariable<?>) {
            if (assigningType == null) {
                return null;
            }

            // get the entity declaring this type variable
            final Object genericDeclaration = ((TypeVariable<?>) type).getGenericDeclaration();

            // can't get the raw type of a method- or constructor-declared type
            // variable
            if (!(genericDeclaration instanceof Class<?>)) {
                return null;
            }

            // get the type arguments for the declaring class/interface based
            // on the enclosing type
            final Map<TypeVariable<?>, Type> typeVarAssigns = getTypeArguments(assigningType,
                    (Class<?>) genericDeclaration);

            // enclosingType has to be a subclass (or subinterface) of the
            // declaring type
            if (typeVarAssigns == null) {
                return null;
            }

            // get the argument assigned to this type variable
            final Type typeArgument = typeVarAssigns.get(type);

            if (typeArgument == null) {
                return null;
            }

            // get the argument for this type variable
            return getRawType(typeArgument, assigningType);
        }

        if (type instanceof GenericArrayType) {
            // get raw component type
            final Class<?> rawComponentType = getRawType(((GenericArrayType) type)
                    .getGenericComponentType(), assigningType);

            // create array type from raw component type and return its class
            return Array.newInstance(rawComponentType, 0).getClass();
        }

        // (hand-waving) this is not the method you're looking for
        if (type instanceof WildcardType) {
            return null;
        }

        throw new IllegalArgumentException("unknown type: " + type);
    }

    /**
     * Learn whether the specified type denotes an array type.
     * @param type the type to be checked
     * @return {@code true} if {@code type} is an array class or a {@link GenericArrayType}.
     */
    public static boolean isArrayType(final Type type) {
        return type instanceof GenericArrayType || type instanceof Class<?> && ((Class<?>) type).isArray();
    }

    /**
     * Get the array component type of {@code type}.
     * @param type the type to be checked
     * @return component type or null if type is not an array type
     */
    public static Type getArrayComponentType(final Type type) {
        if (type instanceof Class<?>) {
            final Class<?> clazz = (Class<?>) type;
            return clazz.isArray() ? clazz.getComponentType() : null;
        }
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return null;
    }

    /**
     * Get a type representing {@code type} with variable assignments "unrolled."
     *
     * @param typeArguments as from {@link TypeUtils#getTypeArguments(Type, Class)}
     * @param type the type to unroll variable assignments for
     * @return Type
     * @since 3.2
     */
    public static Type unrollVariables(Map<TypeVariable<?>, Type> typeArguments, final Type type) {
        if (typeArguments == null) {
            typeArguments = Collections.<TypeVariable<?>, Type> emptyMap();
        }
        if (containsTypeVariables(type)) {
            if (type instanceof TypeVariable<?>) {
                return unrollVariables(typeArguments, typeArguments.get(type));
            }
            if (type instanceof ParameterizedType) {
                final ParameterizedType p = (ParameterizedType) type;
                final Map<TypeVariable<?>, Type> parameterizedTypeArguments;
                if (p.getOwnerType() == null) {
                    parameterizedTypeArguments = typeArguments;
                } else {
                    parameterizedTypeArguments = new HashMap<TypeVariable<?>, Type>(typeArguments);
                    parameterizedTypeArguments.putAll(TypeUtils.getTypeArguments(p));
                }
                final Type[] args = p.getActualTypeArguments();
                for (int i = 0; i < args.length; i++) {
                    final Type unrolled = unrollVariables(parameterizedTypeArguments, args[i]);
                    if (unrolled != null) {
                        args[i] = unrolled;
                    }
                }
                return parameterizeWithOwner(p.getOwnerType(), (Class<?>) p.getRawType(), args);
            }
            if (type instanceof WildcardType) {
                final WildcardType wild = (WildcardType) type;
                return wildcardType().withUpperBounds(unrollBounds(typeArguments, wild.getUpperBounds()))
                    .withLowerBounds(unrollBounds(typeArguments, wild.getLowerBounds())).build();
            }
        }
        return type;
    }

    /**
     * Local helper method to unroll variables in a type bounds array.
     * 
     * @param typeArguments assignments {@link Map}
     * @param bounds in which to expand variables
     * @return {@code bounds} with any variables reassigned
     * @since 3.2
     */
    private static Type[] unrollBounds(final Map<TypeVariable<?>, Type> typeArguments, final Type[] bounds) {
        Type[] result = bounds;
        int i = 0;
        for (; i < result.length; i++) {
            final Type unrolled = unrollVariables(typeArguments, result[i]);
            if (unrolled == null) {
                result = ArrayUtils.remove(result, i--);
            } else {
                result[i] = unrolled;
            }
        }
        return result;
    }

    /**
     * Learn, recursively, whether any of the type parameters associated with {@code type} are bound to variables.
     *
     * @param type the type to check for type variables
     * @return boolean
     * @since 3.2
     */
    public static boolean containsTypeVariables(final Type type) {
        if (type instanceof TypeVariable<?>) {
            return true;
        }
        if (type instanceof Class<?>) {
            return ((Class<?>) type).getTypeParameters().length > 0;
        }
        if (type instanceof ParameterizedType) {
            for (final Type arg : ((ParameterizedType) type).getActualTypeArguments()) {
                if (containsTypeVariables(arg)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof WildcardType) {
            final WildcardType wild = (WildcardType) type;
            return containsTypeVariables(TypeUtils.getImplicitLowerBounds(wild)[0])
                || containsTypeVariables(TypeUtils.getImplicitUpperBounds(wild)[0]);
        }
        return false;
    }

    /**
     * Create a parameterized type instance.
     *
     * @param raw the raw class to create a parameterized type instance for
     * @param typeArguments the types used for parameterization
     * @return {@link ParameterizedType}
     * @since 3.2
     */
    public static final ParameterizedType parameterize(final Class<?> raw, final Type... typeArguments) {
        return parameterizeWithOwner(null, raw, typeArguments);
    }

    /**
     * Create a parameterized type instance.
     *
     * @param raw the raw class to create a parameterized type instance for
     * @param typeArgMappings the mapping used for parameterization
     * @return {@link ParameterizedType}
     * @since 3.2
     */
    public static final ParameterizedType parameterize(final Class<?> raw,
        final Map<TypeVariable<?>, Type> typeArgMappings) {
        Validate.notNull(raw, "raw class is null");
        Validate.notNull(typeArgMappings, "typeArgMappings is null");
        return parameterizeWithOwner(null, raw, extractTypeArgumentsFrom(typeArgMappings, raw.getTypeParameters()));
    }

    /**
     * Create a parameterized type instance.
     *
     * @param owner the owning type
     * @param raw the raw class to create a parameterized type instance for
     * @param typeArguments the types used for parameterization
     *
     * @return {@link ParameterizedType}
     * @since 3.2
     */
    public static final ParameterizedType parameterizeWithOwner(final Type owner, final Class<?> raw,
        final Type... typeArguments) {
        Validate.notNull(raw, "raw class is null");
        final Type useOwner;
        if (raw.getEnclosingClass() == null) {
            Validate.isTrue(owner == null, "no owner allowed for top-level %s", raw);
            useOwner = null;
        } else if (owner == null) {
            useOwner = raw.getEnclosingClass();
        } else {
            Validate.isTrue(TypeUtils.isAssignable(owner, raw.getEnclosingClass()),
                "%s is invalid owner type for parameterized %s", owner, raw);
            useOwner = owner;
        }
        Validate.noNullElements(typeArguments, "null type argument at index %s");
        Validate.isTrue(raw.getTypeParameters().length == typeArguments.length,
            "invalid number of type parameters specified: expected %d, got %d", raw.getTypeParameters().length,
            typeArguments.length);

        return new ParameterizedTypeImpl(raw, useOwner, typeArguments);
    }

    /**
     * Create a parameterized type instance.
     *
     * @param owner the owning type
     * @param raw the raw class to create a parameterized type instance for
     * @param typeArgMappings the mapping used for parameterization
     * @return {@link ParameterizedType}
     * @since 3.2
     */
    public static final ParameterizedType parameterizeWithOwner(final Type owner, final Class<?> raw,
        final Map<TypeVariable<?>, Type> typeArgMappings) {
        Validate.notNull(raw, "raw class is null");
        Validate.notNull(typeArgMappings, "typeArgMappings is null");
        return parameterizeWithOwner(owner, raw, extractTypeArgumentsFrom(typeArgMappings, raw.getTypeParameters()));
    }

    /**
     * Helper method to establish the formal parameters for a parameterized type.
     * @param mappings map containing the assignements
     * @param variables expected map keys
     * @return array of map values corresponding to specified keys
     */
    private static Type[] extractTypeArgumentsFrom(final Map<TypeVariable<?>, Type> mappings, final TypeVariable<?>[] variables) {
        final Type[] result = new Type[variables.length];
        int index = 0;
        for (final TypeVariable<?> var : variables) {
            Validate.isTrue(mappings.containsKey(var), "missing argument mapping for %s", toString(var));
            result[index++] = mappings.get(var);
        }
        return result;
    }

    /**
     * Get a {@link WildcardTypeBuilder}.
     * @return {@link WildcardTypeBuilder}
     * @since 3.2
     */
    public static WildcardTypeBuilder wildcardType() {
        return new WildcardTypeBuilder();
    }

    /**
     * Create a generic array type instance.
     *
     * @param componentType the type of the elements of the array. For example the component type of {@code boolean[]}
     *                      is {@code boolean}
     * @return {@link GenericArrayType}
     * @since 3.2
     */
    public static GenericArrayType genericArrayType(final Type componentType) {
        return new GenericArrayTypeImpl(Validate.notNull(componentType, "componentType is null"));
    }

    /**
     * Check equality of types.
     *
     * @param t1 the first type
     * @param t2 the second type
     * @return boolean
     * @since 3.2
     */
    @SuppressWarnings( "deprecation" )  // ObjectUtils.equals(Object, Object) has been deprecated in 3.2
    public static boolean equals(final Type t1, final Type t2) {
        if (ObjectUtils.equals(t1, t2)) {
            return true;
        }
        if (t1 instanceof ParameterizedType) {
            return equals((ParameterizedType) t1, t2);
        }
        if (t1 instanceof GenericArrayType) {
            return equals((GenericArrayType) t1, t2);
        }
        if (t1 instanceof WildcardType) {
            return equals((WildcardType) t1, t2);
        }
        return false;
    }

    /**
     * Learn whether {@code t} equals {@code p}.
     * @param p LHS
     * @param t RHS
     * @return boolean
     * @since 3.2
     */
    private static boolean equals(final ParameterizedType p, final Type t) {
        if (t instanceof ParameterizedType) {
            final ParameterizedType other = (ParameterizedType) t;
            if (equals(p.getRawType(), other.getRawType()) && equals(p.getOwnerType(), other.getOwnerType())) {
                return equals(p.getActualTypeArguments(), other.getActualTypeArguments());
            }
        }
        return false;
    }

    /**
     * Learn whether {@code t} equals {@code a}.
     * @param a LHS
     * @param t RHS
     * @return boolean
     * @since 3.2
     */
    private static boolean equals(final GenericArrayType a, final Type t) {
        return t instanceof GenericArrayType
            && equals(a.getGenericComponentType(), ((GenericArrayType) t).getGenericComponentType());
    }

    /**
     * Learn whether {@code t} equals {@code w}.
     * @param w LHS
     * @param t RHS
     * @return boolean
     * @since 3.2
     */
    private static boolean equals(final WildcardType w, final Type t) {
        if (t instanceof WildcardType) {
            final WildcardType other = (WildcardType) t;
            return equals(getImplicitLowerBounds(w), getImplicitLowerBounds(other))
                && equals(getImplicitUpperBounds(w), getImplicitUpperBounds(other));
        }
        return false;
    }

    /**
     * Learn whether {@code t1} equals {@code t2}.
     * @param t1 LHS
     * @param t2 RHS
     * @return boolean
     * @since 3.2
     */
    private static boolean equals(final Type[] t1, final Type[] t2) {
        if (t1.length == t2.length) {
            for (int i = 0; i < t1.length; i++) {
                if (!equals(t1[i], t2[i])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /**
     * Present a given type as a Java-esque String.
     *
     * @param type the type to create a String representation for, not {@code null}
     * @return String
     * @since 3.2
     */
    public static String toString(final Type type) {
        Validate.notNull(type);
        if (type instanceof Class<?>) {
            return classToString((Class<?>) type);
        }
        if (type instanceof ParameterizedType) {
            return parameterizedTypeToString((ParameterizedType) type);
        }
        if (type instanceof WildcardType) {
            return wildcardTypeToString((WildcardType) type);
        }
        if (type instanceof TypeVariable<?>) {
            return typeVariableToString((TypeVariable<?>) type);
        }
        if (type instanceof GenericArrayType) {
            return genericArrayTypeToString((GenericArrayType) type);
        }
        throw new IllegalArgumentException(ObjectUtils.identityToString(type));
    }

    /**
     * Format a {@link TypeVariable} including its {@link GenericDeclaration}.
     *
     * @param var the type variable to create a String representation for, not {@code null}
     * @return String
     * @since 3.2
     */
    public static String toLongString(final TypeVariable<?> var) {
        Validate.notNull(var, "var is null");
        final StringBuilder buf = new StringBuilder();
        final GenericDeclaration d = ((TypeVariable<?>) var).getGenericDeclaration();
        if (d instanceof Class<?>) {
            Class<?> c = (Class<?>) d;
            while (true) {
                if (c.getEnclosingClass() == null) {
                    buf.insert(0, c.getName());
                    break;
                }
                buf.insert(0, c.getSimpleName()).insert(0, '.');
                c = c.getEnclosingClass();
            }
        } else if (d instanceof Type) {// not possible as of now
            buf.append(toString((Type) d));
        } else {
            buf.append(d);
        }
        return buf.append(':').append(typeVariableToString(var)).toString();
    }

    /**
     * Wrap the specified {@link Type} in a {@link Typed} wrapper.
     *
     * @param <T> inferred generic type
     * @param type to wrap
     * @return Typed&lt;T&gt;
     * @since 3.2
     */
    public static <T> Typed<T> wrap(final Type type) {
        return new Typed<T>() {
            @Override
            public Type getType() {
                return type;
            }
        };
    }

    /**
     * Wrap the specified {@link Class} in a {@link Typed} wrapper.
     *
     * @param <T> generic type
     * @param type to wrap
     * @return Typed&lt;T&gt;
     * @since 3.2
     */
    public static <T> Typed<T> wrap(final Class<T> type) {
        return TypeUtils.<T> wrap((Type) type);
    }

    /**
     * Format a {@link Class} as a {@link String}.
     * @param c {@code Class} to format
     * @return String
     * @since 3.2
     */
    private static String classToString(final Class<?> c) {
        final StringBuilder buf = new StringBuilder();

        if (c.getEnclosingClass() != null) {
            buf.append(classToString(c.getEnclosingClass())).append('.').append(c.getSimpleName());
        } else {
            buf.append(c.getName());
        }
        if (c.getTypeParameters().length > 0) {
            buf.append('<');
            appendAllTo(buf, ", ", c.getTypeParameters());
            buf.append('>');
        }
        return buf.toString();
    }

    /**
     * Format a {@link TypeVariable} as a {@link String}.
     * @param v {@code TypeVariable} to format
     * @return String
     * @since 3.2
     */
    private static String typeVariableToString(final TypeVariable<?> v) {
        final StringBuilder buf = new StringBuilder(v.getName());
        final Type[] bounds = v.getBounds();
        if (bounds.length > 0 && !(bounds.length == 1 && Object.class.equals(bounds[0]))) {
            buf.append(" extends ");
            appendAllTo(buf, " & ", v.getBounds());
        }
        return buf.toString();
    }

    /**
     * Format a {@link ParameterizedType} as a {@link String}.
     * @param p {@code ParameterizedType} to format
     * @return String
     * @since 3.2
     */
    private static String parameterizedTypeToString(final ParameterizedType p) {
        final StringBuilder buf = new StringBuilder();

        final Type useOwner = p.getOwnerType();
        final Class<?> raw = (Class<?>) p.getRawType();
        final Type[] typeArguments = p.getActualTypeArguments();
        if (useOwner == null) {
            buf.append(raw.getName());
        } else {
            if (useOwner instanceof Class<?>) {
                buf.append(((Class<?>) useOwner).getName());
            } else {
                buf.append(useOwner.toString());
            }
            buf.append('.').append(raw.getSimpleName());
        }

        appendAllTo(buf.append('<'), ", ", typeArguments).append('>');
        return buf.toString();
    }

    /**
     * Format a {@link WildcardType} as a {@link String}.
     * @param w {@code WildcardType} to format
     * @return String
     * @since 3.2
     */
    private static String wildcardTypeToString(final WildcardType w) {
        final StringBuilder buf = new StringBuilder().append('?');
        final Type[] lowerBounds = w.getLowerBounds();
        final Type[] upperBounds = w.getUpperBounds();
        if (lowerBounds.length > 1 || lowerBounds.length == 1 && lowerBounds[0] != null) {
            appendAllTo(buf.append(" super "), " & ", lowerBounds);
        } else if (upperBounds.length > 1 || upperBounds.length == 1 && !Object.class.equals(upperBounds[0])) {
            appendAllTo(buf.append(" extends "), " & ", upperBounds);
        }
        return buf.toString();
    }

    /**
     * Format a {@link GenericArrayType} as a {@link String}.
     * @param g {@code GenericArrayType} to format
     * @return String
     * @since 3.2
     */
    private static String genericArrayTypeToString(final GenericArrayType g) {
        return String.format("%s[]", toString(g.getGenericComponentType()));
    }

    /**
     * Append {@code types} to @{code buf} with separator {@code sep}.
     * @param buf destination
     * @param sep separator
     * @param types to append
     * @return {@code buf}
     * @since 3.2
     */
    private static StringBuilder appendAllTo(final StringBuilder buf, final String sep, final Type... types) {
        Validate.notEmpty(Validate.noNullElements(types));
        if (types.length > 0) {
            buf.append(toString(types[0]));
            for (int i = 1; i < types.length; i++) {
                buf.append(sep).append(toString(types[i]));
            }
        }
        return buf;
    }

}
