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

package org.apache.commons.io.file;

import java.math.BigInteger;

/**
 * Provides counters for files, directories, and sizes, as a visit proceeds.
 *
 * @since 2.7
 */
public class Counters {

    /**
     * Counts files, directories, and sizes, as a visit proceeds.
     */
    private static class AbstractPathCounters implements PathCounters {

        private final Counter byteCounter;
        private final Counter directoryCounter;
        private final Counter fileCounter;

        /**
         * Constructs a new instance.
         *
         * @param byteCounter the byte counter.
         * @param directoryCounter the directory counter.
         * @param fileCounter the file counter.
         */
        protected AbstractPathCounters(final Counter byteCounter, final Counter directoryCounter,
                final Counter fileCounter) {
            super();
            int PROBE_START_LINE_48 = 48;
			org.apache.commons.io.file.Counters.Counter p_byte_counter_348_line_48 = byteCounter;
			int PROBE_END_LINE_48 = 48;
			this.byteCounter = p_byte_counter_348_line_48;
            int PROBE_START_LINE_49 = 49;
			org.apache.commons.io.file.Counters.Counter p_directory_counter_349_line_49 = directoryCounter;
			int PROBE_END_LINE_49 = 49;
			this.directoryCounter = p_directory_counter_349_line_49;
            int PROBE_START_LINE_50 = 50;
			org.apache.commons.io.file.Counters.Counter p_file_counter_350_line_50 = fileCounter;
			int PROBE_END_LINE_50 = 50;
			this.fileCounter = p_file_counter_350_line_50;
        }

        @Override
        public Counter getByteCounter() {
            int PROBE_START_LINE_55 = 55;
			org.apache.commons.io.file.Counters.Counter f_byte_counter_351_line_55 = byteCounter;
			int PROBE_END_LINE_55 = 55;
			return f_byte_counter_351_line_55;
        }

        @Override
        public Counter getDirectoryCounter() {
            return directoryCounter;
        }

        /**
         * Gets the count of visited files.
         *
         * @return the byte count of visited files.
         */
        @Override
        public Counter getFileCounter() {
            int PROBE_START_LINE_70 = 70;
			org.apache.commons.io.file.Counters.Counter f_file_counter_353_line_70 = this.fileCounter;
			int PROBE_END_LINE_70 = 70;
			return f_file_counter_353_line_70;
        }

        @Override
        public String toString() {
            return String.format("%,d files, %,d directories, %,d bytes", Long.valueOf(fileCounter.get()),
                    Long.valueOf(directoryCounter.get()), Long.valueOf(byteCounter.get()));
        }

    }

    /**
     * Counts using a BigInteger number.
     */
    private static class BigIntegerCounter implements Counter {

        private BigInteger value = BigInteger.ZERO;

        @Override
        public void add(final long val) {
            value = value.add(BigInteger.valueOf(val));

        }

        @Override
        public long get() {
            return value.longValueExact();
        }

        @Override
        public BigInteger getBigInteger() {
            return value;
        }

        @Override
        public Long getLong() {
            return Long.valueOf(value.longValueExact());
        }

        @Override
        public void increment() {
            value = value.add(BigInteger.ONE);
        }

        @Override
        public String toString() {
            return value.toString();
        }
    }

    /**
     * Counts files, directories, and sizes, as a visit proceeds, using BigInteger numbers.
     */
    private static class BigIntegerPathCounters extends AbstractPathCounters {

        /**
         * Constructs a new initialized instance.
         */
        protected BigIntegerPathCounters() {
            super(Counters.bigIntegerCounter(), Counters.bigIntegerCounter(), Counters.bigIntegerCounter());
        }

    }

    /**
     * Counts using a number.
     */
    public interface Counter {

        /**
         * Adds the given number to this counter.
         *
         * @param val the value to add.
         */
        void add(long val);

        /**
         * Gets the counter as a long.
         *
         * @return the counter as a long.
         */
        long get();

        /**
         * Gets the counter as a BigInteger.
         *
         * @return the counter as a BigInteger.
         */
        BigInteger getBigInteger();

        /**
         * Gets the counter as a Long.
         *
         * @return the counter as a Long.
         */
        Long getLong();

        /**
         * Adds one to this counter.
         */
        void increment();

    }

    /**
     * Counts using a long number.
     */
    private static class LongCounter implements Counter {

        private long value;

        @Override
        public void add(final long add) {
            int PROBE_START_LINE_183 = 183;
			long p_add_356_line_183 = add;
			int PROBE_END_LINE_183 = 183;
			value += p_add_356_line_183;

        }

        @Override
        public long get() {
            int PROBE_START_LINE_189 = 189;
			long f_value_357_line_189 = value;
			int PROBE_END_LINE_189 = 189;
			return f_value_357_line_189;
        }

        @Override
        public BigInteger getBigInteger() {
            return BigInteger.valueOf(value);
        }

        @Override
        public Long getLong() {
            return Long.valueOf(value);
        }

        @Override
        public void increment() {
            value++;
        }

        @Override
        public String toString() {
            return Long.toString(value);
        }
    }

    /**
     * Counts files, directories, and sizes, as a visit proceeds, using long numbers.
     */
    private static class LongPathCounters extends AbstractPathCounters {

        /**
         * Constructs a new initialized instance.
         */
        protected LongPathCounters() {
            super(Counters.longCounter(), Counters.longCounter(), Counters.longCounter());
        }

    }

    /**
     * Counts files, directories, and sizes, as a visit proceeds.
     */
    public interface PathCounters {

        /**
         * Gets the byte counter.
         *
         * @return the byte counter.
         */
        Counter getByteCounter();

        /**
         * Gets the directory counter.
         *
         * @return the directory counter.
         */
        Counter getDirectoryCounter();

        /**
         * Gets the file counter.
         *
         * @return the file counter.
         */
        Counter getFileCounter();

    }

    /**
     * Returns a new BigInteger Counter.
     *
     * @return a new BigInteger Counter.
     */
    public static Counter bigIntegerCounter() {
        return new BigIntegerCounter();
    }

    /**
     * Returns a new BigInteger PathCounters.
     *
     * @return a new BigInteger PathCounters.
     */
    public static PathCounters bigIntegerPathCounters() {
        return new BigIntegerPathCounters();
    }

    /**
     * Returns a new long Counter.
     *
     * @return a new long Counter.
     */
    public static Counter longCounter() {
        return new LongCounter();
    }

    /**
     * Returns a new BigInteger PathCounters.
     *
     * @return a new BigInteger PathCounters.
     */
    public static PathCounters longPathCounters() {
        return new LongPathCounters();
    }
}
