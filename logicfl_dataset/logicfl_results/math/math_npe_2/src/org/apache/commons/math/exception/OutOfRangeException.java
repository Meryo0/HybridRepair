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
package org.apache.commons.math.exception;

import org.apache.commons.math.exception.util.LocalizedFormats;
import org.apache.commons.math.exception.util.Localizable;

/**
 * Exception to be thrown when some argument is out of range.
 *
 * @since 2.2
 * @version $Id$
 */
public class OutOfRangeException extends MathIllegalNumberException {
    /** Serializable version Id. */
    private static final long serialVersionUID = 111601815794403609L;
    /** Lower bound. */
    private final Number lo;
    /** Higher bound. */
    private final Number hi;

    /**
     * Construct an exception from the mismatched dimensions.
     *
     * @param wrong Requested value.
     * @param lo Lower bound.
     * @param hi Higher bound.
     */
    public OutOfRangeException(Number wrong,
                               Number lo,
                               Number hi) {
        this(LocalizedFormats.OUT_OF_RANGE_SIMPLE, wrong, lo, hi);
    }

    /**
     * Construct an exception from the mismatched dimensions with a
     * specific context information.
     *
     * @param specific Context information.
     * @param wrong Requested value.
     * @param lo Lower bound.
     * @param hi Higher bound.
     */
    public OutOfRangeException(Localizable specific,
                               Number wrong,
                               Number lo,
                               Number hi) {
        super(specific, wrong, lo, hi);
        int PROBE_START_LINE_63 = 63;
		Number p_lo_13_line_63 = lo;
		int PROBE_END_LINE_63 = 63;
		this.lo = p_lo_13_line_63;
        int PROBE_START_LINE_64 = 64;
		Number p_hi_14_line_64 = hi;
		int PROBE_END_LINE_64 = 64;
		this.hi = p_hi_14_line_64;
    }

    /**
     * @return the lower bound.
     */
    public Number getLo() {
        return lo;
    }
    /**
     * @return the higher bound.
     */
    public Number getHi() {
        return hi;
    }
}
