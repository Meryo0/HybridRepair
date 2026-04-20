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

package org.apache.commons.lang3.mutable;

import java.io.Serializable;
import java.util.Objects;

/**
 * A mutable {@link Object} wrapper.
 *
 * @param <T> the type to set and get
 * @since 2.1
 */
public class MutableObject<T> implements Mutable<T>, Serializable {

    /**
     * Required for serialization support.
     *
     * @see java.io.Serializable
     */
    private static final long serialVersionUID = 86241875189L;

    /** The mutable value. */
    private T value;

    /**
     * Constructs a new MutableObject with the default value of {@code null}.
     */
    public MutableObject() {
    }

    /**
     * Constructs a new MutableObject with the specified value.
     *
     * @param value  the initial value to store
     */
    public MutableObject(final T value) {
        int PROBE_START_LINE_53 = 53;
		T p_value_304_line_53 = value;
		int PROBE_END_LINE_53 = 53;
		this.value = p_value_304_line_53;
    }

    /**
     * Gets the value.
     *
     * @return the value, may be null
     */
    @Override
    public T getValue() {
        return this.value;
    }

    /**
     * Sets the value.
     *
     * @param value  the value to set
     */
    @Override
    public void setValue(final T value) {
        this.value = value;
    }

    /**
     * Compares this object against the specified object. The result is {@code true} if and only if the argument
     * is not {@code null} and is a {@link MutableObject} object that contains the same {@link T}
     * value as this object.
     *
     * @param obj  the object to compare with, {@code null} returns {@code false}
     * @return  {@code true} if the objects are the same;
     *          {@code true} if the objects have equivalent {@code value} fields;
     *          {@code false} otherwise.
     */
    @Override
    public boolean equals(final Object obj) {
        int PROBE_START_LINE_88 = 90;
		Object p_obj_307_line_88 = obj;
		boolean mutable_object_1_expr4_line_88 = p_obj_307_line_88 == null;
		int PROBE_END_LINE_88 = 90;
		if (mutable_object_1_expr4_line_88) {
            return false;
        }
        int PROBE_START_LINE_91 = 93;
		Object p_obj_307_line_91 = obj;
		boolean mutable_object_1_expr5_line_91 = this == p_obj_307_line_91;
		int PROBE_END_LINE_91 = 93;
		if (mutable_object_1_expr5_line_91) {
            return true;
        }
        int PROBE_START_LINE_94 = 97;
		Class<? extends org.apache.commons.lang3.mutable.MutableObject> mutable_object_1_expr8_line_94 = this
				.getClass();
		Object p_obj_307_line_94 = obj;
		Class<? extends Object> mutable_object_1_expr10_line_94 = p_obj_307_line_94.getClass();
		boolean mutable_object_1_expr7_line_94 = mutable_object_1_expr8_line_94 == mutable_object_1_expr10_line_94;
		int PROBE_END_LINE_94 = 97;
		if (mutable_object_1_expr7_line_94) {
            int PROBE_START_LINE_95 = 95;
			Object p_obj_307_line_95 = obj;
			int PROBE_END_LINE_95 = 95;
			final MutableObject<?> that = (MutableObject<?>) p_obj_307_line_95;
            int PROBE_START_LINE_96 = 96;
			T f_value_305_line_96 = this.value;
			MutableObject<?> v_that_308_line_96 = that;
			java.lang.Object q_value_2_line_96 = v_that_308_line_96.value;
			boolean mutable_object_1_expr12_line_96 = f_value_305_line_96.equals(q_value_2_line_96);
			int PROBE_END_LINE_96 = 96;
			return mutable_object_1_expr12_line_96;
        }
        return false;
    }

    /**
     * Returns the value's hash code or {@code 0} if the value is {@code null}.
     *
     * @return the value's hash code or {@code 0} if the value is {@code null}.
     */
    @Override
    public int hashCode() {
        return Objects.hashCode(value);
    }

    /**
     * Returns the String value of this mutable.
     *
     * @return the mutable value as a string
     */
    @Override
    public String toString() {
        return Objects.toString(value);
    }

}
