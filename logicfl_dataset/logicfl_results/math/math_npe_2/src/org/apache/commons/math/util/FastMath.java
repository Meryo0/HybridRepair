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
package org.apache.commons.math.util;

/**
 * Faster, more accurate, portable alternative to {@link Math} and
 * {@link StrictMath} for large scale computation.
 * <p>
 * FastMath speed is achieved by relying heavily on optimizing compilers
 * to native code present in many JVM todays and use of large tables that
 * are computed once at class loading (regardless of the number of subsequent
 * calls to computation methods). This implies that FastMath is targeted
 * more towards large scale computation (i.e. computation that take at least
 * a handful of seconds to complete) on desktop or server machines rather
 * than very small utilities on devices with limited power (i.e. computation
 * that should return a result almost instantly). Note that FastMath is
 * extensively used inside Apache Commons Math, so by calling some algorithms,
 * the one-shot overhead will occur regardless of the end-user calling FastMath
 * methods directly or not. Performance figures for a specific JVM and hardware
 * can be evaluated by running the FastMathTestPerformance tests in the test
 * directory of the source distribution.
 * </p>
 * <p>
 * FastMath accuracy should be mostly independent of the JVM as it relies only
 * on IEEE-754 basic operations and on embedded tables. Almost all operations
 * are accurate to about 0.5 ulp throughout the domain range. This statement,
 * of course is only a rough global observed behavior, it is <em>not</em> a
 * guarantee for <em>every</em> double numbers input (see William Kahan's <a
 * href="http://en.wikipedia.org/wiki/Rounding#The_table-maker.27s_dilemma">Table
 * Maker's Dilemma</a>).
 * </p>
 * <p>
 * Additionally implements the following methods not found in StrictMath:
 * <ul>
 * <li>{@link #asinh(double)}</li>
 * <li>{@link #acosh(double)}</li>
 * <li>{@link #atanh(double)}</li>
 * </ul>
 * The following methods are found in StrictMath since 1.6 only
 * <ul>
 * <li>{@link #copySign(double, double)}</li>
 * <li>{@link #getExponent(double)}</li>
 * <li>{@link #nextAfter(double,double)}</li>
 * <li>{@link #nextUp(double)}</li>
 * <li>{@link #scalb(double, int)}</li>
 * <li>{@link #copySign(float, float)}</li>
 * <li>{@link #getExponent(float)}</li>
 * <li>{@link #nextAfter(float,double)}</li>
 * <li>{@link #nextUp(float)}</li>
 * <li>{@link #scalb(float, int)}</li>
 * </ul>
 * @version $Id$
 * @since 2.2
 */
public class FastMath {

    /** Archimede's constant PI, ratio of circle circumference to diameter. */
    public static final double PI = 105414357.0 / 33554432.0 + 1.984187159361080883e-9;

    /** Napier's constant e, base of the natural logarithm. */
    public static final double E = 2850325.0 / 1048576.0 + 8.254840070411028747e-8;

    /** Exponential evaluated at integer values,
     * exp(x) =  expIntTableA[x + 750] + expIntTableB[x+750].
     */
    private static final double EXP_INT_TABLE_A[] = new double[1500];

    /** Exponential evaluated at integer values,
     * exp(x) =  expIntTableA[x + 750] + expIntTableB[x+750]
     */
    private static final double EXP_INT_TABLE_B[] = new double[1500];

    /** Exponential over the range of 0 - 1 in increments of 2^-10
     * exp(x/1024) =  expFracTableA[x] + expFracTableB[x].
     */
    private static final double EXP_FRAC_TABLE_A[] = new double[1025];

    /** Exponential over the range of 0 - 1 in increments of 2^-10
     * exp(x/1024) =  expFracTableA[x] + expFracTableB[x].
     */
    private static final double EXP_FRAC_TABLE_B[] = new double[1025];

    /** Factorial table, for Taylor series expansions. */
    private static final double FACT[] = new double[20];

    /** Extended precision logarithm table over the range 1 - 2 in increments of 2^-10. */
    private static final double LN_MANT[][] = new double[1024][];

    /** log(2) (high bits). */
    private static final double LN_2_A = 0.693147063255310059;

    /** log(2) (low bits). */
    private static final double LN_2_B = 1.17304635250823482e-7;

    /** Coefficients for slowLog. */
    private static final double LN_SPLIT_COEF[][] = {
        {2.0, 0.0},
        {0.6666666269302368, 3.9736429850260626E-8},
        {0.3999999761581421, 2.3841857910019882E-8},
        {0.2857142686843872, 1.7029898543501842E-8},
        {0.2222222089767456, 1.3245471311735498E-8},
        {0.1818181574344635, 2.4384203044354907E-8},
        {0.1538461446762085, 9.140260083262505E-9},
        {0.13333332538604736, 9.220590270857665E-9},
        {0.11764700710773468, 1.2393345855018391E-8},
        {0.10526403784751892, 8.251545029714408E-9},
        {0.0952233225107193, 1.2675934823758863E-8},
        {0.08713622391223907, 1.1430250008909141E-8},
        {0.07842259109020233, 2.404307984052299E-9},
        {0.08371849358081818, 1.176342548272881E-8},
        {0.030589580535888672, 1.2958646899018938E-9},
        {0.14982303977012634, 1.225743062930824E-8},
    };

    /** Coefficients for log, when input 0.99 < x < 1.01. */
    private static final double LN_QUICK_COEF[][] = {
        {1.0, 5.669184079525E-24},
        {-0.25, -0.25},
        {0.3333333134651184, 1.986821492305628E-8},
        {-0.25, -6.663542893624021E-14},
        {0.19999998807907104, 1.1921056801463227E-8},
        {-0.1666666567325592, -7.800414592973399E-9},
        {0.1428571343421936, 5.650007086920087E-9},
        {-0.12502530217170715, -7.44321345601866E-11},
        {0.11113807559013367, 9.219544613762692E-9},
    };

    /** Coefficients for log in the range of 1.0 < x < 1.0 + 2^-10. */
    private static final double LN_HI_PREC_COEF[][] = {
        {1.0, -6.032174644509064E-23},
        {-0.25, -0.25},
        {0.3333333134651184, 1.9868161777724352E-8},
        {-0.2499999701976776, -2.957007209750105E-8},
        {0.19999954104423523, 1.5830993332061267E-10},
        {-0.16624879837036133, -2.6033824355191673E-8}
    };

    /** Sine table (high bits). */
    private static final double SINE_TABLE_A[] = new double[14];

    /** Sine table (low bits). */
    private static final double SINE_TABLE_B[] = new double[14];

    /** Cosine table (high bits). */
    private static final double COSINE_TABLE_A[] = new double[14];

    /** Cosine table (low bits). */
    private static final double COSINE_TABLE_B[] = new double[14];

    /** Tangent table, used by atan() (high bits). */
    private static final double TANGENT_TABLE_A[] = new double[14];

    /** Tangent table, used by atan() (low bits). */
    private static final double TANGENT_TABLE_B[] = new double[14];

    /** Bits of 1/(2*pi), need for reducePayneHanek(). */
    private static final long RECIP_2PI[] = new long[] {
        (0x28be60dbL << 32) | 0x9391054aL,
        (0x7f09d5f4L << 32) | 0x7d4d3770L,
        (0x36d8a566L << 32) | 0x4f10e410L,
        (0x7f9458eaL << 32) | 0xf7aef158L,
        (0x6dc91b8eL << 32) | 0x909374b8L,
        (0x01924bbaL << 32) | 0x82746487L,
        (0x3f877ac7L << 32) | 0x2c4a69cfL,
        (0xba208d7dL << 32) | 0x4baed121L,
        (0x3a671c09L << 32) | 0xad17df90L,
        (0x4e64758eL << 32) | 0x60d4ce7dL,
        (0x272117e2L << 32) | 0xef7e4a0eL,
        (0xc7fe25ffL << 32) | 0xf7816603L,
        (0xfbcbc462L << 32) | 0xd6829b47L,
        (0xdb4d9fb3L << 32) | 0xc9f2c26dL,
        (0xd3d18fd9L << 32) | 0xa797fa8bL,
        (0x5d49eeb1L << 32) | 0xfaf97c5eL,
        (0xcf41ce7dL << 32) | 0xe294a4baL,
         0x9afed7ecL << 32  };

    /** Bits of pi/4, need for reducePayneHanek(). */
    private static final long PI_O_4_BITS[] = new long[] {
        (0xc90fdaa2L << 32) | 0x2168c234L,
        (0xc4c6628bL << 32) | 0x80dc1cd1L };

    /** Eighths.
     * This is used by sinQ, because its faster to do a table lookup than
     * a multiply in this time-critical routine
     */
    private static final double EIGHTHS[] = {0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0, 1.125, 1.25, 1.375, 1.5, 1.625};

    /** Table of 2^((n+2)/3) */
    private static final double CBRTTWO[] = { 0.6299605249474366,
                                            0.7937005259840998,
                                            1.0,
                                            1.2599210498948732,
                                            1.5874010519681994 };

    /*
     *  There are 52 bits in the mantissa of a double.
     *  For additional precision, the code splits double numbers into two parts,
     *  by clearing the low order 30 bits if possible, and then performs the arithmetic
     *  on each half separately.
     */

    /**
     * 0x40000000 - used to split a double into two parts, both with the low order bits cleared.
     * Equivalent to 2^30.
     */
    private static final long HEX_40000000 = 0x40000000L; // 1073741824L

    /** Mask used to clear low order 30 bits */
    private static final long MASK_30BITS = -1L - (HEX_40000000 -1); // 0xFFFFFFFFC0000000L;

    /** 2^52 - double numbers this large must be integral (no fraction) or NaN or Infinite */
    private static final double TWO_POWER_52 = 4503599627370496.0;

    // Initialize tables
    static {
        int i = 0;

        int PROBE_START_LINE_233 = 233;
		double[] f_fact_1421_line_233 = FACT;
		int PROBE_END_LINE_233 = 233;
		// Generate an array of factorials
        f_fact_1421_line_233[0] = 1.0;
        for (i = 1; true; i++) {
            int PROBE_START_LINE_235 = 235;
			int v_i_1436_line_234 = i;
			double[] f_fact_1421_line_234 = FACT;
			int q_length_20_line_234 = f_fact_1421_line_234.length;
			boolean fast_math_1_expr25_line_234 = v_i_1436_line_234 < q_length_20_line_234;
			if (!(fast_math_1_expr25_line_234)) {
				break;
			}
			double[] f_fact_1421_line_235 = FACT;
			int v_i_1436_line_235 = i;
			double[] f_fact_1421_line_235_v1 = FACT;
			int v_i_1436_line_235_v1 = i;
			int fast_math_1_expr31_line_235 = v_i_1436_line_235_v1 - 1;
			double fast_math_1_expr30_line_235 = f_fact_1421_line_235_v1[fast_math_1_expr31_line_235];
			int v_i_1436_line_235_v2 = i;
			double fast_math_1_expr29_line_235 = fast_math_1_expr30_line_235 * v_i_1436_line_235_v2;
			int PROBE_END_LINE_235 = 235;
			f_fact_1421_line_235[v_i_1436_line_235] = fast_math_1_expr29_line_235;
        }

        double tmp[] = new double[2];
        double recip[] = new double[2];

        // Populate expIntTable
        for (i = 0; true; i++) {
            int PROBE_START_LINE_243 = 243;
			int v_i_1436_line_242 = i;
			boolean fast_math_1_expr35_line_242 = v_i_1436_line_242 < 750;
			if (!(fast_math_1_expr35_line_242)) {
				break;
			}
			int v_i_1436_line_243 = i;
			double[] v_tmp_1437_line_243 = tmp;
			int PROBE_END_LINE_243 = 243;
			expint(v_i_1436_line_243, v_tmp_1437_line_243);
            int PROBE_START_LINE_244 = 244;
			double[] f_exp_int_table_a_1417_line_244 = EXP_INT_TABLE_A;
			int v_i_1436_line_244 = i;
			int fast_math_1_expr41_line_244 = v_i_1436_line_244 + 750;
			double[] v_tmp_1437_line_244 = tmp;
			double fast_math_1_expr40_line_244 = v_tmp_1437_line_244[0];
			int PROBE_END_LINE_244 = 244;
			f_exp_int_table_a_1417_line_244[fast_math_1_expr41_line_244] = fast_math_1_expr40_line_244;
            int PROBE_START_LINE_245 = 245;
			double[] f_exp_int_table_b_1418_line_245 = EXP_INT_TABLE_B;
			int v_i_1436_line_245 = i;
			int fast_math_1_expr45_line_245 = v_i_1436_line_245 + 750;
			double[] v_tmp_1437_line_245 = tmp;
			double fast_math_1_expr44_line_245 = v_tmp_1437_line_245[1];
			int PROBE_END_LINE_245 = 245;
			f_exp_int_table_b_1418_line_245[fast_math_1_expr45_line_245] = fast_math_1_expr44_line_245;

            int PROBE_START_LINE_247 = 252;
			int v_i_1436_line_247 = i;
			boolean fast_math_1_expr46_line_247 = v_i_1436_line_247 != 0;
			int PROBE_END_LINE_247 = 252;
			if (fast_math_1_expr46_line_247) {
                int PROBE_START_LINE_249 = 249;
				double[] v_tmp_1437_line_249 = tmp;
				double[] v_recip_1438_line_249 = recip;
				int PROBE_END_LINE_249 = 249;
				// Negative integer powers
                splitReciprocal(v_tmp_1437_line_249, v_recip_1438_line_249);
                int PROBE_START_LINE_250 = 250;
				double[] f_exp_int_table_a_1417_line_250 = EXP_INT_TABLE_A;
				int v_i_1436_line_250 = i;
				int fast_math_1_expr51_line_250 = 750 - v_i_1436_line_250;
				double[] v_recip_1438_line_250 = recip;
				double fast_math_1_expr50_line_250 = v_recip_1438_line_250[0];
				int PROBE_END_LINE_250 = 250;
				f_exp_int_table_a_1417_line_250[fast_math_1_expr51_line_250] = fast_math_1_expr50_line_250;
                int PROBE_START_LINE_251 = 251;
				double[] f_exp_int_table_b_1418_line_251 = EXP_INT_TABLE_B;
				int v_i_1436_line_251 = i;
				int fast_math_1_expr55_line_251 = 750 - v_i_1436_line_251;
				double[] v_recip_1438_line_251 = recip;
				double fast_math_1_expr54_line_251 = v_recip_1438_line_251[1];
				int PROBE_END_LINE_251 = 251;
				f_exp_int_table_b_1418_line_251[fast_math_1_expr55_line_251] = fast_math_1_expr54_line_251;
            }
        }

        // Populate expFracTable
        for (i = 0; true; i++) {
            int PROBE_START_LINE_257 = 257;
			int v_i_1436_line_256 = i;
			double[] f_exp_frac_table_a_1419_line_256 = EXP_FRAC_TABLE_A;
			int q_length_21_line_256 = f_exp_frac_table_a_1419_line_256.length;
			boolean fast_math_1_expr57_line_256 = v_i_1436_line_256 < q_length_21_line_256;
			if (!(fast_math_1_expr57_line_256)) {
				break;
			}
			int v_i_1436_line_257 = i;
			double fast_math_1_expr60_line_257 = v_i_1436_line_257 / 1024.0;
			double[] v_tmp_1437_line_257 = tmp;
			int PROBE_END_LINE_257 = 257;
			slowexp(fast_math_1_expr60_line_257, v_tmp_1437_line_257);
            int PROBE_START_LINE_258 = 258;
			double[] f_exp_frac_table_a_1419_line_258 = EXP_FRAC_TABLE_A;
			int v_i_1436_line_258 = i;
			double[] v_tmp_1437_line_258 = tmp;
			double fast_math_1_expr63_line_258 = v_tmp_1437_line_258[0];
			int PROBE_END_LINE_258 = 258;
			f_exp_frac_table_a_1419_line_258[v_i_1436_line_258] = fast_math_1_expr63_line_258;
            int PROBE_START_LINE_259 = 259;
			double[] f_exp_frac_table_b_1420_line_259 = EXP_FRAC_TABLE_B;
			int v_i_1436_line_259 = i;
			double[] v_tmp_1437_line_259 = tmp;
			double fast_math_1_expr66_line_259 = v_tmp_1437_line_259[1];
			int PROBE_END_LINE_259 = 259;
			f_exp_frac_table_b_1420_line_259[v_i_1436_line_259] = fast_math_1_expr66_line_259;
        }

        // Populate lnMant table
        for (i = 0; true; i++) {
            int PROBE_START_LINE_264 = 264;
			int v_i_1436_line_263 = i;
			double[][] f_ln_mant_1422_line_263 = LN_MANT;
			int q_length_22_line_263 = f_ln_mant_1422_line_263.length;
			boolean fast_math_1_expr68_line_263 = v_i_1436_line_263 < q_length_22_line_263;
			if (!(fast_math_1_expr68_line_263)) {
				break;
			}
			int v_i_1436_line_264 = i;
			long fast_math_1_expr74_line_264 = ((long) v_i_1436_line_264);
			long fast_math_1_expr73_line_264 = fast_math_1_expr74_line_264 << 42;
			long fast_math_1_expr72_line_264 = (fast_math_1_expr73_line_264);
			long fast_math_1_expr71_line_264 = fast_math_1_expr72_line_264 | 0x3ff0000000000000L;
			double fast_math_1_expr70_line_264 = Double.longBitsToDouble(fast_math_1_expr71_line_264);
			int PROBE_END_LINE_264 = 264;
			double d = fast_math_1_expr70_line_264;
            int PROBE_START_LINE_265 = 265;
			double[][] f_ln_mant_1422_line_265 = LN_MANT;
			int v_i_1436_line_265 = i;
			double v_d_1439_line_265 = d;
			double[] fast_math_1_expr78_line_265 = slowLog(v_d_1439_line_265);
			int PROBE_END_LINE_265 = 265;
			f_ln_mant_1422_line_265[v_i_1436_line_265] = fast_math_1_expr78_line_265;
        }

        // Build the sine and cosine tables
        buildSinCosTables();
    }

    /**
     * Private Constructor
     */
    private FastMath() {
    }

    // Generic helper methods

    /**
     * Get the high order bits from the mantissa.
     * Equivalent to adding and subtracting HEX_40000 but also works for very large numbers
     *
     * @param d the value to split
     * @return the high order part of the mantissa
     */
    private static double doubleHighPart(double d) {
        if (d > -MathUtils.SAFE_MIN && d < MathUtils.SAFE_MIN){
            return d; // These are un-normalised - don't try to convert
        }
        long xl = Double.doubleToLongBits(d);
        xl = xl & MASK_30BITS; // Drop low order bits
        return Double.longBitsToDouble(xl);
    }

    /** Compute the square root of a number.
     * <p><b>Note:</b> this implementation currently delegates to {@link Math#sqrt}
     * @param a number on which evaluation is done
     * @return square root of a
     */
    public static double sqrt(final double a) {
        return Math.sqrt(a);
    }

    /** Compute the hyperbolic cosine of a number.
     * @param x number on which evaluation is done
     * @return hyperbolic cosine of x
     */
    public static double cosh(double x) {
      if (x != x) {
          return x;
      }

      if (x > 20.0) {
          return exp(x)/2.0;
      }

      if (x < -20) {
          return exp(-x)/2.0;
      }

      double hiPrec[] = new double[2];
      if (x < 0.0) {
          x = -x;
      }
      exp(x, 0.0, hiPrec);

      double ya = hiPrec[0] + hiPrec[1];
      double yb = -(ya - hiPrec[0] - hiPrec[1]);

      double temp = ya * HEX_40000000;
      double yaa = ya + temp - temp;
      double yab = ya - yaa;

      // recip = 1/y
      double recip = 1.0/ya;
      temp = recip * HEX_40000000;
      double recipa = recip + temp - temp;
      double recipb = recip - recipa;

      // Correct for rounding in division
      recipb += (1.0 - yaa*recipa - yaa*recipb - yab*recipa - yab*recipb) * recip;
      // Account for yb
      recipb += -yb * recip * recip;

      // y = y + 1/y
      temp = ya + recipa;
      yb += -(temp - ya - recipa);
      ya = temp;
      temp = ya + recipb;
      yb += -(temp - ya - recipb);
      ya = temp;

      double result = ya + yb;
      result *= 0.5;
      return result;
    }

    /** Compute the hyperbolic sine of a number.
     * @param x number on which evaluation is done
     * @return hyperbolic sine of x
     */
    public static double sinh(double x) {
      boolean negate = false;
      if (x != x) {
          return x;
      }

      if (x > 20.0) {
          return exp(x)/2.0;
      }

      if (x < -20) {
          return -exp(-x)/2.0;
      }

      if (x == 0) {
          return x;
      }

      if (x < 0.0) {
          x = -x;
          negate = true;
      }

      double result;

      if (x > 0.25) {
          double hiPrec[] = new double[2];
          exp(x, 0.0, hiPrec);

          double ya = hiPrec[0] + hiPrec[1];
          double yb = -(ya - hiPrec[0] - hiPrec[1]);

          double temp = ya * HEX_40000000;
          double yaa = ya + temp - temp;
          double yab = ya - yaa;

          // recip = 1/y
          double recip = 1.0/ya;
          temp = recip * HEX_40000000;
          double recipa = recip + temp - temp;
          double recipb = recip - recipa;

          // Correct for rounding in division
          recipb += (1.0 - yaa*recipa - yaa*recipb - yab*recipa - yab*recipb) * recip;
          // Account for yb
          recipb += -yb * recip * recip;

          recipa = -recipa;
          recipb = -recipb;

          // y = y + 1/y
          temp = ya + recipa;
          yb += -(temp - ya - recipa);
          ya = temp;
          temp = ya + recipb;
          yb += -(temp - ya - recipb);
          ya = temp;

          result = ya + yb;
          result *= 0.5;
      }
      else {
          double hiPrec[] = new double[2];
          expm1(x, hiPrec);

          double ya = hiPrec[0] + hiPrec[1];
          double yb = -(ya - hiPrec[0] - hiPrec[1]);

          /* Compute expm1(-x) = -expm1(x) / (expm1(x) + 1) */
          double denom = 1.0 + ya;
          double denomr = 1.0 / denom;
          double denomb = -(denom - 1.0 - ya) + yb;
          double ratio = ya * denomr;
          double temp = ratio * HEX_40000000;
          double ra = ratio + temp - temp;
          double rb = ratio - ra;

          temp = denom * HEX_40000000;
          double za = denom + temp - temp;
          double zb = denom - za;

          rb += (ya - za*ra - za*rb - zb*ra - zb*rb) * denomr;

          // Adjust for yb
          rb += yb*denomr;                        // numerator
          rb += -ya * denomb * denomr * denomr;   // denominator

          // y = y - 1/y
          temp = ya + ra;
          yb += -(temp - ya - ra);
          ya = temp;
          temp = ya + rb;
          yb += -(temp - ya - rb);
          ya = temp;

          result = ya + yb;
          result *= 0.5;
      }

      if (negate) {
          result = -result;
      }

      return result;
    }

    /** Compute the hyperbolic tangent of a number.
     * @param x number on which evaluation is done
     * @return hyperbolic tangent of x
     */
    public static double tanh(double x) {
      boolean negate = false;

      if (x != x) {
          return x;
      }

      if (x > 20.0) {
          return 1.0;
      }

      if (x < -20) {
          return -1.0;
      }

      if (x == 0) {
          return x;
      }

      if (x < 0.0) {
          x = -x;
          negate = true;
      }

      double result;
      if (x >= 0.5) {
          double hiPrec[] = new double[2];
          // tanh(x) = (exp(2x) - 1) / (exp(2x) + 1)
          exp(x*2.0, 0.0, hiPrec);

          double ya = hiPrec[0] + hiPrec[1];
          double yb = -(ya - hiPrec[0] - hiPrec[1]);

          /* Numerator */
          double na = -1.0 + ya;
          double nb = -(na + 1.0 - ya);
          double temp = na + yb;
          nb += -(temp - na - yb);
          na = temp;

          /* Denominator */
          double da = 1.0 + ya;
          double db = -(da - 1.0 - ya);
          temp = da + yb;
          db += -(temp - da - yb);
          da = temp;

          temp = da * HEX_40000000;
          double daa = da + temp - temp;
          double dab = da - daa;

          // ratio = na/da
          double ratio = na/da;
          temp = ratio * HEX_40000000;
          double ratioa = ratio + temp - temp;
          double ratiob = ratio - ratioa;

          // Correct for rounding in division
          ratiob += (na - daa*ratioa - daa*ratiob - dab*ratioa - dab*ratiob) / da;

          // Account for nb
          ratiob += nb / da;
          // Account for db
          ratiob += -db * na / da / da;

          result = ratioa + ratiob;
      }
      else {
          double hiPrec[] = new double[2];
          // tanh(x) = expm1(2x) / (expm1(2x) + 2)
          expm1(x*2.0, hiPrec);

          double ya = hiPrec[0] + hiPrec[1];
          double yb = -(ya - hiPrec[0] - hiPrec[1]);

          /* Numerator */
          double na = ya;
          double nb = yb;

          /* Denominator */
          double da = 2.0 + ya;
          double db = -(da - 2.0 - ya);
          double temp = da + yb;
          db += -(temp - da - yb);
          da = temp;

          temp = da * HEX_40000000;
          double daa = da + temp - temp;
          double dab = da - daa;

          // ratio = na/da
          double ratio = na/da;
          temp = ratio * HEX_40000000;
          double ratioa = ratio + temp - temp;
          double ratiob = ratio - ratioa;

          // Correct for rounding in division
          ratiob += (na - daa*ratioa - daa*ratiob - dab*ratioa - dab*ratiob) / da;

          // Account for nb
          ratiob += nb / da;
          // Account for db
          ratiob += -db * na / da / da;

          result = ratioa + ratiob;
      }

      if (negate) {
          result = -result;
      }

      return result;
    }

    /** Compute the inverse hyperbolic cosine of a number.
     * @param a number on which evaluation is done
     * @return inverse hyperbolic cosine of a
     */
    public static double acosh(final double a) {
        return FastMath.log(a + FastMath.sqrt(a * a - 1));
    }

    /** Compute the inverse hyperbolic sine of a number.
     * @param a number on which evaluation is done
     * @return inverse hyperbolic sine of a
     */
    public static double asinh(double a) {

        boolean negative = false;
        if (a < 0) {
            negative = true;
            a = -a;
        }

        double absAsinh;
        if (a > 0.167) {
            absAsinh = FastMath.log(FastMath.sqrt(a * a + 1) + a);
        } else {
            final double a2 = a * a;
            if (a > 0.097) {
                absAsinh = a * (1 - a2 * (1 / 3.0 - a2 * (1 / 5.0 - a2 * (1 / 7.0 - a2 * (1 / 9.0 - a2 * (1.0 / 11.0 - a2 * (1.0 / 13.0 - a2 * (1.0 / 15.0 - a2 * (1.0 / 17.0) * 15.0 / 16.0) * 13.0 / 14.0) * 11.0 / 12.0) * 9.0 / 10.0) * 7.0 / 8.0) * 5.0 / 6.0) * 3.0 / 4.0) / 2.0);
            } else if (a > 0.036) {
                absAsinh = a * (1 - a2 * (1 / 3.0 - a2 * (1 / 5.0 - a2 * (1 / 7.0 - a2 * (1 / 9.0 - a2 * (1.0 / 11.0 - a2 * (1.0 / 13.0) * 11.0 / 12.0) * 9.0 / 10.0) * 7.0 / 8.0) * 5.0 / 6.0) * 3.0 / 4.0) / 2.0);
            } else if (a > 0.0036) {
                absAsinh = a * (1 - a2 * (1 / 3.0 - a2 * (1 / 5.0 - a2 * (1 / 7.0 - a2 * (1 / 9.0) * 7.0 / 8.0) * 5.0 / 6.0) * 3.0 / 4.0) / 2.0);
            } else {
                absAsinh = a * (1 - a2 * (1 / 3.0 - a2 * (1 / 5.0) * 3.0 / 4.0) / 2.0);
            }
        }

        return negative ? -absAsinh : absAsinh;

    }

    /** Compute the inverse hyperbolic tangent of a number.
     * @param a number on which evaluation is done
     * @return inverse hyperbolic tangent of a
     */
    public static double atanh(double a) {

        boolean negative = false;
        if (a < 0) {
            negative = true;
            a = -a;
        }

        double absAtanh;
        if (a > 0.15) {
            absAtanh = 0.5 * FastMath.log((1 + a) / (1 - a));
        } else {
            final double a2 = a * a;
            if (a > 0.087) {
                absAtanh = a * (1 + a2 * (1.0 / 3.0 + a2 * (1.0 / 5.0 + a2 * (1.0 / 7.0 + a2 * (1.0 / 9.0 + a2 * (1.0 / 11.0 + a2 * (1.0 / 13.0 + a2 * (1.0 / 15.0 + a2 * (1.0 / 17.0)))))))));
            } else if (a > 0.031) {
                absAtanh = a * (1 + a2 * (1.0 / 3.0 + a2 * (1.0 / 5.0 + a2 * (1.0 / 7.0 + a2 * (1.0 / 9.0 + a2 * (1.0 / 11.0 + a2 * (1.0 / 13.0)))))));
            } else if (a > 0.003) {
                absAtanh = a * (1 + a2 * (1.0 / 3.0 + a2 * (1.0 / 5.0 + a2 * (1.0 / 7.0 + a2 * (1.0 / 9.0)))));
            } else {
                absAtanh = a * (1 + a2 * (1.0 / 3.0 + a2 * (1.0 / 5.0)));
            }
        }

        return negative ? -absAtanh : absAtanh;

    }

    /** Compute the signum of a number.
     * The signum is -1 for negative numbers, +1 for positive numbers and 0 otherwise
     * @param a number on which evaluation is done
     * @return -1.0, -0.0, +0.0, +1.0 or NaN depending on sign of a
     */
    public static double signum(final double a) {
        return (a < 0.0) ? -1.0 : ((a > 0.0) ? 1.0 : a); // return +0.0/-0.0/NaN depending on a
    }

    /** Compute the signum of a number.
     * The signum is -1 for negative numbers, +1 for positive numbers and 0 otherwise
     * @param a number on which evaluation is done
     * @return -1.0, -0.0, +0.0, +1.0 or NaN depending on sign of a
     */
    public static float signum(final float a) {
        return (a < 0.0f) ? -1.0f : ((a > 0.0f) ? 1.0f : a); // return +0.0/-0.0/NaN depending on a
    }

    /** Compute next number towards positive infinity.
     * @param a number to which neighbor should be computed
     * @return neighbor of a towards positive infinity
     */
    public static double nextUp(final double a) {
        return nextAfter(a, Double.POSITIVE_INFINITY);
    }

    /** Compute next number towards positive infinity.
     * @param a number to which neighbor should be computed
     * @return neighbor of a towards positive infinity
     */
    public static float nextUp(final float a) {
        return nextAfter(a, Float.POSITIVE_INFINITY);
    }

    /** Returns a pseudo-random number between 0.0 and 1.0.
     * <p><b>Note:</b> this implementation currently delegates to {@link Math#random}
     * @return a random number between 0.0 and 1.0
     */
    public static double random() {
        return Math.random();
    }

    /**
     * Exponential function.
     *
     * Computes exp(x), function result is nearly rounded.   It will be correctly
     * rounded to the theoretical value for 99.9% of input values, otherwise it will
     * have a 1 UPL error.
     *
     * Method:
     *    Lookup intVal = exp(int(x))
     *    Lookup fracVal = exp(int(x-int(x) / 1024.0) * 1024.0 );
     *    Compute z as the exponential of the remaining bits by a polynomial minus one
     *    exp(x) = intVal * fracVal * (1 + z)
     *
     * Accuracy:
     *    Calculation is done with 63 bits of precision, so result should be correctly
     *    rounded for 99.9% of input values, with less than 1 ULP error otherwise.
     *
     * @param x   a double
     * @return double e<sup>x</sup>
     */
    public static double exp(double x) {
        return exp(x, 0.0, null);
    }

    /**
     * Internal helper method for exponential function.
     * @param x original argument of the exponential function
     * @param extra extra bits of precision on input (To Be Confirmed)
     * @param hiPrec extra bits of precision on output (To Be Confirmed)
     * @return exp(x)
     */
    private static double exp(double x, double extra, double[] hiPrec) {
        double intPartA;
        double intPartB;
        int intVal;

        /* Lookup exp(floor(x)).
         * intPartA will have the upper 22 bits, intPartB will have the lower
         * 52 bits.
         */
        if (x < 0.0) {
            intVal = (int) -x;

            if (intVal > 746) {
                if (hiPrec != null) {
                    hiPrec[0] = 0.0;
                    hiPrec[1] = 0.0;
                }
                return 0.0;
            }

            if (intVal > 709) {
                /* This will produce a subnormal output */
                final double result = exp(x+40.19140625, extra, hiPrec) / 285040095144011776.0;
                if (hiPrec != null) {
                    hiPrec[0] /= 285040095144011776.0;
                    hiPrec[1] /= 285040095144011776.0;
                }
                return result;
            }

            if (intVal == 709) {
                /* exp(1.494140625) is nearly a machine number... */
                final double result = exp(x+1.494140625, extra, hiPrec) / 4.455505956692756620;
                if (hiPrec != null) {
                    hiPrec[0] /= 4.455505956692756620;
                    hiPrec[1] /= 4.455505956692756620;
                }
                return result;
            }

            intVal++;

            intPartA = EXP_INT_TABLE_A[750-intVal];
            intPartB = EXP_INT_TABLE_B[750-intVal];

            intVal = -intVal;
        } else {
            intVal = (int) x;

            if (intVal > 709) {
                if (hiPrec != null) {
                    hiPrec[0] = Double.POSITIVE_INFINITY;
                    hiPrec[1] = 0.0;
                }
                return Double.POSITIVE_INFINITY;
            }

            intPartA = EXP_INT_TABLE_A[750+intVal];
            intPartB = EXP_INT_TABLE_B[750+intVal];
        }

        /* Get the fractional part of x, find the greatest multiple of 2^-10 less than
         * x and look up the exp function of it.
         * fracPartA will have the upper 22 bits, fracPartB the lower 52 bits.
         */
        final int intFrac = (int) ((x - intVal) * 1024.0);
        final double fracPartA = EXP_FRAC_TABLE_A[intFrac];
        final double fracPartB = EXP_FRAC_TABLE_B[intFrac];

        /* epsilon is the difference in x from the nearest multiple of 2^-10.  It
         * has a value in the range 0 <= epsilon < 2^-10.
         * Do the subtraction from x as the last step to avoid possible loss of percison.
         */
        final double epsilon = x - (intVal + intFrac / 1024.0);

        /* Compute z = exp(epsilon) - 1.0 via a minimax polynomial.  z has
       full double precision (52 bits).  Since z < 2^-10, we will have
       62 bits of precision when combined with the contant 1.  This will be
       used in the last addition below to get proper rounding. */

        /* Remez generated polynomial.  Converges on the interval [0, 2^-10], error
       is less than 0.5 ULP */
        double z = 0.04168701738764507;
        z = z * epsilon + 0.1666666505023083;
        z = z * epsilon + 0.5000000000042687;
        z = z * epsilon + 1.0;
        z = z * epsilon + -3.940510424527919E-20;

        /* Compute (intPartA+intPartB) * (fracPartA+fracPartB) by binomial
       expansion.
       tempA is exact since intPartA and intPartB only have 22 bits each.
       tempB will have 52 bits of precision.
         */
        double tempA = intPartA * fracPartA;
        double tempB = intPartA * fracPartB + intPartB * fracPartA + intPartB * fracPartB;

        /* Compute the result.  (1+z)(tempA+tempB).  Order of operations is
       important.  For accuracy add by increasing size.  tempA is exact and
       much larger than the others.  If there are extra bits specified from the
       pow() function, use them. */
        final double tempC = tempB + tempA;
        final double result;
        if (extra != 0.0) {
            result = tempC*extra*z + tempC*extra + tempC*z + tempB + tempA;
        } else {
            result = tempC*z + tempB + tempA;
        }

        if (hiPrec != null) {
            // If requesting high precision
            hiPrec[0] = tempA;
            hiPrec[1] = tempC*extra*z + tempC*extra + tempC*z + tempB;
        }

        return result;
    }

    /** Compute exp(x) - 1
     * @param x number to compute shifted exponential
     * @return exp(x) - 1
     */
    public static double expm1(double x) {
      return expm1(x, null);
    }

    /** Internal helper method for expm1
     * @param x number to compute shifted exponential
     * @param hiPrecOut receive high precision result for -1.0 < x < 1.0
     * @return exp(x) - 1
     */
    private static double expm1(double x, double hiPrecOut[]) {
        if (x != x || x == 0.0) { // NaN or zero
            return x;
        }

        if (x <= -1.0 || x >= 1.0) {
            // If not between +/- 1.0
            //return exp(x) - 1.0;
            double hiPrec[] = new double[2];
            exp(x, 0.0, hiPrec);
            if (x > 0.0) {
                return -1.0 + hiPrec[0] + hiPrec[1];
            } else {
                final double ra = -1.0 + hiPrec[0];
                double rb = -(ra + 1.0 - hiPrec[0]);
                rb += hiPrec[1];
                return ra + rb;
            }
        }

        double baseA;
        double baseB;
        double epsilon;
        boolean negative = false;

        if (x < 0.0) {
            x = -x;
            negative = true;
        }

        {
            int intFrac = (int) (x * 1024.0);
            double tempA = EXP_FRAC_TABLE_A[intFrac] - 1.0;
            double tempB = EXP_FRAC_TABLE_B[intFrac];

            double temp = tempA + tempB;
            tempB = -(temp - tempA - tempB);
            tempA = temp;

            temp = tempA * HEX_40000000;
            baseA = tempA + temp - temp;
            baseB = tempB + (tempA - baseA);

            epsilon = x - intFrac/1024.0;
        }


        /* Compute expm1(epsilon) */
        double zb = 0.008336750013465571;
        zb = zb * epsilon + 0.041666663879186654;
        zb = zb * epsilon + 0.16666666666745392;
        zb = zb * epsilon + 0.49999999999999994;
        zb = zb * epsilon;
        zb = zb * epsilon;

        double za = epsilon;
        double temp = za + zb;
        zb = -(temp - za - zb);
        za = temp;

        temp = za * HEX_40000000;
        temp = za + temp - temp;
        zb += za - temp;
        za = temp;

        /* Combine the parts.   expm1(a+b) = expm1(a) + expm1(b) + expm1(a)*expm1(b) */
        double ya = za * baseA;
        //double yb = za*baseB + zb*baseA + zb*baseB;
        temp = ya + za * baseB;
        double yb = -(temp - ya - za * baseB);
        ya = temp;

        temp = ya + zb * baseA;
        yb += -(temp - ya - zb * baseA);
        ya = temp;

        temp = ya + zb * baseB;
        yb += -(temp - ya - zb*baseB);
        ya = temp;

        //ya = ya + za + baseA;
        //yb = yb + zb + baseB;
        temp = ya + baseA;
        yb += -(temp - baseA - ya);
        ya = temp;

        temp = ya + za;
        //yb += (ya > za) ? -(temp - ya - za) : -(temp - za - ya);
        yb += -(temp - ya - za);
        ya = temp;

        temp = ya + baseB;
        //yb += (ya > baseB) ? -(temp - ya - baseB) : -(temp - baseB - ya);
        yb += -(temp - ya - baseB);
        ya = temp;

        temp = ya + zb;
        //yb += (ya > zb) ? -(temp - ya - zb) : -(temp - zb - ya);
        yb += -(temp - ya - zb);
        ya = temp;

        if (negative) {
            /* Compute expm1(-x) = -expm1(x) / (expm1(x) + 1) */
            double denom = 1.0 + ya;
            double denomr = 1.0 / denom;
            double denomb = -(denom - 1.0 - ya) + yb;
            double ratio = ya * denomr;
            temp = ratio * HEX_40000000;
            final double ra = ratio + temp - temp;
            double rb = ratio - ra;

            temp = denom * HEX_40000000;
            za = denom + temp - temp;
            zb = denom - za;

            rb += (ya - za * ra - za * rb - zb * ra - zb * rb) * denomr;

            // f(x) = x/1+x
            // Compute f'(x)
            // Product rule:  d(uv) = du*v + u*dv
            // Chain rule:  d(f(g(x)) = f'(g(x))*f(g'(x))
            // d(1/x) = -1/(x*x)
            // d(1/1+x) = -1/( (1+x)^2) *  1 =  -1/((1+x)*(1+x))
            // d(x/1+x) = -x/((1+x)(1+x)) + 1/1+x = 1 / ((1+x)(1+x))

            // Adjust for yb
            rb += yb * denomr;                      // numerator
            rb += -ya * denomb * denomr * denomr;   // denominator

            // negate
            ya = -ra;
            yb = -rb;
        }

        if (hiPrecOut != null) {
            hiPrecOut[0] = ya;
            hiPrecOut[1] = yb;
        }

        return ya + yb;
    }

    /**
     *  For x between 0 and 1, returns exp(x), uses extended precision
     *  @param x argument of exponential
     *  @param result placeholder where to place exp(x) split in two terms
     *  for extra precision (i.e. exp(x) = result[0] ° result[1]
     *  @return exp(x)
     */
    private static double slowexp(final double x, final double result[]) {
        final double xs[] = new double[2];
        final double ys[] = new double[2];
        final double facts[] = new double[2];
        final double as[] = new double[2];
        int PROBE_START_LINE_1016 = 1016;
		double p_x_1459_line_1016 = x;
		double[] v_xs_1461_line_1016 = xs;
		int PROBE_END_LINE_1016 = 1016;
		split(p_x_1459_line_1016, v_xs_1461_line_1016);
        int PROBE_START_LINE_1017 = 1017;
		double[] v_ys_1462_line_1017 = ys;
		double[] v_ys_1462_line_1017_v1 = ys;
		int PROBE_END_LINE_1017 = 1017;
		v_ys_1462_line_1017[0] = v_ys_1462_line_1017_v1[1] = 0.0;

        for (int i = 19; true; i--) {
            int PROBE_START_LINE_1020 = 1020;
			int v_i_1465_line_1019 = i;
			boolean fast_math_1_expr90_line_1019 = v_i_1465_line_1019 >= 0;
			if (!(fast_math_1_expr90_line_1019)) {
				break;
			}
			double[] v_xs_1461_line_1020 = xs;
			double[] v_ys_1462_line_1020 = ys;
			double[] v_as_1464_line_1020 = as;
			int PROBE_END_LINE_1020 = 1020;
			splitMult(v_xs_1461_line_1020, v_ys_1462_line_1020, v_as_1464_line_1020);
            int PROBE_START_LINE_1021 = 1021;
			double[] v_ys_1462_line_1021 = ys;
			double[] v_as_1464_line_1021 = as;
			double fast_math_1_expr95_line_1021 = v_as_1464_line_1021[0];
			int PROBE_END_LINE_1021 = 1021;
			v_ys_1462_line_1021[0] = fast_math_1_expr95_line_1021;
            int PROBE_START_LINE_1022 = 1022;
			double[] v_ys_1462_line_1022 = ys;
			double[] v_as_1464_line_1022 = as;
			double fast_math_1_expr98_line_1022 = v_as_1464_line_1022[1];
			int PROBE_END_LINE_1022 = 1022;
			v_ys_1462_line_1022[1] = fast_math_1_expr98_line_1022;

            int PROBE_START_LINE_1024 = 1024;
			double[] f_fact_1421_line_1024 = FACT;
			int v_i_1465_line_1024 = i;
			double fast_math_1_expr100_line_1024 = f_fact_1421_line_1024[v_i_1465_line_1024];
			double[] v_as_1464_line_1024 = as;
			int PROBE_END_LINE_1024 = 1024;
			split(fast_math_1_expr100_line_1024, v_as_1464_line_1024);
            int PROBE_START_LINE_1025 = 1025;
			double[] v_as_1464_line_1025 = as;
			double[] v_facts_1463_line_1025 = facts;
			int PROBE_END_LINE_1025 = 1025;
			splitReciprocal(v_as_1464_line_1025, v_facts_1463_line_1025);

            int PROBE_START_LINE_1027 = 1027;
			double[] v_ys_1462_line_1027 = ys;
			double[] v_facts_1463_line_1027 = facts;
			double[] v_as_1464_line_1027 = as;
			int PROBE_END_LINE_1027 = 1027;
			splitAdd(v_ys_1462_line_1027, v_facts_1463_line_1027, v_as_1464_line_1027);
            int PROBE_START_LINE_1028 = 1028;
			double[] v_ys_1462_line_1028 = ys;
			double[] v_as_1464_line_1028 = as;
			double fast_math_1_expr105_line_1028 = v_as_1464_line_1028[0];
			int PROBE_END_LINE_1028 = 1028;
			v_ys_1462_line_1028[0] = fast_math_1_expr105_line_1028;
            int PROBE_START_LINE_1029 = 1029;
			double[] v_ys_1462_line_1029 = ys;
			double[] v_as_1464_line_1029 = as;
			double fast_math_1_expr108_line_1029 = v_as_1464_line_1029[1];
			int PROBE_END_LINE_1029 = 1029;
			v_ys_1462_line_1029[1] = fast_math_1_expr108_line_1029;
        }

        int PROBE_START_LINE_1032 = 1035;
		double[] p_result_1460_line_1032 = result;
		boolean fast_math_1_expr109_line_1032 = p_result_1460_line_1032 != null;
		int PROBE_END_LINE_1032 = 1035;
		if (fast_math_1_expr109_line_1032) {
            int PROBE_START_LINE_1033 = 1033;
			double[] p_result_1460_line_1033 = result;
			double[] v_ys_1462_line_1033 = ys;
			double fast_math_1_expr112_line_1033 = v_ys_1462_line_1033[0];
			int PROBE_END_LINE_1033 = 1033;
			p_result_1460_line_1033[0] = fast_math_1_expr112_line_1033;
            int PROBE_START_LINE_1034 = 1034;
			double[] p_result_1460_line_1034 = result;
			double[] v_ys_1462_line_1034 = ys;
			double fast_math_1_expr115_line_1034 = v_ys_1462_line_1034[1];
			int PROBE_END_LINE_1034 = 1034;
			p_result_1460_line_1034[1] = fast_math_1_expr115_line_1034;
        }

        int PROBE_START_LINE_1037 = 1037;
		double[] v_ys_1462_line_1037 = ys;
		double fast_math_1_expr117_line_1037 = v_ys_1462_line_1037[0];
		double[] v_ys_1462_line_1037_v1 = ys;
		double fast_math_1_expr118_line_1037 = v_ys_1462_line_1037_v1[1];
		double fast_math_1_expr116_line_1037 = fast_math_1_expr117_line_1037 + fast_math_1_expr118_line_1037;
		int PROBE_END_LINE_1037 = 1037;
		return fast_math_1_expr116_line_1037;
    }

    /** Compute split[0], split[1] such that their sum is equal to d,
     * and split[0] has its 30 least significant bits as zero.
     * @param d number to split
     * @param split placeholder where to place the result
     */
    private static void split(final double d, final double split[]) {
        int PROBE_START_LINE_1046 = 1054;
		double p_d_1466_line_1046 = d;
		boolean fast_math_1_expr120_line_1046 = p_d_1466_line_1046 < 8e298;
		boolean fast_math_1_expr121_line_1046 = true;
		if (fast_math_1_expr120_line_1046) {
			double p_d_1466_line_1046_v1 = d;
			double fast_math_1_expr122_line_1046 = -8e298;
			fast_math_1_expr121_line_1046 = p_d_1466_line_1046_v1 > fast_math_1_expr122_line_1046;
		}
		boolean fast_math_1_expr119_line_1046 = fast_math_1_expr120_line_1046 && fast_math_1_expr121_line_1046;
		int PROBE_END_LINE_1046 = 1054;
		if (fast_math_1_expr119_line_1046) {
            int PROBE_START_LINE_1047 = 1047;
			double p_d_1466_line_1047 = d;
			long f_hex_40000000_1469_line_1047 = HEX_40000000;
			double fast_math_1_expr123_line_1047 = p_d_1466_line_1047 * f_hex_40000000_1469_line_1047;
			int PROBE_END_LINE_1047 = 1047;
			final double a = fast_math_1_expr123_line_1047;
            int PROBE_START_LINE_1048 = 1048;
			double[] p_split_1467_line_1048 = split;
			double p_d_1466_line_1048 = d;
			double v_a_1468_line_1048 = a;
			double fast_math_1_expr128_line_1048 = p_d_1466_line_1048 + v_a_1468_line_1048;
			double fast_math_1_expr127_line_1048 = (fast_math_1_expr128_line_1048);
			double v_a_1468_line_1048_v1 = a;
			double fast_math_1_expr126_line_1048 = fast_math_1_expr127_line_1048 - v_a_1468_line_1048_v1;
			int PROBE_END_LINE_1048 = 1048;
			p_split_1467_line_1048[0] = fast_math_1_expr126_line_1048;
            int PROBE_START_LINE_1049 = 1049;
			double[] p_split_1467_line_1049 = split;
			double p_d_1466_line_1049 = d;
			double[] p_split_1467_line_1049_v1 = split;
			double fast_math_1_expr132_line_1049 = p_split_1467_line_1049_v1[0];
			double fast_math_1_expr131_line_1049 = p_d_1466_line_1049 - fast_math_1_expr132_line_1049;
			int PROBE_END_LINE_1049 = 1049;
			p_split_1467_line_1049[1] = fast_math_1_expr131_line_1049;
        } else {
            final double a = d * 9.31322574615478515625E-10;
            split[0] = (d + a - d) * HEX_40000000;
            split[1] = d - split[0];
        }
    }

    /** Recompute a split.
     * @param a input/out array containing the split, changed
     * on output
     */
    private static void resplit(final double a[]) {
        int PROBE_START_LINE_1062 = 1062;
		double[] p_a_1470_line_1062 = a;
		double fast_math_1_expr134_line_1062 = p_a_1470_line_1062[0];
		double[] p_a_1470_line_1062_v1 = a;
		double fast_math_1_expr135_line_1062 = p_a_1470_line_1062_v1[1];
		double fast_math_1_expr133_line_1062 = fast_math_1_expr134_line_1062 + fast_math_1_expr135_line_1062;
		int PROBE_END_LINE_1062 = 1062;
		final double c = fast_math_1_expr133_line_1062;
        int PROBE_START_LINE_1063 = 1063;
		double v_c_1471_line_1063 = c;
		double[] p_a_1470_line_1063 = a;
		double fast_math_1_expr139_line_1063 = p_a_1470_line_1063[0];
		double[] p_a_1470_line_1063_v1 = a;
		double fast_math_1_expr140_line_1063 = p_a_1470_line_1063_v1[1];
		double fast_math_1_expr138_line_1063 = v_c_1471_line_1063 - fast_math_1_expr139_line_1063
				- fast_math_1_expr140_line_1063;
		double fast_math_1_expr137_line_1063 = (fast_math_1_expr138_line_1063);
		double fast_math_1_expr136_line_1063 = -fast_math_1_expr137_line_1063;
		int PROBE_END_LINE_1063 = 1063;
		final double d = fast_math_1_expr136_line_1063;

        int PROBE_START_LINE_1065 = 1073;
		double v_c_1471_line_1065 = c;
		boolean fast_math_1_expr142_line_1065 = v_c_1471_line_1065 < 8e298;
		boolean fast_math_1_expr143_line_1065 = true;
		if (fast_math_1_expr142_line_1065) {
			double v_c_1471_line_1065_v1 = c;
			double fast_math_1_expr144_line_1065 = -8e298;
			fast_math_1_expr143_line_1065 = v_c_1471_line_1065_v1 > fast_math_1_expr144_line_1065;
		}
		boolean fast_math_1_expr141_line_1065 = fast_math_1_expr142_line_1065 && fast_math_1_expr143_line_1065;
		int PROBE_END_LINE_1065 = 1073;
		if (fast_math_1_expr141_line_1065) {
            int PROBE_START_LINE_1066 = 1066;
			double v_c_1471_line_1066 = c;
			long f_hex_40000000_1469_line_1066 = HEX_40000000;
			double fast_math_1_expr145_line_1066 = v_c_1471_line_1066 * f_hex_40000000_1469_line_1066;
			int PROBE_END_LINE_1066 = 1066;
			double z = fast_math_1_expr145_line_1066;
            int PROBE_START_LINE_1067 = 1067;
			double[] p_a_1470_line_1067 = a;
			double v_c_1471_line_1067 = c;
			double v_z_1473_line_1067 = z;
			double fast_math_1_expr150_line_1067 = v_c_1471_line_1067 + v_z_1473_line_1067;
			double fast_math_1_expr149_line_1067 = (fast_math_1_expr150_line_1067);
			double v_z_1473_line_1067_v1 = z;
			double fast_math_1_expr148_line_1067 = fast_math_1_expr149_line_1067 - v_z_1473_line_1067_v1;
			int PROBE_END_LINE_1067 = 1067;
			p_a_1470_line_1067[0] = fast_math_1_expr148_line_1067;
            int PROBE_START_LINE_1068 = 1068;
			double[] p_a_1470_line_1068 = a;
			double v_c_1471_line_1068 = c;
			double[] p_a_1470_line_1068_v1 = a;
			double fast_math_1_expr155_line_1068 = p_a_1470_line_1068_v1[0];
			double fast_math_1_expr154_line_1068 = v_c_1471_line_1068 - fast_math_1_expr155_line_1068;
			double v_d_1472_line_1068 = d;
			double fast_math_1_expr153_line_1068 = fast_math_1_expr154_line_1068 + v_d_1472_line_1068;
			int PROBE_END_LINE_1068 = 1068;
			p_a_1470_line_1068[1] = fast_math_1_expr153_line_1068;
        } else {
            int PROBE_START_LINE_1070 = 1070;
			double v_c_1471_line_1070 = c;
			double fast_math_1_expr156_line_1070 = v_c_1471_line_1070 * 9.31322574615478515625E-10;
			int PROBE_END_LINE_1070 = 1070;
			double z = fast_math_1_expr156_line_1070;
            int PROBE_START_LINE_1071 = 1071;
			double[] p_a_1470_line_1071 = a;
			double v_c_1471_line_1071 = c;
			double v_z_1474_line_1071 = z;
			double fast_math_1_expr162_line_1071 = v_c_1471_line_1071 + v_z_1474_line_1071;
			double v_c_1471_line_1071_v1 = c;
			double fast_math_1_expr161_line_1071 = fast_math_1_expr162_line_1071 - v_c_1471_line_1071_v1;
			double fast_math_1_expr160_line_1071 = (fast_math_1_expr161_line_1071);
			long f_hex_40000000_1469_line_1071 = HEX_40000000;
			double fast_math_1_expr159_line_1071 = fast_math_1_expr160_line_1071 * f_hex_40000000_1469_line_1071;
			int PROBE_END_LINE_1071 = 1071;
			p_a_1470_line_1071[0] = fast_math_1_expr159_line_1071;
            int PROBE_START_LINE_1072 = 1072;
			double[] p_a_1470_line_1072 = a;
			double v_c_1471_line_1072 = c;
			double[] p_a_1470_line_1072_v1 = a;
			double fast_math_1_expr167_line_1072 = p_a_1470_line_1072_v1[0];
			double fast_math_1_expr166_line_1072 = v_c_1471_line_1072 - fast_math_1_expr167_line_1072;
			double v_d_1472_line_1072 = d;
			double fast_math_1_expr165_line_1072 = fast_math_1_expr166_line_1072 + v_d_1472_line_1072;
			int PROBE_END_LINE_1072 = 1072;
			p_a_1470_line_1072[1] = fast_math_1_expr165_line_1072;
        }
    }

    /** Multiply two numbers in split form.
     * @param a first term of multiplication
     * @param b second term of multiplication
     * @param ans placeholder where to put the result
     */
    private static void splitMult(double a[], double b[], double ans[]) {
        int PROBE_START_LINE_1082 = 1082;
		double[] p_ans_1477_line_1082 = ans;
		double[] p_a_1475_line_1082 = a;
		double fast_math_1_expr171_line_1082 = p_a_1475_line_1082[0];
		double[] p_b_1476_line_1082 = b;
		double fast_math_1_expr172_line_1082 = p_b_1476_line_1082[0];
		double fast_math_1_expr170_line_1082 = fast_math_1_expr171_line_1082 * fast_math_1_expr172_line_1082;
		int PROBE_END_LINE_1082 = 1082;
		p_ans_1477_line_1082[0] = fast_math_1_expr170_line_1082;
        int PROBE_START_LINE_1083 = 1083;
		double[] p_ans_1477_line_1083 = ans;
		double[] p_a_1475_line_1083 = a;
		double fast_math_1_expr178_line_1083 = p_a_1475_line_1083[0];
		double[] p_b_1476_line_1083 = b;
		double fast_math_1_expr179_line_1083 = p_b_1476_line_1083[1];
		double fast_math_1_expr177_line_1083 = fast_math_1_expr178_line_1083 * fast_math_1_expr179_line_1083;
		double[] p_a_1475_line_1083_v1 = a;
		double fast_math_1_expr181_line_1083 = p_a_1475_line_1083_v1[1];
		double[] p_b_1476_line_1083_v1 = b;
		double fast_math_1_expr182_line_1083 = p_b_1476_line_1083_v1[0];
		double fast_math_1_expr180_line_1083 = fast_math_1_expr181_line_1083 * fast_math_1_expr182_line_1083;
		double fast_math_1_expr176_line_1083 = fast_math_1_expr177_line_1083 + fast_math_1_expr180_line_1083;
		double[] p_a_1475_line_1083_v2 = a;
		double fast_math_1_expr184_line_1083 = p_a_1475_line_1083_v2[1];
		double[] p_b_1476_line_1083_v2 = b;
		double fast_math_1_expr185_line_1083 = p_b_1476_line_1083_v2[1];
		double fast_math_1_expr183_line_1083 = fast_math_1_expr184_line_1083 * fast_math_1_expr185_line_1083;
		double fast_math_1_expr175_line_1083 = fast_math_1_expr176_line_1083 + fast_math_1_expr183_line_1083;
		int PROBE_END_LINE_1083 = 1083;
		p_ans_1477_line_1083[1] = fast_math_1_expr175_line_1083;

        int PROBE_START_LINE_1086 = 1086;
		double[] p_ans_1477_line_1086 = ans;
		int PROBE_END_LINE_1086 = 1086;
		/* Resplit */
        resplit(p_ans_1477_line_1086);
    }

    /** Add two numbers in split form.
     * @param a first term of addition
     * @param b second term of addition
     * @param ans placeholder where to put the result
     */
    private static void splitAdd(final double a[], final double b[], final double ans[]) {
        int PROBE_START_LINE_1095 = 1095;
		double[] p_ans_1480_line_1095 = ans;
		double[] p_a_1478_line_1095 = a;
		double fast_math_1_expr190_line_1095 = p_a_1478_line_1095[0];
		double[] p_b_1479_line_1095 = b;
		double fast_math_1_expr191_line_1095 = p_b_1479_line_1095[0];
		double fast_math_1_expr189_line_1095 = fast_math_1_expr190_line_1095 + fast_math_1_expr191_line_1095;
		int PROBE_END_LINE_1095 = 1095;
		p_ans_1480_line_1095[0] = fast_math_1_expr189_line_1095;
        int PROBE_START_LINE_1096 = 1096;
		double[] p_ans_1480_line_1096 = ans;
		double[] p_a_1478_line_1096 = a;
		double fast_math_1_expr195_line_1096 = p_a_1478_line_1096[1];
		double[] p_b_1479_line_1096 = b;
		double fast_math_1_expr196_line_1096 = p_b_1479_line_1096[1];
		double fast_math_1_expr194_line_1096 = fast_math_1_expr195_line_1096 + fast_math_1_expr196_line_1096;
		int PROBE_END_LINE_1096 = 1096;
		p_ans_1480_line_1096[1] = fast_math_1_expr194_line_1096;

        int PROBE_START_LINE_1098 = 1098;
		double[] p_ans_1480_line_1098 = ans;
		int PROBE_END_LINE_1098 = 1098;
		resplit(p_ans_1480_line_1098);
    }

    /** Compute the reciprocal of in.  Use the following algorithm.
     *  in = c + d.
     *  want to find x + y such that x+y = 1/(c+d) and x is much
     *  larger than y and x has several zero bits on the right.
     *
     *  Set b = 1/(2^22),  a = 1 - b.  Thus (a+b) = 1.
     *  Use following identity to compute (a+b)/(c+d)
     *
     *  (a+b)/(c+d)  =   a/c   +    (bc - ad) / (c^2 + cd)
     *  set x = a/c  and y = (bc - ad) / (c^2 + cd)
     *  This will be close to the right answer, but there will be
     *  some rounding in the calculation of X.  So by carefully
     *  computing 1 - (c+d)(x+y) we can compute an error and
     *  add that back in.   This is done carefully so that terms
     *  of similar size are subtracted first.
     *  @param in initial number, in split form
     *  @param result placeholder where to put the result
     */
    private static void splitReciprocal(final double in[], final double result[]) {
        int PROBE_START_LINE_1120 = 1120;
		double fast_math_1_expr198_line_1120 = 1.0 / 4194304.0;
		int PROBE_END_LINE_1120 = 1120;
		final double b = fast_math_1_expr198_line_1120;
        int PROBE_START_LINE_1121 = 1121;
		double v_b_1483_line_1121 = b;
		double fast_math_1_expr199_line_1121 = 1.0 - v_b_1483_line_1121;
		int PROBE_END_LINE_1121 = 1121;
		final double a = fast_math_1_expr199_line_1121;

        int PROBE_START_LINE_1123 = 1126;
		double[] p_in_1481_line_1123 = in;
		double fast_math_1_expr201_line_1123 = p_in_1481_line_1123[0];
		boolean fast_math_1_expr200_line_1123 = fast_math_1_expr201_line_1123 == 0.0;
		int PROBE_END_LINE_1123 = 1126;
		if (fast_math_1_expr200_line_1123) {
            in[0] = in[1];
            in[1] = 0.0;
        }

        int PROBE_START_LINE_1128 = 1128;
		double[] p_result_1482_line_1128 = result;
		double v_a_1484_line_1128 = a;
		double[] p_in_1481_line_1128 = in;
		double fast_math_1_expr205_line_1128 = p_in_1481_line_1128[0];
		double fast_math_1_expr204_line_1128 = v_a_1484_line_1128 / fast_math_1_expr205_line_1128;
		int PROBE_END_LINE_1128 = 1128;
		p_result_1482_line_1128[0] = fast_math_1_expr204_line_1128;
        int PROBE_START_LINE_1129 = 1129;
		double[] p_result_1482_line_1129 = result;
		double v_b_1483_line_1129 = b;
		double[] p_in_1481_line_1129 = in;
		double fast_math_1_expr212_line_1129 = p_in_1481_line_1129[0];
		double fast_math_1_expr211_line_1129 = v_b_1483_line_1129 * fast_math_1_expr212_line_1129;
		double v_a_1484_line_1129 = a;
		double[] p_in_1481_line_1129_v1 = in;
		double fast_math_1_expr214_line_1129 = p_in_1481_line_1129_v1[1];
		double fast_math_1_expr213_line_1129 = v_a_1484_line_1129 * fast_math_1_expr214_line_1129;
		double fast_math_1_expr210_line_1129 = fast_math_1_expr211_line_1129 - fast_math_1_expr213_line_1129;
		double fast_math_1_expr209_line_1129 = (fast_math_1_expr210_line_1129);
		double[] p_in_1481_line_1129_v2 = in;
		double fast_math_1_expr218_line_1129 = p_in_1481_line_1129_v2[0];
		double[] p_in_1481_line_1129_v3 = in;
		double fast_math_1_expr219_line_1129 = p_in_1481_line_1129_v3[0];
		double fast_math_1_expr217_line_1129 = fast_math_1_expr218_line_1129 * fast_math_1_expr219_line_1129;
		double[] p_in_1481_line_1129_v4 = in;
		double fast_math_1_expr221_line_1129 = p_in_1481_line_1129_v4[0];
		double[] p_in_1481_line_1129_v5 = in;
		double fast_math_1_expr222_line_1129 = p_in_1481_line_1129_v5[1];
		double fast_math_1_expr220_line_1129 = fast_math_1_expr221_line_1129 * fast_math_1_expr222_line_1129;
		double fast_math_1_expr216_line_1129 = fast_math_1_expr217_line_1129 + fast_math_1_expr220_line_1129;
		double fast_math_1_expr215_line_1129 = (fast_math_1_expr216_line_1129);
		double fast_math_1_expr208_line_1129 = fast_math_1_expr209_line_1129 / fast_math_1_expr215_line_1129;
		int PROBE_END_LINE_1129 = 1129;
		p_result_1482_line_1129[1] = fast_math_1_expr208_line_1129;

        int PROBE_START_LINE_1131 = 1133;
		double[] p_result_1482_line_1131 = result;
		double fast_math_1_expr224_line_1131 = p_result_1482_line_1131[1];
		double[] p_result_1482_line_1131_v1 = result;
		double fast_math_1_expr225_line_1131 = p_result_1482_line_1131_v1[1];
		boolean fast_math_1_expr223_line_1131 = fast_math_1_expr224_line_1131 != fast_math_1_expr225_line_1131;
		int PROBE_END_LINE_1131 = 1133;
		if (fast_math_1_expr223_line_1131) { // can happen if result[1] is NAN
            int PROBE_START_LINE_1132 = 1132;
			double[] p_result_1482_line_1132 = result;
			int PROBE_END_LINE_1132 = 1132;
			p_result_1482_line_1132[1] = 0.0;
        }

        int PROBE_START_LINE_1136 = 1136;
		double[] p_result_1482_line_1136 = result;
		int PROBE_END_LINE_1136 = 1136;
		/* Resplit */
        resplit(p_result_1482_line_1136);

        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1140 = 1141;
			int v_i_1485_line_1138 = i;
			boolean fast_math_1_expr230_line_1138 = v_i_1485_line_1138 < 2;
			if (!(fast_math_1_expr230_line_1138)) {
				break;
			}
			double[] p_result_1482_line_1140 = result;
			double fast_math_1_expr237_line_1140 = p_result_1482_line_1140[0];
			double[] p_in_1481_line_1140 = in;
			double fast_math_1_expr238_line_1140 = p_in_1481_line_1140[0];
			double fast_math_1_expr236_line_1140 = fast_math_1_expr237_line_1140 * fast_math_1_expr238_line_1140;
			double fast_math_1_expr235_line_1140 = 1.0 - fast_math_1_expr236_line_1140;
			double[] p_result_1482_line_1140_v1 = result;
			double fast_math_1_expr240_line_1140 = p_result_1482_line_1140_v1[0];
			double[] p_in_1481_line_1140_v1 = in;
			double fast_math_1_expr241_line_1140 = p_in_1481_line_1140_v1[1];
			double fast_math_1_expr239_line_1140 = fast_math_1_expr240_line_1140 * fast_math_1_expr241_line_1140;
			double fast_math_1_expr234_line_1140 = fast_math_1_expr235_line_1140 - fast_math_1_expr239_line_1140;
			double fast_math_1_expr233_line_1140 = fast_math_1_expr234_line_1140 - result[1] * in[0];
			double fast_math_1_expr232_line_1140 = fast_math_1_expr233_line_1140 - result[1] * in[1];
			int PROBE_END_LINE_1140 = 1141;
			/* this may be overkill, probably once is enough */
            double err = fast_math_1_expr232_line_1140;
            int PROBE_START_LINE_1143 = 1143;
			double v_err_1486_line_1143 = err;
			double[] p_result_1482_line_1143 = result;
			double fast_math_1_expr246_line_1143 = p_result_1482_line_1143[0];
			double[] p_result_1482_line_1143_v1 = result;
			double fast_math_1_expr247_line_1143 = p_result_1482_line_1143_v1[1];
			double fast_math_1_expr245_line_1143 = fast_math_1_expr246_line_1143 + fast_math_1_expr247_line_1143;
			double fast_math_1_expr244_line_1143 = (fast_math_1_expr245_line_1143);
			double fast_math_1_expr243_line_1143 = v_err_1486_line_1143 * fast_math_1_expr244_line_1143;
			int PROBE_END_LINE_1143 = 1143;
			/*err = 1.0 - err; */
            err = fast_math_1_expr243_line_1143;
            int PROBE_START_LINE_1145 = 1145;
			double[] p_result_1482_line_1145 = result;
			double v_err_1486_line_1145 = err;
			int PROBE_END_LINE_1145 = 1145;
			/*printf("err = %16e\n", err); */
            p_result_1482_line_1145[1] += v_err_1486_line_1145;
        }
    }

    /** Compute (a[0] + a[1]) * (b[0] + b[1]) in extended precision.
     * @param a first term of the multiplication
     * @param b second term of the multiplication
     * @param result placeholder where to put the result
     */
    private static void quadMult(final double a[], final double b[], final double result[]) {
        final double xs[] = new double[2];
        final double ys[] = new double[2];
        final double zs[] = new double[2];

        int PROBE_START_LINE_1160 = 1160;
		double[] p_a_1487_line_1160 = a;
		double fast_math_1_expr254_line_1160 = p_a_1487_line_1160[0];
		double[] v_xs_1490_line_1160 = xs;
		int PROBE_END_LINE_1160 = 1160;
		/* a[0] * b[0] */
        split(fast_math_1_expr254_line_1160, v_xs_1490_line_1160);
        int PROBE_START_LINE_1161 = 1161;
		double[] p_b_1488_line_1161 = b;
		double fast_math_1_expr256_line_1161 = p_b_1488_line_1161[0];
		double[] v_ys_1491_line_1161 = ys;
		int PROBE_END_LINE_1161 = 1161;
		split(fast_math_1_expr256_line_1161, v_ys_1491_line_1161);
        int PROBE_START_LINE_1162 = 1162;
		double[] v_xs_1490_line_1162 = xs;
		double[] v_ys_1491_line_1162 = ys;
		double[] v_zs_1492_line_1162 = zs;
		int PROBE_END_LINE_1162 = 1162;
		splitMult(v_xs_1490_line_1162, v_ys_1491_line_1162, v_zs_1492_line_1162);

        int PROBE_START_LINE_1164 = 1164;
		double[] p_result_1489_line_1164 = result;
		double[] v_zs_1492_line_1164 = zs;
		double fast_math_1_expr260_line_1164 = v_zs_1492_line_1164[0];
		int PROBE_END_LINE_1164 = 1164;
		p_result_1489_line_1164[0] = fast_math_1_expr260_line_1164;
        int PROBE_START_LINE_1165 = 1165;
		double[] p_result_1489_line_1165 = result;
		double[] v_zs_1492_line_1165 = zs;
		double fast_math_1_expr263_line_1165 = v_zs_1492_line_1165[1];
		int PROBE_END_LINE_1165 = 1165;
		p_result_1489_line_1165[1] = fast_math_1_expr263_line_1165;

        int PROBE_START_LINE_1168 = 1168;
		double[] p_b_1488_line_1168 = b;
		double fast_math_1_expr265_line_1168 = p_b_1488_line_1168[1];
		double[] v_ys_1491_line_1168 = ys;
		int PROBE_END_LINE_1168 = 1168;
		/* a[0] * b[1] */
        split(fast_math_1_expr265_line_1168, v_ys_1491_line_1168);
        int PROBE_START_LINE_1169 = 1169;
		double[] v_xs_1490_line_1169 = xs;
		double[] v_ys_1491_line_1169 = ys;
		double[] v_zs_1492_line_1169 = zs;
		int PROBE_END_LINE_1169 = 1169;
		splitMult(v_xs_1490_line_1169, v_ys_1491_line_1169, v_zs_1492_line_1169);

        int PROBE_START_LINE_1171 = 1171;
		double[] p_result_1489_line_1171 = result;
		double fast_math_1_expr268_line_1171 = p_result_1489_line_1171[0];
		double[] v_zs_1492_line_1171 = zs;
		double fast_math_1_expr269_line_1171 = v_zs_1492_line_1171[0];
		double fast_math_1_expr267_line_1171 = fast_math_1_expr268_line_1171 + fast_math_1_expr269_line_1171;
		int PROBE_END_LINE_1171 = 1171;
		double tmp = fast_math_1_expr267_line_1171;
        int PROBE_START_LINE_1172 = 1172;
		double[] p_result_1489_line_1172 = result;
		double[] p_result_1489_line_1172_v1 = result;
		double fast_math_1_expr273_line_1172 = p_result_1489_line_1172_v1[1];
		double v_tmp_1493_line_1172 = tmp;
		double[] p_result_1489_line_1172_v2 = result;
		double fast_math_1_expr276_line_1172 = p_result_1489_line_1172_v2[0];
		double[] v_zs_1492_line_1172 = zs;
		double fast_math_1_expr277_line_1172 = v_zs_1492_line_1172[0];
		double fast_math_1_expr275_line_1172 = v_tmp_1493_line_1172 - fast_math_1_expr276_line_1172
				- fast_math_1_expr277_line_1172;
		double fast_math_1_expr274_line_1172 = (fast_math_1_expr275_line_1172);
		double fast_math_1_expr272_line_1172 = fast_math_1_expr273_line_1172 - fast_math_1_expr274_line_1172;
		int PROBE_END_LINE_1172 = 1172;
		p_result_1489_line_1172[1] = fast_math_1_expr272_line_1172;
        int PROBE_START_LINE_1173 = 1173;
		double[] p_result_1489_line_1173 = result;
		double v_tmp_1493_line_1173 = tmp;
		int PROBE_END_LINE_1173 = 1173;
		p_result_1489_line_1173[0] = v_tmp_1493_line_1173;
        int PROBE_START_LINE_1174 = 1174;
		double[] p_result_1489_line_1174 = result;
		double fast_math_1_expr282_line_1174 = p_result_1489_line_1174[0];
		double[] v_zs_1492_line_1174 = zs;
		double fast_math_1_expr283_line_1174 = v_zs_1492_line_1174[1];
		double fast_math_1_expr281_line_1174 = fast_math_1_expr282_line_1174 + fast_math_1_expr283_line_1174;
		int PROBE_END_LINE_1174 = 1174;
		tmp = fast_math_1_expr281_line_1174;
        int PROBE_START_LINE_1175 = 1175;
		double[] p_result_1489_line_1175 = result;
		double[] p_result_1489_line_1175_v1 = result;
		double fast_math_1_expr287_line_1175 = p_result_1489_line_1175_v1[1];
		double v_tmp_1493_line_1175 = tmp;
		double[] p_result_1489_line_1175_v2 = result;
		double fast_math_1_expr290_line_1175 = p_result_1489_line_1175_v2[0];
		double[] v_zs_1492_line_1175 = zs;
		double fast_math_1_expr291_line_1175 = v_zs_1492_line_1175[1];
		double fast_math_1_expr289_line_1175 = v_tmp_1493_line_1175 - fast_math_1_expr290_line_1175
				- fast_math_1_expr291_line_1175;
		double fast_math_1_expr288_line_1175 = (fast_math_1_expr289_line_1175);
		double fast_math_1_expr286_line_1175 = fast_math_1_expr287_line_1175 - fast_math_1_expr288_line_1175;
		int PROBE_END_LINE_1175 = 1175;
		p_result_1489_line_1175[1] = fast_math_1_expr286_line_1175;
        int PROBE_START_LINE_1176 = 1176;
		double[] p_result_1489_line_1176 = result;
		double v_tmp_1493_line_1176 = tmp;
		int PROBE_END_LINE_1176 = 1176;
		p_result_1489_line_1176[0] = v_tmp_1493_line_1176;

        int PROBE_START_LINE_1179 = 1179;
		double[] p_a_1487_line_1179 = a;
		double fast_math_1_expr295_line_1179 = p_a_1487_line_1179[1];
		double[] v_xs_1490_line_1179 = xs;
		int PROBE_END_LINE_1179 = 1179;
		/* a[1] * b[0] */
        split(fast_math_1_expr295_line_1179, v_xs_1490_line_1179);
        int PROBE_START_LINE_1180 = 1180;
		double[] p_b_1488_line_1180 = b;
		double fast_math_1_expr297_line_1180 = p_b_1488_line_1180[0];
		double[] v_ys_1491_line_1180 = ys;
		int PROBE_END_LINE_1180 = 1180;
		split(fast_math_1_expr297_line_1180, v_ys_1491_line_1180);
        int PROBE_START_LINE_1181 = 1181;
		double[] v_xs_1490_line_1181 = xs;
		double[] v_ys_1491_line_1181 = ys;
		double[] v_zs_1492_line_1181 = zs;
		int PROBE_END_LINE_1181 = 1181;
		splitMult(v_xs_1490_line_1181, v_ys_1491_line_1181, v_zs_1492_line_1181);

        int PROBE_START_LINE_1183 = 1183;
		double[] p_result_1489_line_1183 = result;
		double fast_math_1_expr301_line_1183 = p_result_1489_line_1183[0];
		double[] v_zs_1492_line_1183 = zs;
		double fast_math_1_expr302_line_1183 = v_zs_1492_line_1183[0];
		double fast_math_1_expr300_line_1183 = fast_math_1_expr301_line_1183 + fast_math_1_expr302_line_1183;
		int PROBE_END_LINE_1183 = 1183;
		tmp = fast_math_1_expr300_line_1183;
        int PROBE_START_LINE_1184 = 1184;
		double[] p_result_1489_line_1184 = result;
		double[] p_result_1489_line_1184_v1 = result;
		double fast_math_1_expr306_line_1184 = p_result_1489_line_1184_v1[1];
		double v_tmp_1493_line_1184 = tmp;
		double[] p_result_1489_line_1184_v2 = result;
		double fast_math_1_expr309_line_1184 = p_result_1489_line_1184_v2[0];
		double[] v_zs_1492_line_1184 = zs;
		double fast_math_1_expr310_line_1184 = v_zs_1492_line_1184[0];
		double fast_math_1_expr308_line_1184 = v_tmp_1493_line_1184 - fast_math_1_expr309_line_1184
				- fast_math_1_expr310_line_1184;
		double fast_math_1_expr307_line_1184 = (fast_math_1_expr308_line_1184);
		double fast_math_1_expr305_line_1184 = fast_math_1_expr306_line_1184 - fast_math_1_expr307_line_1184;
		int PROBE_END_LINE_1184 = 1184;
		p_result_1489_line_1184[1] = fast_math_1_expr305_line_1184;
        int PROBE_START_LINE_1185 = 1185;
		double[] p_result_1489_line_1185 = result;
		double v_tmp_1493_line_1185 = tmp;
		int PROBE_END_LINE_1185 = 1185;
		p_result_1489_line_1185[0] = v_tmp_1493_line_1185;
        int PROBE_START_LINE_1186 = 1186;
		double[] p_result_1489_line_1186 = result;
		double fast_math_1_expr315_line_1186 = p_result_1489_line_1186[0];
		double[] v_zs_1492_line_1186 = zs;
		double fast_math_1_expr316_line_1186 = v_zs_1492_line_1186[1];
		double fast_math_1_expr314_line_1186 = fast_math_1_expr315_line_1186 + fast_math_1_expr316_line_1186;
		int PROBE_END_LINE_1186 = 1186;
		tmp = fast_math_1_expr314_line_1186;
        int PROBE_START_LINE_1187 = 1187;
		double[] p_result_1489_line_1187 = result;
		double[] p_result_1489_line_1187_v1 = result;
		double fast_math_1_expr320_line_1187 = p_result_1489_line_1187_v1[1];
		double v_tmp_1493_line_1187 = tmp;
		double[] p_result_1489_line_1187_v2 = result;
		double fast_math_1_expr323_line_1187 = p_result_1489_line_1187_v2[0];
		double[] v_zs_1492_line_1187 = zs;
		double fast_math_1_expr324_line_1187 = v_zs_1492_line_1187[1];
		double fast_math_1_expr322_line_1187 = v_tmp_1493_line_1187 - fast_math_1_expr323_line_1187
				- fast_math_1_expr324_line_1187;
		double fast_math_1_expr321_line_1187 = (fast_math_1_expr322_line_1187);
		double fast_math_1_expr319_line_1187 = fast_math_1_expr320_line_1187 - fast_math_1_expr321_line_1187;
		int PROBE_END_LINE_1187 = 1187;
		p_result_1489_line_1187[1] = fast_math_1_expr319_line_1187;
        int PROBE_START_LINE_1188 = 1188;
		double[] p_result_1489_line_1188 = result;
		double v_tmp_1493_line_1188 = tmp;
		int PROBE_END_LINE_1188 = 1188;
		p_result_1489_line_1188[0] = v_tmp_1493_line_1188;

        int PROBE_START_LINE_1191 = 1191;
		double[] p_a_1487_line_1191 = a;
		double fast_math_1_expr328_line_1191 = p_a_1487_line_1191[1];
		double[] v_xs_1490_line_1191 = xs;
		int PROBE_END_LINE_1191 = 1191;
		/* a[1] * b[0] */
        split(fast_math_1_expr328_line_1191, v_xs_1490_line_1191);
        int PROBE_START_LINE_1192 = 1192;
		double[] p_b_1488_line_1192 = b;
		double fast_math_1_expr330_line_1192 = p_b_1488_line_1192[1];
		double[] v_ys_1491_line_1192 = ys;
		int PROBE_END_LINE_1192 = 1192;
		split(fast_math_1_expr330_line_1192, v_ys_1491_line_1192);
        int PROBE_START_LINE_1193 = 1193;
		double[] v_xs_1490_line_1193 = xs;
		double[] v_ys_1491_line_1193 = ys;
		double[] v_zs_1492_line_1193 = zs;
		int PROBE_END_LINE_1193 = 1193;
		splitMult(v_xs_1490_line_1193, v_ys_1491_line_1193, v_zs_1492_line_1193);

        int PROBE_START_LINE_1195 = 1195;
		double[] p_result_1489_line_1195 = result;
		double fast_math_1_expr334_line_1195 = p_result_1489_line_1195[0];
		double[] v_zs_1492_line_1195 = zs;
		double fast_math_1_expr335_line_1195 = v_zs_1492_line_1195[0];
		double fast_math_1_expr333_line_1195 = fast_math_1_expr334_line_1195 + fast_math_1_expr335_line_1195;
		int PROBE_END_LINE_1195 = 1195;
		tmp = fast_math_1_expr333_line_1195;
        int PROBE_START_LINE_1196 = 1196;
		double[] p_result_1489_line_1196 = result;
		double[] p_result_1489_line_1196_v1 = result;
		double fast_math_1_expr339_line_1196 = p_result_1489_line_1196_v1[1];
		double v_tmp_1493_line_1196 = tmp;
		double[] p_result_1489_line_1196_v2 = result;
		double fast_math_1_expr342_line_1196 = p_result_1489_line_1196_v2[0];
		double[] v_zs_1492_line_1196 = zs;
		double fast_math_1_expr343_line_1196 = v_zs_1492_line_1196[0];
		double fast_math_1_expr341_line_1196 = v_tmp_1493_line_1196 - fast_math_1_expr342_line_1196
				- fast_math_1_expr343_line_1196;
		double fast_math_1_expr340_line_1196 = (fast_math_1_expr341_line_1196);
		double fast_math_1_expr338_line_1196 = fast_math_1_expr339_line_1196 - fast_math_1_expr340_line_1196;
		int PROBE_END_LINE_1196 = 1196;
		p_result_1489_line_1196[1] = fast_math_1_expr338_line_1196;
        int PROBE_START_LINE_1197 = 1197;
		double[] p_result_1489_line_1197 = result;
		double v_tmp_1493_line_1197 = tmp;
		int PROBE_END_LINE_1197 = 1197;
		p_result_1489_line_1197[0] = v_tmp_1493_line_1197;
        int PROBE_START_LINE_1198 = 1198;
		double[] p_result_1489_line_1198 = result;
		double fast_math_1_expr348_line_1198 = p_result_1489_line_1198[0];
		double[] v_zs_1492_line_1198 = zs;
		double fast_math_1_expr349_line_1198 = v_zs_1492_line_1198[1];
		double fast_math_1_expr347_line_1198 = fast_math_1_expr348_line_1198 + fast_math_1_expr349_line_1198;
		int PROBE_END_LINE_1198 = 1198;
		tmp = fast_math_1_expr347_line_1198;
        int PROBE_START_LINE_1199 = 1199;
		double[] p_result_1489_line_1199 = result;
		double[] p_result_1489_line_1199_v1 = result;
		double fast_math_1_expr353_line_1199 = p_result_1489_line_1199_v1[1];
		double v_tmp_1493_line_1199 = tmp;
		double[] p_result_1489_line_1199_v2 = result;
		double fast_math_1_expr356_line_1199 = p_result_1489_line_1199_v2[0];
		double[] v_zs_1492_line_1199 = zs;
		double fast_math_1_expr357_line_1199 = v_zs_1492_line_1199[1];
		double fast_math_1_expr355_line_1199 = v_tmp_1493_line_1199 - fast_math_1_expr356_line_1199
				- fast_math_1_expr357_line_1199;
		double fast_math_1_expr354_line_1199 = (fast_math_1_expr355_line_1199);
		double fast_math_1_expr352_line_1199 = fast_math_1_expr353_line_1199 - fast_math_1_expr354_line_1199;
		int PROBE_END_LINE_1199 = 1199;
		p_result_1489_line_1199[1] = fast_math_1_expr352_line_1199;
        int PROBE_START_LINE_1200 = 1200;
		double[] p_result_1489_line_1200 = result;
		double v_tmp_1493_line_1200 = tmp;
		int PROBE_END_LINE_1200 = 1200;
		p_result_1489_line_1200[0] = v_tmp_1493_line_1200;
    }

    /** Compute exp(p) for a integer p in extended precision.
     * @param p integer whose exponential is requested
     * @param result placeholder where to put the result in extended precision
     * @return exp(p) in standard precision (equal to result[0] + result[1])
     */
    private static double expint(int p, final double result[]) {
        //double x = M_E;
        final double xs[] = new double[2];
        final double as[] = new double[2];
        final double ys[] = new double[2];
        //split(x, xs);
        //xs[1] = (double)(2.7182818284590452353602874713526625L - xs[0]);
        //xs[0] = 2.71827697753906250000;
        //xs[1] = 4.85091998273542816811e-06;
        //xs[0] = Double.longBitsToDouble(0x4005bf0800000000L);
        //xs[1] = Double.longBitsToDouble(0x3ed458a2bb4a9b00L);

        int PROBE_START_LINE_1221 = 1221;
		double[] v_xs_1496_line_1221 = xs;
		int PROBE_END_LINE_1221 = 1221;
		/* E */
        v_xs_1496_line_1221[0] = 2.718281828459045;
        int PROBE_START_LINE_1222 = 1222;
		double[] v_xs_1496_line_1222 = xs;
		int PROBE_END_LINE_1222 = 1222;
		v_xs_1496_line_1222[1] = 1.4456468917292502E-16;

        int PROBE_START_LINE_1224 = 1224;
		double[] v_ys_1498_line_1224 = ys;
		int PROBE_END_LINE_1224 = 1224;
		split(1.0, v_ys_1498_line_1224);

        while (true) {
            int PROBE_START_LINE_1226 = 1226;
			int p_p_1494_line_1226 = p;
			boolean fast_math_1_expr368_line_1226 = p_p_1494_line_1226 > 0;
			if (!(fast_math_1_expr368_line_1226)) {
				break;
			}
			int PROBE_END_LINE_1226 = 1226;
			int PROBE_START_LINE_1227 = 1230;
			int p_p_1494_line_1227 = p;
			int fast_math_1_expr371_line_1227 = p_p_1494_line_1227 & 1;
			int fast_math_1_expr370_line_1227 = (fast_math_1_expr371_line_1227);
			boolean fast_math_1_expr369_line_1227 = fast_math_1_expr370_line_1227 != 0;
			int PROBE_END_LINE_1227 = 1230;
			if (fast_math_1_expr369_line_1227) {
                int PROBE_START_LINE_1228 = 1228;
				double[] v_ys_1498_line_1228 = ys;
				double[] v_xs_1496_line_1228 = xs;
				double[] v_as_1497_line_1228 = as;
				int PROBE_END_LINE_1228 = 1228;
				quadMult(v_ys_1498_line_1228, v_xs_1496_line_1228, v_as_1497_line_1228);
                int PROBE_START_LINE_1229 = 1229;
				double[] v_ys_1498_line_1229 = ys;
				double[] v_as_1497_line_1229 = as;
				double fast_math_1_expr375_line_1229 = v_as_1497_line_1229[0];
				v_ys_1498_line_1229[0] = fast_math_1_expr375_line_1229; double[] v_ys_1498_line_1229_v1 = ys;
				double[] v_as_1497_line_1229_v1 = as;
				double fast_math_1_expr378_line_1229 = v_as_1497_line_1229_v1[1];
				int PROBE_END_LINE_1229 = 1229;
				v_ys_1498_line_1229_v1[1] = fast_math_1_expr378_line_1229;
            }

            int PROBE_START_LINE_1232 = 1232;
			double[] v_xs_1496_line_1232 = xs;
			double[] v_xs_1496_line_1232_v1 = xs;
			double[] v_as_1497_line_1232 = as;
			int PROBE_END_LINE_1232 = 1232;
			quadMult(v_xs_1496_line_1232, v_xs_1496_line_1232_v1, v_as_1497_line_1232);
            int PROBE_START_LINE_1233 = 1233;
			double[] v_xs_1496_line_1233 = xs;
			double[] v_as_1497_line_1233 = as;
			double fast_math_1_expr382_line_1233 = v_as_1497_line_1233[0];
			v_xs_1496_line_1233[0] = fast_math_1_expr382_line_1233; double[] v_xs_1496_line_1233_v1 = xs;
			double[] v_as_1497_line_1233_v1 = as;
			double fast_math_1_expr385_line_1233 = v_as_1497_line_1233_v1[1];
			int PROBE_END_LINE_1233 = 1233;
			v_xs_1496_line_1233_v1[1] = fast_math_1_expr385_line_1233;

            p >>= 1;
        }

        int PROBE_START_LINE_1238 = 1243;
		double[] p_result_1495_line_1238 = result;
		boolean fast_math_1_expr387_line_1238 = p_result_1495_line_1238 != null;
		int PROBE_END_LINE_1238 = 1243;
		if (fast_math_1_expr387_line_1238) {
            int PROBE_START_LINE_1239 = 1239;
			double[] p_result_1495_line_1239 = result;
			double[] v_ys_1498_line_1239 = ys;
			double fast_math_1_expr390_line_1239 = v_ys_1498_line_1239[0];
			int PROBE_END_LINE_1239 = 1239;
			p_result_1495_line_1239[0] = fast_math_1_expr390_line_1239;
            int PROBE_START_LINE_1240 = 1240;
			double[] p_result_1495_line_1240 = result;
			double[] v_ys_1498_line_1240 = ys;
			double fast_math_1_expr393_line_1240 = v_ys_1498_line_1240[1];
			int PROBE_END_LINE_1240 = 1240;
			p_result_1495_line_1240[1] = fast_math_1_expr393_line_1240;

            int PROBE_START_LINE_1242 = 1242;
			double[] p_result_1495_line_1242 = result;
			int PROBE_END_LINE_1242 = 1242;
			resplit(p_result_1495_line_1242);
        }

        int PROBE_START_LINE_1245 = 1245;
		double[] v_ys_1498_line_1245 = ys;
		double fast_math_1_expr396_line_1245 = v_ys_1498_line_1245[0];
		double[] v_ys_1498_line_1245_v1 = ys;
		double fast_math_1_expr397_line_1245 = v_ys_1498_line_1245_v1[1];
		double fast_math_1_expr395_line_1245 = fast_math_1_expr396_line_1245 + fast_math_1_expr397_line_1245;
		int PROBE_END_LINE_1245 = 1245;
		return fast_math_1_expr395_line_1245;
    }


    /**
     * Natural logarithm.
     *
     * @param x   a double
     * @return log(x)
     */
    public static double log(final double x) {
        return log(x, null);
    }

    /**
     * Internal helper method for natural logarithm function.
     * @param x original argument of the natural logarithm function
     * @param hiPrec extra bits of precision on output (To Be Confirmed)
     * @return log(x)
     */
    private static double log(final double x, final double[] hiPrec) {
        if (x==0) { // Handle special case of +0/-0
            return Double.NEGATIVE_INFINITY;
        }
        long bits = Double.doubleToLongBits(x);

        /* Handle special cases of negative input, and NaN */
        if ((bits & 0x8000000000000000L) != 0 || x != x) {
            if (x != 0.0) {
                if (hiPrec != null) {
                    hiPrec[0] = Double.NaN;
                }

                return Double.NaN;
            }
        }

        /* Handle special cases of Positive infinity. */
        if (x == Double.POSITIVE_INFINITY) {
            if (hiPrec != null) {
                hiPrec[0] = Double.POSITIVE_INFINITY;
            }

            return Double.POSITIVE_INFINITY;
        }

        /* Extract the exponent */
        int exp = (int)(bits >> 52)-1023;

        if ((bits & 0x7ff0000000000000L) == 0) {
            // Subnormal!
            if (x == 0) {
                // Zero
                if (hiPrec != null) {
                    hiPrec[0] = Double.NEGATIVE_INFINITY;
                }

                return Double.NEGATIVE_INFINITY;
            }

            /* Normalize the subnormal number. */
            bits <<= 1;
            while ( (bits & 0x0010000000000000L) == 0) {
                exp--;
                bits <<= 1;
            }
        }


        if (exp == -1 || exp == 0) {
            if (x < 1.01 && x > 0.99 && hiPrec == null) {
                /* The normal method doesn't work well in the range [0.99, 1.01], so call do a straight
           polynomial expansion in higer precision. */

               /* Compute x - 1.0 and split it */
                double xa = x - 1.0;
                double xb = xa - x + 1.0;
                double tmp = xa * HEX_40000000;
                double aa = xa + tmp - tmp;
                double ab = xa - aa;
                xa = aa;
                xb = ab;

                double ya = LN_QUICK_COEF[LN_QUICK_COEF.length-1][0];
                double yb = LN_QUICK_COEF[LN_QUICK_COEF.length-1][1];

                for (int i = LN_QUICK_COEF.length - 2; i >= 0; i--) {
                    /* Multiply a = y * x */
                    aa = ya * xa;
                    ab = ya * xb + yb * xa + yb * xb;
                    /* split, so now y = a */
                    tmp = aa * HEX_40000000;
                    ya = aa + tmp - tmp;
                    yb = aa - ya + ab;

                    /* Add  a = y + lnQuickCoef */
                    aa = ya + LN_QUICK_COEF[i][0];
                    ab = yb + LN_QUICK_COEF[i][1];
                    /* Split y = a */
                    tmp = aa * HEX_40000000;
                    ya = aa + tmp - tmp;
                    yb = aa - ya + ab;
                }

                /* Multiply a = y * x */
                aa = ya * xa;
                ab = ya * xb + yb * xa + yb * xb;
                /* split, so now y = a */
                tmp = aa * HEX_40000000;
                ya = aa + tmp - tmp;
                yb = aa - ya + ab;

                return ya + yb;
            }
        }

        // lnm is a log of a number in the range of 1.0 - 2.0, so 0 <= lnm < ln(2)
        double lnm[] = LN_MANT[(int)((bits & 0x000ffc0000000000L) >> 42)];

        /*
    double epsilon = x / Double.longBitsToDouble(bits & 0xfffffc0000000000L);

    epsilon -= 1.0;
         */

        // y is the most significant 10 bits of the mantissa
        //double y = Double.longBitsToDouble(bits & 0xfffffc0000000000L);
        //double epsilon = (x - y) / y;
        double epsilon = (bits & 0x3ffffffffffL) / (TWO_POWER_52 + (bits & 0x000ffc0000000000L));

        double lnza = 0.0;
        double lnzb = 0.0;

        if (hiPrec != null) {
            /* split epsilon -> x */
            double tmp = epsilon * HEX_40000000;
            double aa = epsilon + tmp - tmp;
            double ab = epsilon - aa;
            double xa = aa;
            double xb = ab;

            /* Need a more accurate epsilon, so adjust the division. */
            double numer = bits & 0x3ffffffffffL;
            double denom = TWO_POWER_52 + (bits & 0x000ffc0000000000L);
            aa = numer - xa*denom - xb * denom;
            xb += aa / denom;

            /* Remez polynomial evaluation */
            double ya = LN_HI_PREC_COEF[LN_HI_PREC_COEF.length-1][0];
            double yb = LN_HI_PREC_COEF[LN_HI_PREC_COEF.length-1][1];

            for (int i = LN_HI_PREC_COEF.length - 2; i >= 0; i--) {
                /* Multiply a = y * x */
                aa = ya * xa;
                ab = ya * xb + yb * xa + yb * xb;
                /* split, so now y = a */
                tmp = aa * HEX_40000000;
                ya = aa + tmp - tmp;
                yb = aa - ya + ab;

                /* Add  a = y + lnHiPrecCoef */
                aa = ya + LN_HI_PREC_COEF[i][0];
                ab = yb + LN_HI_PREC_COEF[i][1];
                /* Split y = a */
                tmp = aa * HEX_40000000;
                ya = aa + tmp - tmp;
                yb = aa - ya + ab;
            }

            /* Multiply a = y * x */
            aa = ya * xa;
            ab = ya * xb + yb * xa + yb * xb;

            /* split, so now lnz = a */
            /*
      tmp = aa * 1073741824.0;
      lnza = aa + tmp - tmp;
      lnzb = aa - lnza + ab;
             */
            lnza = aa + ab;
            lnzb = -(lnza - aa - ab);
        } else {
            /* High precision not required.  Eval Remez polynomial
         using standard double precision */
            lnza = -0.16624882440418567;
            lnza = lnza * epsilon + 0.19999954120254515;
            lnza = lnza * epsilon + -0.2499999997677497;
            lnza = lnza * epsilon + 0.3333333333332802;
            lnza = lnza * epsilon + -0.5;
            lnza = lnza * epsilon + 1.0;
            lnza = lnza * epsilon;
        }

        /* Relative sizes:
         * lnzb     [0, 2.33E-10]
         * lnm[1]   [0, 1.17E-7]
         * ln2B*exp [0, 1.12E-4]
         * lnza      [0, 9.7E-4]
         * lnm[0]   [0, 0.692]
         * ln2A*exp [0, 709]
         */

        /* Compute the following sum:
         * lnzb + lnm[1] + ln2B*exp + lnza + lnm[0] + ln2A*exp;
         */

        //return lnzb + lnm[1] + ln2B*exp + lnza + lnm[0] + ln2A*exp;
        double a = LN_2_A*exp;
        double b = 0.0;
        double c = a+lnm[0];
        double d = -(c-a-lnm[0]);
        a = c;
        b = b + d;

        c = a + lnza;
        d = -(c - a - lnza);
        a = c;
        b = b + d;

        c = a + LN_2_B*exp;
        d = -(c - a - LN_2_B*exp);
        a = c;
        b = b + d;

        c = a + lnm[1];
        d = -(c - a - lnm[1]);
        a = c;
        b = b + d;

        c = a + lnzb;
        d = -(c - a - lnzb);
        a = c;
        b = b + d;

        if (hiPrec != null) {
            hiPrec[0] = a;
            hiPrec[1] = b;
        }

        return a + b;
    }

    /** Compute log(1 + x).
     * @param x a number
     * @return log(1 + x)
     */
    public static double log1p(final double x) {
        double xpa = 1.0 + x;
        double xpb = -(xpa - 1.0 - x);

        if (x == -1) {
            return x/0.0;   // -Infinity
        }

        if (x > 0 && 1/x == 0) { // x = Infinity
            return x;
        }

        if (x>1e-6 || x<-1e-6) {
            double hiPrec[] = new double[2];

            final double lores = log(xpa, hiPrec);
            if (Double.isInfinite(lores)){ // don't allow this to be converted to NaN
                return lores;
            }

            /* Do a taylor series expansion around xpa */
            /* f(x+y) = f(x) + f'(x)*y + f''(x)/2 y^2 */
            double fx1 = xpb/xpa;

            double epsilon = 0.5 * fx1 + 1.0;
            epsilon = epsilon * fx1;

            return epsilon + hiPrec[1] + hiPrec[0];
        }

        /* Value is small |x| < 1e6, do a Taylor series centered on 1.0 */
        double y = x * 0.333333333333333 - 0.5;
        y = y * x + 1.0;
        y = y * x;

        return y;
    }

    /** Compute the base 10 logarithm.
     * @param x a number
     * @return log10(x)
     */
    public static double log10(final double x) {
        final double hiPrec[] = new double[2];

        final double lores = log(x, hiPrec);
        if (Double.isInfinite(lores)){ // don't allow this to be converted to NaN
            return lores;
        }

        final double tmp = hiPrec[0] * HEX_40000000;
        final double lna = hiPrec[0] + tmp - tmp;
        final double lnb = hiPrec[0] - lna + hiPrec[1];

        final double rln10a = 0.4342944622039795;
        final double rln10b = 1.9699272335463627E-8;

        return rln10b * lnb + rln10b * lna + rln10a * lnb + rln10a * lna;
    }

    /**
     * Power function.  Compute x^y.
     *
     * @param x   a double
     * @param y   a double
     * @return double
     */
    public static double pow(double x, double y) {
        final double lns[] = new double[2];

        if (y == 0.0) {
            return 1.0;
        }

        if (x != x) { // X is NaN
            return x;
        }


        if (x == 0) {
            long bits = Double.doubleToLongBits(x);
            if ((bits & 0x8000000000000000L) != 0) {
                // -zero
                long yi = (long) y;

                if (y < 0 && y == yi && (yi & 1) == 1) {
                    return Double.NEGATIVE_INFINITY;
                }

                if (y < 0 && y == yi && (yi & 1) == 1) {
                    return -0.0;
                }

                if (y > 0 && y == yi && (yi & 1) == 1) {
                    return -0.0;
                }
            }

            if (y < 0) {
                return Double.POSITIVE_INFINITY;
            }
            if (y > 0) {
                return 0.0;
            }

            return Double.NaN;
        }

        if (x == Double.POSITIVE_INFINITY) {
            if (y != y) { // y is NaN
                return y;
            }
            if (y < 0.0) {
                return 0.0;
            } else {
                return Double.POSITIVE_INFINITY;
            }
        }

        if (y == Double.POSITIVE_INFINITY) {
            if (x * x == 1.0)
              return Double.NaN;

            if (x * x > 1.0) {
                return Double.POSITIVE_INFINITY;
            } else {
                return 0.0;
            }
        }

        if (x == Double.NEGATIVE_INFINITY) {
            if (y != y) { // y is NaN
                return y;
            }

            if (y < 0) {
                long yi = (long) y;
                if (y == yi && (yi & 1) == 1) {
                    return -0.0;
                }

                return 0.0;
            }

            if (y > 0)  {
                long yi = (long) y;
                if (y == yi && (yi & 1) == 1) {
                    return Double.NEGATIVE_INFINITY;
                }

                return Double.POSITIVE_INFINITY;
            }
        }

        if (y == Double.NEGATIVE_INFINITY) {

            if (x * x == 1.0) {
                return Double.NaN;
            }

            if (x * x < 1.0) {
                return Double.POSITIVE_INFINITY;
            } else {
                return 0.0;
            }
        }

        /* Handle special case x<0 */
        if (x < 0) {
            // y is an even integer in this case
            if (y >= TWO_POWER_52 || y <= -TWO_POWER_52) {
                return pow(-x, y);
            }

            if (y == (long) y) {
                // If y is an integer
                return ((long)y & 1) == 0 ? pow(-x, y) : -pow(-x, y);
            } else {
                return Double.NaN;
            }
        }

        /* Split y into ya and yb such that y = ya+yb */
        double ya;
        double yb;
        if (y < 8e298 && y > -8e298) {
            double tmp1 = y * HEX_40000000;
            ya = y + tmp1 - tmp1;
            yb = y - ya;
        } else {
            double tmp1 = y * 9.31322574615478515625E-10;
            double tmp2 = tmp1 * 9.31322574615478515625E-10;
            ya = (tmp1 + tmp2 - tmp1) * HEX_40000000 * HEX_40000000;
            yb = y - ya;
        }

        /* Compute ln(x) */
        final double lores = log(x, lns);
        if (Double.isInfinite(lores)){ // don't allow this to be converted to NaN
            return lores;
        }

        double lna = lns[0];
        double lnb = lns[1];

        /* resplit lns */
        double tmp1 = lna * HEX_40000000;
        double tmp2 = lna + tmp1 - tmp1;
        lnb += lna - tmp2;
        lna = tmp2;

        // y*ln(x) = (aa+ab)
        final double aa = lna * ya;
        final double ab = lna * yb + lnb * ya + lnb * yb;

        lna = aa+ab;
        lnb = -(lna - aa - ab);

        double z = 1.0 / 120.0;
        z = z * lnb + (1.0 / 24.0);
        z = z * lnb + (1.0 / 6.0);
        z = z * lnb + 0.5;
        z = z * lnb + 1.0;
        z = z * lnb;

        final double result = exp(lna, z, null);
        //result = result + result * z;
        return result;
    }

    /** xi in the range of [1, 2].
     *                                3        5        7
     *      x+1           /          x        x        x          \
     *  ln ----- =   2 *  |  x  +   ----  +  ----  +  ---- + ...  |
     *      1-x           \          3        5        7          /
     *
     * So, compute a Remez approximation of the following function
     *
     *  ln ((sqrt(x)+1)/(1-sqrt(x)))  /  x
     *
     * This will be an even function with only positive coefficents.
     * x is in the range [0 - 1/3].
     *
     * Transform xi for input to the above function by setting
     * x = (xi-1)/(xi+1).   Input to the polynomial is x^2, then
     * the result is multiplied by x.
     * @param xi number from which log is requested
     * @return log(xi)
     */
    private static double[] slowLog(double xi) {
        double x[] = new double[2];
        double x2[] = new double[2];
        double y[] = new double[2];
        double a[] = new double[2];

        int PROBE_START_LINE_1746 = 1746;
		double p_xi_1506_line_1746 = xi;
		double[] v_x_1507_line_1746 = x;
		int PROBE_END_LINE_1746 = 1746;
		split(p_xi_1506_line_1746, v_x_1507_line_1746);

        int PROBE_START_LINE_1749 = 1749;
		double[] v_x_1507_line_1749 = x;
		int PROBE_END_LINE_1749 = 1749;
		/* Set X = (x-1)/(x+1) */
        v_x_1507_line_1749[0] += 1.0;
        int PROBE_START_LINE_1750 = 1750;
		double[] v_x_1507_line_1750 = x;
		int PROBE_END_LINE_1750 = 1750;
		resplit(v_x_1507_line_1750);
        int PROBE_START_LINE_1751 = 1751;
		double[] v_x_1507_line_1751 = x;
		double[] v_a_1510_line_1751 = a;
		int PROBE_END_LINE_1751 = 1751;
		splitReciprocal(v_x_1507_line_1751, v_a_1510_line_1751);
        int PROBE_START_LINE_1752 = 1752;
		double[] v_x_1507_line_1752 = x;
		int PROBE_END_LINE_1752 = 1752;
		v_x_1507_line_1752[0] -= 2.0;
        int PROBE_START_LINE_1753 = 1753;
		double[] v_x_1507_line_1753 = x;
		int PROBE_END_LINE_1753 = 1753;
		resplit(v_x_1507_line_1753);
        int PROBE_START_LINE_1754 = 1754;
		double[] v_x_1507_line_1754 = x;
		double[] v_a_1510_line_1754 = a;
		double[] v_y_1509_line_1754 = y;
		int PROBE_END_LINE_1754 = 1754;
		splitMult(v_x_1507_line_1754, v_a_1510_line_1754, v_y_1509_line_1754);
        int PROBE_START_LINE_1755 = 1755;
		double[] v_x_1507_line_1755 = x;
		double[] v_y_1509_line_1755 = y;
		double fast_math_1_expr413_line_1755 = v_y_1509_line_1755[0];
		int PROBE_END_LINE_1755 = 1755;
		v_x_1507_line_1755[0] = fast_math_1_expr413_line_1755;
        int PROBE_START_LINE_1756 = 1756;
		double[] v_x_1507_line_1756 = x;
		double[] v_y_1509_line_1756 = y;
		double fast_math_1_expr416_line_1756 = v_y_1509_line_1756[1];
		int PROBE_END_LINE_1756 = 1756;
		v_x_1507_line_1756[1] = fast_math_1_expr416_line_1756;

        int PROBE_START_LINE_1759 = 1759;
		double[] v_x_1507_line_1759 = x;
		double[] v_x_1507_line_1759_v1 = x;
		double[] v_x_2_1508_line_1759 = x2;
		int PROBE_END_LINE_1759 = 1759;
		/* Square X -> X2*/
        splitMult(v_x_1507_line_1759, v_x_1507_line_1759_v1, v_x_2_1508_line_1759);


        //x[0] -= 1.0;
        //resplit(x);

        int PROBE_START_LINE_1765 = 1765;
		double[] v_y_1509_line_1765 = y;
		double[][] f_ln_split_coef_1423_line_1765 = LN_SPLIT_COEF;
		double[][] f_ln_split_coef_1423_line_1765_v1 = LN_SPLIT_COEF;
		int q_length_23_line_1765 = f_ln_split_coef_1423_line_1765_v1.length;
		int fast_math_1_expr422_line_1765 = q_length_23_line_1765 - 1;
		double[] fast_math_1_expr421_line_1765 = f_ln_split_coef_1423_line_1765[fast_math_1_expr422_line_1765];
		double fast_math_1_expr420_line_1765 = fast_math_1_expr421_line_1765[0];
		int PROBE_END_LINE_1765 = 1765;
		v_y_1509_line_1765[0] = fast_math_1_expr420_line_1765;
        int PROBE_START_LINE_1766 = 1766;
		double[] v_y_1509_line_1766 = y;
		double[][] f_ln_split_coef_1423_line_1766 = LN_SPLIT_COEF;
		double[][] f_ln_split_coef_1423_line_1766_v1 = LN_SPLIT_COEF;
		int q_length_24_line_1766 = f_ln_split_coef_1423_line_1766_v1.length;
		int fast_math_1_expr427_line_1766 = q_length_24_line_1766 - 1;
		double[] fast_math_1_expr426_line_1766 = f_ln_split_coef_1423_line_1766[fast_math_1_expr427_line_1766];
		double fast_math_1_expr425_line_1766 = fast_math_1_expr426_line_1766[1];
		int PROBE_END_LINE_1766 = 1766;
		v_y_1509_line_1766[1] = fast_math_1_expr425_line_1766;

        int PROBE_START_LINE_1767 = 1767;
		boolean FOR_STMT_TOGGLE_LINE_1768 = false;
		int PROBE_END_LINE_1767 = 1767;
		for (int i = 0; true;) {
            int PROBE_START_LINE_1769 = 1769;
			if (!FOR_STMT_TOGGLE_LINE_1768) {
				FOR_STMT_TOGGLE_LINE_1768 = true;
				double[][] f_ln_split_coef_1423_line_1768 = LN_SPLIT_COEF;
				int q_length_24_line_1768 = f_ln_split_coef_1423_line_1768.length;
				int fast_math_1_expr429_line_1768 = q_length_24_line_1768 - 2;
				i = fast_math_1_expr429_line_1768;
			} else {
				if (FOR_STMT_TOGGLE_LINE_1768) {
					i--;
				} else {
					FOR_STMT_TOGGLE_LINE_1768 = true;
				}
			}
			int v_i_1511_line_1768 = i;
			boolean fast_math_1_expr430_line_1768 = v_i_1511_line_1768 >= 0;
			if (!(fast_math_1_expr430_line_1768)) {
				break;
			}
			double[] v_y_1509_line_1769 = y;
			double[] v_x_2_1508_line_1769 = x2;
			double[] v_a_1510_line_1769 = a;
			int PROBE_END_LINE_1769 = 1769;
			splitMult(v_y_1509_line_1769, v_x_2_1508_line_1769, v_a_1510_line_1769);
            int PROBE_START_LINE_1770 = 1770;
			double[] v_y_1509_line_1770 = y;
			double[] v_a_1510_line_1770 = a;
			double fast_math_1_expr435_line_1770 = v_a_1510_line_1770[0];
			int PROBE_END_LINE_1770 = 1770;
			v_y_1509_line_1770[0] = fast_math_1_expr435_line_1770;
            int PROBE_START_LINE_1771 = 1771;
			double[] v_y_1509_line_1771 = y;
			double[] v_a_1510_line_1771 = a;
			double fast_math_1_expr438_line_1771 = v_a_1510_line_1771[1];
			int PROBE_END_LINE_1771 = 1771;
			v_y_1509_line_1771[1] = fast_math_1_expr438_line_1771;
            int PROBE_START_LINE_1772 = 1772;
			double[] v_y_1509_line_1772 = y;
			double[][] f_ln_split_coef_1423_line_1772 = LN_SPLIT_COEF;
			int v_i_1511_line_1772 = i;
			double[] fast_math_1_expr440_line_1772 = f_ln_split_coef_1423_line_1772[v_i_1511_line_1772];
			double[] v_a_1510_line_1772 = a;
			int PROBE_END_LINE_1772 = 1772;
			splitAdd(v_y_1509_line_1772, fast_math_1_expr440_line_1772, v_a_1510_line_1772);
            int PROBE_START_LINE_1773 = 1773;
			double[] v_y_1509_line_1773 = y;
			double[] v_a_1510_line_1773 = a;
			double fast_math_1_expr443_line_1773 = v_a_1510_line_1773[0];
			int PROBE_END_LINE_1773 = 1773;
			v_y_1509_line_1773[0] = fast_math_1_expr443_line_1773;
            int PROBE_START_LINE_1774 = 1774;
			double[] v_y_1509_line_1774 = y;
			double[] v_a_1510_line_1774 = a;
			double fast_math_1_expr446_line_1774 = v_a_1510_line_1774[1];
			int PROBE_END_LINE_1774 = 1774;
			v_y_1509_line_1774[1] = fast_math_1_expr446_line_1774;
        }

        int PROBE_START_LINE_1777 = 1777;
		double[] v_y_1509_line_1777 = y;
		double[] v_x_1507_line_1777 = x;
		double[] v_a_1510_line_1777 = a;
		int PROBE_END_LINE_1777 = 1777;
		splitMult(v_y_1509_line_1777, v_x_1507_line_1777, v_a_1510_line_1777);
        int PROBE_START_LINE_1778 = 1778;
		double[] v_y_1509_line_1778 = y;
		double[] v_a_1510_line_1778 = a;
		double fast_math_1_expr450_line_1778 = v_a_1510_line_1778[0];
		int PROBE_END_LINE_1778 = 1778;
		v_y_1509_line_1778[0] = fast_math_1_expr450_line_1778;
        int PROBE_START_LINE_1779 = 1779;
		double[] v_y_1509_line_1779 = y;
		double[] v_a_1510_line_1779 = a;
		double fast_math_1_expr453_line_1779 = v_a_1510_line_1779[1];
		int PROBE_END_LINE_1779 = 1779;
		v_y_1509_line_1779[1] = fast_math_1_expr453_line_1779;

        int PROBE_START_LINE_1781 = 1781;
		double[] v_y_1509_line_1781 = y;
		int PROBE_END_LINE_1781 = 1781;
		return v_y_1509_line_1781;
    }

    /**
     * For x between 0 and pi/4 compute sine.
     * @param x number from which sine is requested
     * @param result placeholder where to put the result in extended precision
     * @return sin(x)
     */
    private static double slowSin(final double x, final double result[]) {
        final double xs[] = new double[2];
        final double ys[] = new double[2];
        final double facts[] = new double[2];
        final double as[] = new double[2];
        int PROBE_START_LINE_1795 = 1795;
		double p_x_1512_line_1795 = x;
		double[] v_xs_1514_line_1795 = xs;
		int PROBE_END_LINE_1795 = 1795;
		split(p_x_1512_line_1795, v_xs_1514_line_1795);
        int PROBE_START_LINE_1796 = 1796;
		double[] v_ys_1515_line_1796 = ys;
		double[] v_ys_1515_line_1796_v1 = ys;
		int PROBE_END_LINE_1796 = 1796;
		v_ys_1515_line_1796[0] = v_ys_1515_line_1796_v1[1] = 0.0;

        for (int i = 19; true; i--) {
            int PROBE_START_LINE_1799 = 1799;
			int v_i_1518_line_1798 = i;
			boolean fast_math_1_expr464_line_1798 = v_i_1518_line_1798 >= 0;
			if (!(fast_math_1_expr464_line_1798)) {
				break;
			}
			double[] v_xs_1514_line_1799 = xs;
			double[] v_ys_1515_line_1799 = ys;
			double[] v_as_1517_line_1799 = as;
			int PROBE_END_LINE_1799 = 1799;
			splitMult(v_xs_1514_line_1799, v_ys_1515_line_1799, v_as_1517_line_1799);
            int PROBE_START_LINE_1800 = 1800;
			double[] v_ys_1515_line_1800 = ys;
			double[] v_as_1517_line_1800 = as;
			double fast_math_1_expr469_line_1800 = v_as_1517_line_1800[0];
			v_ys_1515_line_1800[0] = fast_math_1_expr469_line_1800; double[] v_ys_1515_line_1800_v1 = ys;
			double[] v_as_1517_line_1800_v1 = as;
			double fast_math_1_expr472_line_1800 = v_as_1517_line_1800_v1[1];
			int PROBE_END_LINE_1800 = 1800;
			v_ys_1515_line_1800_v1[1] = fast_math_1_expr472_line_1800;

            int PROBE_START_LINE_1802 = 1804;
			int v_i_1518_line_1802 = i;
			int fast_math_1_expr475_line_1802 = v_i_1518_line_1802 & 1;
			int fast_math_1_expr474_line_1802 = (fast_math_1_expr475_line_1802);
			boolean fast_math_1_expr473_line_1802 = fast_math_1_expr474_line_1802 == 0;
			int PROBE_END_LINE_1802 = 1804;
			if ( fast_math_1_expr473_line_1802) {
                continue;
            }

            int PROBE_START_LINE_1806 = 1806;
			double[] f_fact_1421_line_1806 = FACT;
			int v_i_1518_line_1806 = i;
			double fast_math_1_expr477_line_1806 = f_fact_1421_line_1806[v_i_1518_line_1806];
			double[] v_as_1517_line_1806 = as;
			int PROBE_END_LINE_1806 = 1806;
			split(fast_math_1_expr477_line_1806, v_as_1517_line_1806);
            int PROBE_START_LINE_1807 = 1807;
			double[] v_as_1517_line_1807 = as;
			double[] v_facts_1516_line_1807 = facts;
			int PROBE_END_LINE_1807 = 1807;
			splitReciprocal(v_as_1517_line_1807, v_facts_1516_line_1807);

            int PROBE_START_LINE_1809 = 1812;
			int v_i_1518_line_1809 = i;
			int fast_math_1_expr481_line_1809 = v_i_1518_line_1809 & 2;
			int fast_math_1_expr480_line_1809 = (fast_math_1_expr481_line_1809);
			boolean fast_math_1_expr479_line_1809 = fast_math_1_expr480_line_1809 != 0;
			int PROBE_END_LINE_1809 = 1812;
			if ( fast_math_1_expr479_line_1809 ) {
                int PROBE_START_LINE_1810 = 1810;
				double[] v_facts_1516_line_1810 = facts;
				double[] v_facts_1516_line_1810_v1 = facts;
				double fast_math_1_expr485_line_1810 = v_facts_1516_line_1810_v1[0];
				double fast_math_1_expr484_line_1810 = -fast_math_1_expr485_line_1810;
				int PROBE_END_LINE_1810 = 1810;
				v_facts_1516_line_1810[0] = fast_math_1_expr484_line_1810;
                int PROBE_START_LINE_1811 = 1811;
				double[] v_facts_1516_line_1811 = facts;
				double[] v_facts_1516_line_1811_v1 = facts;
				double fast_math_1_expr489_line_1811 = v_facts_1516_line_1811_v1[1];
				double fast_math_1_expr488_line_1811 = -fast_math_1_expr489_line_1811;
				int PROBE_END_LINE_1811 = 1811;
				v_facts_1516_line_1811[1] = fast_math_1_expr488_line_1811;
            }

            int PROBE_START_LINE_1814 = 1814;
			double[] v_ys_1515_line_1814 = ys;
			double[] v_facts_1516_line_1814 = facts;
			double[] v_as_1517_line_1814 = as;
			int PROBE_END_LINE_1814 = 1814;
			splitAdd(v_ys_1515_line_1814, v_facts_1516_line_1814, v_as_1517_line_1814);
            int PROBE_START_LINE_1815 = 1815;
			double[] v_ys_1515_line_1815 = ys;
			double[] v_as_1517_line_1815 = as;
			double fast_math_1_expr493_line_1815 = v_as_1517_line_1815[0];
			v_ys_1515_line_1815[0] = fast_math_1_expr493_line_1815; double[] v_ys_1515_line_1815_v1 = ys;
			double[] v_as_1517_line_1815_v1 = as;
			double fast_math_1_expr496_line_1815 = v_as_1517_line_1815_v1[1];
			int PROBE_END_LINE_1815 = 1815;
			v_ys_1515_line_1815_v1[1] = fast_math_1_expr496_line_1815;
        }

        int PROBE_START_LINE_1818 = 1821;
		double[] p_result_1513_line_1818 = result;
		boolean fast_math_1_expr497_line_1818 = p_result_1513_line_1818 != null;
		int PROBE_END_LINE_1818 = 1821;
		if (fast_math_1_expr497_line_1818) {
            int PROBE_START_LINE_1819 = 1819;
			double[] p_result_1513_line_1819 = result;
			double[] v_ys_1515_line_1819 = ys;
			double fast_math_1_expr500_line_1819 = v_ys_1515_line_1819[0];
			int PROBE_END_LINE_1819 = 1819;
			p_result_1513_line_1819[0] = fast_math_1_expr500_line_1819;
            int PROBE_START_LINE_1820 = 1820;
			double[] p_result_1513_line_1820 = result;
			double[] v_ys_1515_line_1820 = ys;
			double fast_math_1_expr503_line_1820 = v_ys_1515_line_1820[1];
			int PROBE_END_LINE_1820 = 1820;
			p_result_1513_line_1820[1] = fast_math_1_expr503_line_1820;
        }

        int PROBE_START_LINE_1823 = 1823;
		double[] v_ys_1515_line_1823 = ys;
		double fast_math_1_expr505_line_1823 = v_ys_1515_line_1823[0];
		double[] v_ys_1515_line_1823_v1 = ys;
		double fast_math_1_expr506_line_1823 = v_ys_1515_line_1823_v1[1];
		double fast_math_1_expr504_line_1823 = fast_math_1_expr505_line_1823 + fast_math_1_expr506_line_1823;
		int PROBE_END_LINE_1823 = 1823;
		return fast_math_1_expr504_line_1823;
    }

    /**
     *  For x between 0 and pi/4 compute cosine
     * @param x number from which cosine is requested
     * @param result placeholder where to put the result in extended precision
     * @return cos(x)
     */
    private static double slowCos(final double x, final double result[]) {

        final double xs[] = new double[2];
        final double ys[] = new double[2];
        final double facts[] = new double[2];
        final double as[] = new double[2];
        int PROBE_START_LINE_1838 = 1838;
		double p_x_1519_line_1838 = x;
		double[] v_xs_1521_line_1838 = xs;
		int PROBE_END_LINE_1838 = 1838;
		split(p_x_1519_line_1838, v_xs_1521_line_1838);
        int PROBE_START_LINE_1839 = 1839;
		double[] v_ys_1522_line_1839 = ys;
		double[] v_ys_1522_line_1839_v1 = ys;
		int PROBE_END_LINE_1839 = 1839;
		v_ys_1522_line_1839[0] = v_ys_1522_line_1839_v1[1] = 0.0;

        for (int i = 19; true; i--) {
            int PROBE_START_LINE_1842 = 1842;
			int v_i_1525_line_1841 = i;
			boolean fast_math_1_expr517_line_1841 = v_i_1525_line_1841 >= 0;
			if (!(fast_math_1_expr517_line_1841)) {
				break;
			}
			double[] v_xs_1521_line_1842 = xs;
			double[] v_ys_1522_line_1842 = ys;
			double[] v_as_1524_line_1842 = as;
			int PROBE_END_LINE_1842 = 1842;
			splitMult(v_xs_1521_line_1842, v_ys_1522_line_1842, v_as_1524_line_1842);
            int PROBE_START_LINE_1843 = 1843;
			double[] v_ys_1522_line_1843 = ys;
			double[] v_as_1524_line_1843 = as;
			double fast_math_1_expr522_line_1843 = v_as_1524_line_1843[0];
			v_ys_1522_line_1843[0] = fast_math_1_expr522_line_1843; double[] v_ys_1522_line_1843_v1 = ys;
			double[] v_as_1524_line_1843_v1 = as;
			double fast_math_1_expr525_line_1843 = v_as_1524_line_1843_v1[1];
			int PROBE_END_LINE_1843 = 1843;
			v_ys_1522_line_1843_v1[1] = fast_math_1_expr525_line_1843;

            int PROBE_START_LINE_1845 = 1847;
			int v_i_1525_line_1845 = i;
			int fast_math_1_expr528_line_1845 = v_i_1525_line_1845 & 1;
			int fast_math_1_expr527_line_1845 = (fast_math_1_expr528_line_1845);
			boolean fast_math_1_expr526_line_1845 = fast_math_1_expr527_line_1845 != 0;
			int PROBE_END_LINE_1845 = 1847;
			if ( fast_math_1_expr526_line_1845) {
                continue;
            }

            int PROBE_START_LINE_1849 = 1849;
			double[] f_fact_1421_line_1849 = FACT;
			int v_i_1525_line_1849 = i;
			double fast_math_1_expr530_line_1849 = f_fact_1421_line_1849[v_i_1525_line_1849];
			double[] v_as_1524_line_1849 = as;
			int PROBE_END_LINE_1849 = 1849;
			split(fast_math_1_expr530_line_1849, v_as_1524_line_1849);
            int PROBE_START_LINE_1850 = 1850;
			double[] v_as_1524_line_1850 = as;
			double[] v_facts_1523_line_1850 = facts;
			int PROBE_END_LINE_1850 = 1850;
			splitReciprocal(v_as_1524_line_1850, v_facts_1523_line_1850);

            int PROBE_START_LINE_1852 = 1855;
			int v_i_1525_line_1852 = i;
			int fast_math_1_expr534_line_1852 = v_i_1525_line_1852 & 2;
			int fast_math_1_expr533_line_1852 = (fast_math_1_expr534_line_1852);
			boolean fast_math_1_expr532_line_1852 = fast_math_1_expr533_line_1852 != 0;
			int PROBE_END_LINE_1852 = 1855;
			if ( fast_math_1_expr532_line_1852 ) {
                int PROBE_START_LINE_1853 = 1853;
				double[] v_facts_1523_line_1853 = facts;
				double[] v_facts_1523_line_1853_v1 = facts;
				double fast_math_1_expr538_line_1853 = v_facts_1523_line_1853_v1[0];
				double fast_math_1_expr537_line_1853 = -fast_math_1_expr538_line_1853;
				int PROBE_END_LINE_1853 = 1853;
				v_facts_1523_line_1853[0] = fast_math_1_expr537_line_1853;
                int PROBE_START_LINE_1854 = 1854;
				double[] v_facts_1523_line_1854 = facts;
				double[] v_facts_1523_line_1854_v1 = facts;
				double fast_math_1_expr542_line_1854 = v_facts_1523_line_1854_v1[1];
				double fast_math_1_expr541_line_1854 = -fast_math_1_expr542_line_1854;
				int PROBE_END_LINE_1854 = 1854;
				v_facts_1523_line_1854[1] = fast_math_1_expr541_line_1854;
            }

            int PROBE_START_LINE_1857 = 1857;
			double[] v_ys_1522_line_1857 = ys;
			double[] v_facts_1523_line_1857 = facts;
			double[] v_as_1524_line_1857 = as;
			int PROBE_END_LINE_1857 = 1857;
			splitAdd(v_ys_1522_line_1857, v_facts_1523_line_1857, v_as_1524_line_1857);
            int PROBE_START_LINE_1858 = 1858;
			double[] v_ys_1522_line_1858 = ys;
			double[] v_as_1524_line_1858 = as;
			double fast_math_1_expr546_line_1858 = v_as_1524_line_1858[0];
			v_ys_1522_line_1858[0] = fast_math_1_expr546_line_1858; double[] v_ys_1522_line_1858_v1 = ys;
			double[] v_as_1524_line_1858_v1 = as;
			double fast_math_1_expr549_line_1858 = v_as_1524_line_1858_v1[1];
			int PROBE_END_LINE_1858 = 1858;
			v_ys_1522_line_1858_v1[1] = fast_math_1_expr549_line_1858;
        }

        int PROBE_START_LINE_1861 = 1864;
		double[] p_result_1520_line_1861 = result;
		boolean fast_math_1_expr550_line_1861 = p_result_1520_line_1861 != null;
		int PROBE_END_LINE_1861 = 1864;
		if (fast_math_1_expr550_line_1861) {
            int PROBE_START_LINE_1862 = 1862;
			double[] p_result_1520_line_1862 = result;
			double[] v_ys_1522_line_1862 = ys;
			double fast_math_1_expr553_line_1862 = v_ys_1522_line_1862[0];
			int PROBE_END_LINE_1862 = 1862;
			p_result_1520_line_1862[0] = fast_math_1_expr553_line_1862;
            int PROBE_START_LINE_1863 = 1863;
			double[] p_result_1520_line_1863 = result;
			double[] v_ys_1522_line_1863 = ys;
			double fast_math_1_expr556_line_1863 = v_ys_1522_line_1863[1];
			int PROBE_END_LINE_1863 = 1863;
			p_result_1520_line_1863[1] = fast_math_1_expr556_line_1863;
        }

        int PROBE_START_LINE_1866 = 1866;
		double[] v_ys_1522_line_1866 = ys;
		double fast_math_1_expr558_line_1866 = v_ys_1522_line_1866[0];
		double[] v_ys_1522_line_1866_v1 = ys;
		double fast_math_1_expr559_line_1866 = v_ys_1522_line_1866_v1[1];
		double fast_math_1_expr557_line_1866 = fast_math_1_expr558_line_1866 + fast_math_1_expr559_line_1866;
		int PROBE_END_LINE_1866 = 1866;
		return fast_math_1_expr557_line_1866;
    }

    /** Build the sine and cosine tables.
     */
    private static void buildSinCosTables() {
        final double result[] = new double[2];

        /* Use taylor series for 0 <= x <= 6/8 */
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1876 = 1876;
			int v_i_1527_line_1875 = i;
			boolean fast_math_1_expr562_line_1875 = v_i_1527_line_1875 < 7;
			if (!(fast_math_1_expr562_line_1875)) {
				break;
			}
			int v_i_1527_line_1876 = i;
			double fast_math_1_expr564_line_1876 = v_i_1527_line_1876 / 8.0;
			int PROBE_END_LINE_1876 = 1876;
			double x = fast_math_1_expr564_line_1876;

            int PROBE_START_LINE_1878 = 1878;
			double v_x_1528_line_1878 = x;
			double[] v_result_1526_line_1878 = result;
			int PROBE_END_LINE_1878 = 1878;
			slowSin(v_x_1528_line_1878, v_result_1526_line_1878);
            int PROBE_START_LINE_1879 = 1879;
			double[] f_sine_table_a_1426_line_1879 = SINE_TABLE_A;
			int v_i_1527_line_1879 = i;
			double[] v_result_1526_line_1879 = result;
			double fast_math_1_expr568_line_1879 = v_result_1526_line_1879[0];
			int PROBE_END_LINE_1879 = 1879;
			f_sine_table_a_1426_line_1879[v_i_1527_line_1879] = fast_math_1_expr568_line_1879;
            int PROBE_START_LINE_1880 = 1880;
			double[] f_sine_table_b_1427_line_1880 = SINE_TABLE_B;
			int v_i_1527_line_1880 = i;
			double[] v_result_1526_line_1880 = result;
			double fast_math_1_expr571_line_1880 = v_result_1526_line_1880[1];
			int PROBE_END_LINE_1880 = 1880;
			f_sine_table_b_1427_line_1880[v_i_1527_line_1880] = fast_math_1_expr571_line_1880;

            int PROBE_START_LINE_1882 = 1882;
			double v_x_1528_line_1882 = x;
			double[] v_result_1526_line_1882 = result;
			int PROBE_END_LINE_1882 = 1882;
			slowCos(v_x_1528_line_1882, v_result_1526_line_1882);
            int PROBE_START_LINE_1883 = 1883;
			double[] f_cosine_table_a_1428_line_1883 = COSINE_TABLE_A;
			int v_i_1527_line_1883 = i;
			double[] v_result_1526_line_1883 = result;
			double fast_math_1_expr575_line_1883 = v_result_1526_line_1883[0];
			int PROBE_END_LINE_1883 = 1883;
			f_cosine_table_a_1428_line_1883[v_i_1527_line_1883] = fast_math_1_expr575_line_1883;
            int PROBE_START_LINE_1884 = 1884;
			double[] f_cosine_table_b_1429_line_1884 = COSINE_TABLE_B;
			int v_i_1527_line_1884 = i;
			double[] v_result_1526_line_1884 = result;
			double fast_math_1_expr578_line_1884 = v_result_1526_line_1884[1];
			int PROBE_END_LINE_1884 = 1884;
			f_cosine_table_b_1429_line_1884[v_i_1527_line_1884] = fast_math_1_expr578_line_1884;
        }

        /* Use angle addition formula to complete table to 13/8, just beyond pi/2 */
        for (int i = 7; true; i++) {
            int PROBE_START_LINE_1889 = 1889;
			int v_i_1529_line_1888 = i;
			boolean fast_math_1_expr580_line_1888 = v_i_1529_line_1888 < 14;
			if (!(fast_math_1_expr580_line_1888)) {
				break;
			}
			int PROBE_END_LINE_1889 = 1889;
			double xs[] = new double[2];
            double ys[] = new double[2];
            double as[] = new double[2];
            double bs[] = new double[2];
            double temps[] = new double[2];

            int PROBE_START_LINE_1895 = 1940;
			int v_i_1529_line_1895 = i;
			int fast_math_1_expr589_line_1895 = v_i_1529_line_1895 & 1;
			int fast_math_1_expr588_line_1895 = (fast_math_1_expr589_line_1895);
			boolean fast_math_1_expr587_line_1895 = fast_math_1_expr588_line_1895 == 0;
			int PROBE_END_LINE_1895 = 1940;
			if ( fast_math_1_expr587_line_1895) {
                int PROBE_START_LINE_1897 = 1897;
				double[] v_xs_1530_line_1897 = xs;
				double[] f_sine_table_a_1426_line_1897 = SINE_TABLE_A;
				int v_i_1529_line_1897 = i;
				int fast_math_1_expr593_line_1897 = v_i_1529_line_1897 / 2;
				double fast_math_1_expr592_line_1897 = f_sine_table_a_1426_line_1897[fast_math_1_expr593_line_1897];
				int PROBE_END_LINE_1897 = 1897;
				// Even, use double angle
                v_xs_1530_line_1897[0] = fast_math_1_expr592_line_1897;
                int PROBE_START_LINE_1898 = 1898;
				double[] v_xs_1530_line_1898 = xs;
				double[] f_sine_table_b_1427_line_1898 = SINE_TABLE_B;
				int v_i_1529_line_1898 = i;
				int fast_math_1_expr597_line_1898 = v_i_1529_line_1898 / 2;
				double fast_math_1_expr596_line_1898 = f_sine_table_b_1427_line_1898[fast_math_1_expr597_line_1898];
				int PROBE_END_LINE_1898 = 1898;
				v_xs_1530_line_1898[1] = fast_math_1_expr596_line_1898;
                int PROBE_START_LINE_1899 = 1899;
				double[] v_ys_1531_line_1899 = ys;
				double[] f_cosine_table_a_1428_line_1899 = COSINE_TABLE_A;
				int v_i_1529_line_1899 = i;
				int fast_math_1_expr601_line_1899 = v_i_1529_line_1899 / 2;
				double fast_math_1_expr600_line_1899 = f_cosine_table_a_1428_line_1899[fast_math_1_expr601_line_1899];
				int PROBE_END_LINE_1899 = 1899;
				v_ys_1531_line_1899[0] = fast_math_1_expr600_line_1899;
                int PROBE_START_LINE_1900 = 1900;
				double[] v_ys_1531_line_1900 = ys;
				double[] f_cosine_table_b_1429_line_1900 = COSINE_TABLE_B;
				int v_i_1529_line_1900 = i;
				int fast_math_1_expr605_line_1900 = v_i_1529_line_1900 / 2;
				double fast_math_1_expr604_line_1900 = f_cosine_table_b_1429_line_1900[fast_math_1_expr605_line_1900];
				int PROBE_END_LINE_1900 = 1900;
				v_ys_1531_line_1900[1] = fast_math_1_expr604_line_1900;

                int PROBE_START_LINE_1903 = 1903;
				double[] v_xs_1530_line_1903 = xs;
				double[] v_ys_1531_line_1903 = ys;
				double[] v_result_1526_line_1903 = result;
				int PROBE_END_LINE_1903 = 1903;
				/* compute sine */
                splitMult(v_xs_1530_line_1903, v_ys_1531_line_1903, v_result_1526_line_1903);
                int PROBE_START_LINE_1904 = 1904;
				double[] f_sine_table_a_1426_line_1904 = SINE_TABLE_A;
				int v_i_1529_line_1904 = i;
				double[] v_result_1526_line_1904 = result;
				double fast_math_1_expr610_line_1904 = v_result_1526_line_1904[0];
				double fast_math_1_expr609_line_1904 = fast_math_1_expr610_line_1904 * 2.0;
				int PROBE_END_LINE_1904 = 1904;
				f_sine_table_a_1426_line_1904[v_i_1529_line_1904] = fast_math_1_expr609_line_1904;
                int PROBE_START_LINE_1905 = 1905;
				double[] f_sine_table_b_1427_line_1905 = SINE_TABLE_B;
				int v_i_1529_line_1905 = i;
				double[] v_result_1526_line_1905 = result;
				double fast_math_1_expr614_line_1905 = v_result_1526_line_1905[1];
				double fast_math_1_expr613_line_1905 = fast_math_1_expr614_line_1905 * 2.0;
				int PROBE_END_LINE_1905 = 1905;
				f_sine_table_b_1427_line_1905[v_i_1529_line_1905] = fast_math_1_expr613_line_1905;

                int PROBE_START_LINE_1908 = 1908;
				double[] v_ys_1531_line_1908 = ys;
				double[] v_ys_1531_line_1908_v1 = ys;
				double[] v_as_1532_line_1908 = as;
				int PROBE_END_LINE_1908 = 1908;
				/* Compute cosine */
                splitMult(v_ys_1531_line_1908, v_ys_1531_line_1908_v1, v_as_1532_line_1908);
                int PROBE_START_LINE_1909 = 1909;
				double[] v_xs_1530_line_1909 = xs;
				double[] v_xs_1530_line_1909_v1 = xs;
				double[] v_temps_1534_line_1909 = temps;
				int PROBE_END_LINE_1909 = 1909;
				splitMult(v_xs_1530_line_1909, v_xs_1530_line_1909_v1, v_temps_1534_line_1909);
                int PROBE_START_LINE_1910 = 1910;
				double[] v_temps_1534_line_1910 = temps;
				double[] v_temps_1534_line_1910_v1 = temps;
				double fast_math_1_expr620_line_1910 = v_temps_1534_line_1910_v1[0];
				double fast_math_1_expr619_line_1910 = -fast_math_1_expr620_line_1910;
				int PROBE_END_LINE_1910 = 1910;
				v_temps_1534_line_1910[0] = fast_math_1_expr619_line_1910;
                int PROBE_START_LINE_1911 = 1911;
				double[] v_temps_1534_line_1911 = temps;
				double[] v_temps_1534_line_1911_v1 = temps;
				double fast_math_1_expr624_line_1911 = v_temps_1534_line_1911_v1[1];
				double fast_math_1_expr623_line_1911 = -fast_math_1_expr624_line_1911;
				int PROBE_END_LINE_1911 = 1911;
				v_temps_1534_line_1911[1] = fast_math_1_expr623_line_1911;
                int PROBE_START_LINE_1912 = 1912;
				double[] v_as_1532_line_1912 = as;
				double[] v_temps_1534_line_1912 = temps;
				double[] v_result_1526_line_1912 = result;
				int PROBE_END_LINE_1912 = 1912;
				splitAdd(v_as_1532_line_1912, v_temps_1534_line_1912, v_result_1526_line_1912);
                int PROBE_START_LINE_1913 = 1913;
				double[] f_cosine_table_a_1428_line_1913 = COSINE_TABLE_A;
				int v_i_1529_line_1913 = i;
				double[] v_result_1526_line_1913 = result;
				double fast_math_1_expr628_line_1913 = v_result_1526_line_1913[0];
				int PROBE_END_LINE_1913 = 1913;
				f_cosine_table_a_1428_line_1913[v_i_1529_line_1913] = fast_math_1_expr628_line_1913;
                int PROBE_START_LINE_1914 = 1914;
				double[] f_cosine_table_b_1429_line_1914 = COSINE_TABLE_B;
				int v_i_1529_line_1914 = i;
				double[] v_result_1526_line_1914 = result;
				double fast_math_1_expr631_line_1914 = v_result_1526_line_1914[1];
				int PROBE_END_LINE_1914 = 1914;
				f_cosine_table_b_1429_line_1914[v_i_1529_line_1914] = fast_math_1_expr631_line_1914;
            } else {
                int PROBE_START_LINE_1916 = 1916;
				double[] v_xs_1530_line_1916 = xs;
				double[] f_sine_table_a_1426_line_1916 = SINE_TABLE_A;
				int v_i_1529_line_1916 = i;
				int fast_math_1_expr635_line_1916 = v_i_1529_line_1916 / 2;
				double fast_math_1_expr634_line_1916 = f_sine_table_a_1426_line_1916[fast_math_1_expr635_line_1916];
				int PROBE_END_LINE_1916 = 1916;
				v_xs_1530_line_1916[0] = fast_math_1_expr634_line_1916;
                int PROBE_START_LINE_1917 = 1917;
				double[] v_xs_1530_line_1917 = xs;
				double[] f_sine_table_b_1427_line_1917 = SINE_TABLE_B;
				int v_i_1529_line_1917 = i;
				int fast_math_1_expr639_line_1917 = v_i_1529_line_1917 / 2;
				double fast_math_1_expr638_line_1917 = f_sine_table_b_1427_line_1917[fast_math_1_expr639_line_1917];
				int PROBE_END_LINE_1917 = 1917;
				v_xs_1530_line_1917[1] = fast_math_1_expr638_line_1917;
                int PROBE_START_LINE_1918 = 1918;
				double[] v_ys_1531_line_1918 = ys;
				double[] f_cosine_table_a_1428_line_1918 = COSINE_TABLE_A;
				int v_i_1529_line_1918 = i;
				int fast_math_1_expr643_line_1918 = v_i_1529_line_1918 / 2;
				double fast_math_1_expr642_line_1918 = f_cosine_table_a_1428_line_1918[fast_math_1_expr643_line_1918];
				int PROBE_END_LINE_1918 = 1918;
				v_ys_1531_line_1918[0] = fast_math_1_expr642_line_1918;
                int PROBE_START_LINE_1919 = 1919;
				double[] v_ys_1531_line_1919 = ys;
				double[] f_cosine_table_b_1429_line_1919 = COSINE_TABLE_B;
				int v_i_1529_line_1919 = i;
				int fast_math_1_expr647_line_1919 = v_i_1529_line_1919 / 2;
				double fast_math_1_expr646_line_1919 = f_cosine_table_b_1429_line_1919[fast_math_1_expr647_line_1919];
				int PROBE_END_LINE_1919 = 1919;
				v_ys_1531_line_1919[1] = fast_math_1_expr646_line_1919;
                int PROBE_START_LINE_1920 = 1920;
				double[] v_as_1532_line_1920 = as;
				double[] f_sine_table_a_1426_line_1920 = SINE_TABLE_A;
				int v_i_1529_line_1920 = i;
				int fast_math_1_expr652_line_1920 = v_i_1529_line_1920 / 2;
				int fast_math_1_expr651_line_1920 = fast_math_1_expr652_line_1920 + 1;
				double fast_math_1_expr650_line_1920 = f_sine_table_a_1426_line_1920[fast_math_1_expr651_line_1920];
				int PROBE_END_LINE_1920 = 1920;
				v_as_1532_line_1920[0] = fast_math_1_expr650_line_1920;
                int PROBE_START_LINE_1921 = 1921;
				double[] v_as_1532_line_1921 = as;
				double[] f_sine_table_b_1427_line_1921 = SINE_TABLE_B;
				int v_i_1529_line_1921 = i;
				int fast_math_1_expr657_line_1921 = v_i_1529_line_1921 / 2;
				int fast_math_1_expr656_line_1921 = fast_math_1_expr657_line_1921 + 1;
				double fast_math_1_expr655_line_1921 = f_sine_table_b_1427_line_1921[fast_math_1_expr656_line_1921];
				int PROBE_END_LINE_1921 = 1921;
				v_as_1532_line_1921[1] = fast_math_1_expr655_line_1921;
                int PROBE_START_LINE_1922 = 1922;
				double[] v_bs_1533_line_1922 = bs;
				double[] f_cosine_table_a_1428_line_1922 = COSINE_TABLE_A;
				int v_i_1529_line_1922 = i;
				int fast_math_1_expr662_line_1922 = v_i_1529_line_1922 / 2;
				int fast_math_1_expr661_line_1922 = fast_math_1_expr662_line_1922 + 1;
				double fast_math_1_expr660_line_1922 = f_cosine_table_a_1428_line_1922[fast_math_1_expr661_line_1922];
				int PROBE_END_LINE_1922 = 1922;
				v_bs_1533_line_1922[0] = fast_math_1_expr660_line_1922;
                int PROBE_START_LINE_1923 = 1923;
				double[] v_bs_1533_line_1923 = bs;
				double[] f_cosine_table_b_1429_line_1923 = COSINE_TABLE_B;
				int v_i_1529_line_1923 = i;
				int fast_math_1_expr667_line_1923 = v_i_1529_line_1923 / 2;
				int fast_math_1_expr666_line_1923 = fast_math_1_expr667_line_1923 + 1;
				double fast_math_1_expr665_line_1923 = f_cosine_table_b_1429_line_1923[fast_math_1_expr666_line_1923];
				int PROBE_END_LINE_1923 = 1923;
				v_bs_1533_line_1923[1] = fast_math_1_expr665_line_1923;

                int PROBE_START_LINE_1926 = 1926;
				double[] v_xs_1530_line_1926 = xs;
				double[] v_bs_1533_line_1926 = bs;
				double[] v_temps_1534_line_1926 = temps;
				int PROBE_END_LINE_1926 = 1926;
				/* compute sine */
                splitMult(v_xs_1530_line_1926, v_bs_1533_line_1926, v_temps_1534_line_1926);
                int PROBE_START_LINE_1927 = 1927;
				double[] v_ys_1531_line_1927 = ys;
				double[] v_as_1532_line_1927 = as;
				double[] v_result_1526_line_1927 = result;
				int PROBE_END_LINE_1927 = 1927;
				splitMult(v_ys_1531_line_1927, v_as_1532_line_1927, v_result_1526_line_1927);
                int PROBE_START_LINE_1928 = 1928;
				double[] v_result_1526_line_1928 = result;
				double[] v_temps_1534_line_1928 = temps;
				double[] v_result_1526_line_1928_v1 = result;
				int PROBE_END_LINE_1928 = 1928;
				splitAdd(v_result_1526_line_1928, v_temps_1534_line_1928, v_result_1526_line_1928_v1);
                int PROBE_START_LINE_1929 = 1929;
				double[] f_sine_table_a_1426_line_1929 = SINE_TABLE_A;
				int v_i_1529_line_1929 = i;
				double[] v_result_1526_line_1929 = result;
				double fast_math_1_expr673_line_1929 = v_result_1526_line_1929[0];
				int PROBE_END_LINE_1929 = 1929;
				f_sine_table_a_1426_line_1929[v_i_1529_line_1929] = fast_math_1_expr673_line_1929;
                int PROBE_START_LINE_1930 = 1930;
				double[] f_sine_table_b_1427_line_1930 = SINE_TABLE_B;
				int v_i_1529_line_1930 = i;
				double[] v_result_1526_line_1930 = result;
				double fast_math_1_expr676_line_1930 = v_result_1526_line_1930[1];
				int PROBE_END_LINE_1930 = 1930;
				f_sine_table_b_1427_line_1930[v_i_1529_line_1930] = fast_math_1_expr676_line_1930;

                int PROBE_START_LINE_1933 = 1933;
				double[] v_ys_1531_line_1933 = ys;
				double[] v_bs_1533_line_1933 = bs;
				double[] v_result_1526_line_1933 = result;
				int PROBE_END_LINE_1933 = 1933;
				/* Compute cosine */
                splitMult(v_ys_1531_line_1933, v_bs_1533_line_1933, v_result_1526_line_1933);
                int PROBE_START_LINE_1934 = 1934;
				double[] v_xs_1530_line_1934 = xs;
				double[] v_as_1532_line_1934 = as;
				double[] v_temps_1534_line_1934 = temps;
				int PROBE_END_LINE_1934 = 1934;
				splitMult(v_xs_1530_line_1934, v_as_1532_line_1934, v_temps_1534_line_1934);
                int PROBE_START_LINE_1935 = 1935;
				double[] v_temps_1534_line_1935 = temps;
				double[] v_temps_1534_line_1935_v1 = temps;
				double fast_math_1_expr682_line_1935 = v_temps_1534_line_1935_v1[0];
				double fast_math_1_expr681_line_1935 = -fast_math_1_expr682_line_1935;
				int PROBE_END_LINE_1935 = 1935;
				v_temps_1534_line_1935[0] = fast_math_1_expr681_line_1935;
                int PROBE_START_LINE_1936 = 1936;
				double[] v_temps_1534_line_1936 = temps;
				double[] v_temps_1534_line_1936_v1 = temps;
				double fast_math_1_expr686_line_1936 = v_temps_1534_line_1936_v1[1];
				double fast_math_1_expr685_line_1936 = -fast_math_1_expr686_line_1936;
				int PROBE_END_LINE_1936 = 1936;
				v_temps_1534_line_1936[1] = fast_math_1_expr685_line_1936;
                int PROBE_START_LINE_1937 = 1937;
				double[] v_result_1526_line_1937 = result;
				double[] v_temps_1534_line_1937 = temps;
				double[] v_result_1526_line_1937_v1 = result;
				int PROBE_END_LINE_1937 = 1937;
				splitAdd(v_result_1526_line_1937, v_temps_1534_line_1937, v_result_1526_line_1937_v1);
                int PROBE_START_LINE_1938 = 1938;
				double[] f_cosine_table_a_1428_line_1938 = COSINE_TABLE_A;
				int v_i_1529_line_1938 = i;
				double[] v_result_1526_line_1938 = result;
				double fast_math_1_expr690_line_1938 = v_result_1526_line_1938[0];
				int PROBE_END_LINE_1938 = 1938;
				f_cosine_table_a_1428_line_1938[v_i_1529_line_1938] = fast_math_1_expr690_line_1938;
                int PROBE_START_LINE_1939 = 1939;
				double[] f_cosine_table_b_1429_line_1939 = COSINE_TABLE_B;
				int v_i_1529_line_1939 = i;
				double[] v_result_1526_line_1939 = result;
				double fast_math_1_expr693_line_1939 = v_result_1526_line_1939[1];
				int PROBE_END_LINE_1939 = 1939;
				f_cosine_table_b_1429_line_1939[v_i_1529_line_1939] = fast_math_1_expr693_line_1939;
            }
        }

        /* Compute tangent = sine/cosine */
        for (int i = 0; true; i++) {
            int PROBE_START_LINE_1945 = 1945;
			int v_i_1535_line_1944 = i;
			boolean fast_math_1_expr695_line_1944 = v_i_1535_line_1944 < 14;
			if (!(fast_math_1_expr695_line_1944)) {
				break;
			}
			int PROBE_END_LINE_1945 = 1945;
			double xs[] = new double[2];
            double ys[] = new double[2];
            double as[] = new double[2];

            int PROBE_START_LINE_1949 = 1949;
			double[] v_as_1538_line_1949 = as;
			double[] f_cosine_table_a_1428_line_1949 = COSINE_TABLE_A;
			int v_i_1535_line_1949 = i;
			double fast_math_1_expr702_line_1949 = f_cosine_table_a_1428_line_1949[v_i_1535_line_1949];
			int PROBE_END_LINE_1949 = 1949;
			v_as_1538_line_1949[0] = fast_math_1_expr702_line_1949;
            int PROBE_START_LINE_1950 = 1950;
			double[] v_as_1538_line_1950 = as;
			double[] f_cosine_table_b_1429_line_1950 = COSINE_TABLE_B;
			int v_i_1535_line_1950 = i;
			double fast_math_1_expr705_line_1950 = f_cosine_table_b_1429_line_1950[v_i_1535_line_1950];
			int PROBE_END_LINE_1950 = 1950;
			v_as_1538_line_1950[1] = fast_math_1_expr705_line_1950;

            int PROBE_START_LINE_1952 = 1952;
			double[] v_as_1538_line_1952 = as;
			double[] v_ys_1537_line_1952 = ys;
			int PROBE_END_LINE_1952 = 1952;
			splitReciprocal(v_as_1538_line_1952, v_ys_1537_line_1952);

            int PROBE_START_LINE_1954 = 1954;
			double[] v_xs_1536_line_1954 = xs;
			double[] f_sine_table_a_1426_line_1954 = SINE_TABLE_A;
			int v_i_1535_line_1954 = i;
			double fast_math_1_expr709_line_1954 = f_sine_table_a_1426_line_1954[v_i_1535_line_1954];
			int PROBE_END_LINE_1954 = 1954;
			v_xs_1536_line_1954[0] = fast_math_1_expr709_line_1954;
            int PROBE_START_LINE_1955 = 1955;
			double[] v_xs_1536_line_1955 = xs;
			double[] f_sine_table_b_1427_line_1955 = SINE_TABLE_B;
			int v_i_1535_line_1955 = i;
			double fast_math_1_expr712_line_1955 = f_sine_table_b_1427_line_1955[v_i_1535_line_1955];
			int PROBE_END_LINE_1955 = 1955;
			v_xs_1536_line_1955[1] = fast_math_1_expr712_line_1955;

            int PROBE_START_LINE_1957 = 1957;
			double[] v_xs_1536_line_1957 = xs;
			double[] v_ys_1537_line_1957 = ys;
			double[] v_as_1538_line_1957 = as;
			int PROBE_END_LINE_1957 = 1957;
			splitMult(v_xs_1536_line_1957, v_ys_1537_line_1957, v_as_1538_line_1957);

            int PROBE_START_LINE_1959 = 1959;
			double[] f_tangent_table_a_1430_line_1959 = TANGENT_TABLE_A;
			int v_i_1535_line_1959 = i;
			double[] v_as_1538_line_1959 = as;
			double fast_math_1_expr716_line_1959 = v_as_1538_line_1959[0];
			int PROBE_END_LINE_1959 = 1959;
			f_tangent_table_a_1430_line_1959[v_i_1535_line_1959] = fast_math_1_expr716_line_1959;
            int PROBE_START_LINE_1960 = 1960;
			double[] f_tangent_table_b_1431_line_1960 = TANGENT_TABLE_B;
			int v_i_1535_line_1960 = i;
			double[] v_as_1538_line_1960 = as;
			double fast_math_1_expr719_line_1960 = v_as_1538_line_1960[1];
			int PROBE_END_LINE_1960 = 1960;
			f_tangent_table_b_1431_line_1960[v_i_1535_line_1960] = fast_math_1_expr719_line_1960;
        }

    }

    /**
     *  Computes sin(x) - x, where |x| < 1/16.
     *  Use a Remez polynomial approximation.
     *  @param x a number smaller than 1/16
     *  @return sin(x) - x
     */
    private static double polySine(final double x)
    {
        double x2 = x*x;

        double p = 2.7553817452272217E-6;
        p = p * x2 + -1.9841269659586505E-4;
        p = p * x2 + 0.008333333333329196;
        p = p * x2 + -0.16666666666666666;
        //p *= x2;
        //p *= x;
        p = p * x2 * x;

        return p;
    }

    /**
     *  Computes cos(x) - 1, where |x| < 1/16.
     *  Use a Remez polynomial approximation.
     *  @param x a number smaller than 1/16
     *  @return cos(x) - 1
     */
    private static double polyCosine(double x) {
        double x2 = x*x;

        double p = 2.479773539153719E-5;
        p = p * x2 + -0.0013888888689039883;
        p = p * x2 + 0.041666666666621166;
        p = p * x2 + -0.49999999999999994;
        p *= x2;

        return p;
    }

    /**
     *  Compute sine over the first quadrant (0 < x < pi/2).
     *  Use combination of table lookup and rational polynomial expansion.
     *  @param xa number from which sine is requested
     *  @param xb extra bits for x (may be 0.0)
     *  @return sin(xa + xb)
     */
    private static double sinQ(double xa, double xb) {
        int idx = (int) ((xa * 8.0) + 0.5);
        final double epsilon = xa - EIGHTHS[idx]; //idx*0.125;

        // Table lookups
        final double sintA = SINE_TABLE_A[idx];
        final double sintB = SINE_TABLE_B[idx];
        final double costA = COSINE_TABLE_A[idx];
        final double costB = COSINE_TABLE_B[idx];

        // Polynomial eval of sin(epsilon), cos(epsilon)
        double sinEpsA = epsilon;
        double sinEpsB = polySine(epsilon);
        final double cosEpsA = 1.0;
        final double cosEpsB = polyCosine(epsilon);

        // Split epsilon   xa + xb = x
        final double temp = sinEpsA * HEX_40000000;
        double temp2 = (sinEpsA + temp) - temp;
        sinEpsB +=  sinEpsA - temp2;
        sinEpsA = temp2;

        /* Compute sin(x) by angle addition formula */
        double result;

        /* Compute the following sum:
         *
         * result = sintA + costA*sinEpsA + sintA*cosEpsB + costA*sinEpsB +
         *          sintB + costB*sinEpsA + sintB*cosEpsB + costB*sinEpsB;
         *
         * Ranges of elements
         *
         * xxxtA   0            PI/2
         * xxxtB   -1.5e-9      1.5e-9
         * sinEpsA -0.0625      0.0625
         * sinEpsB -6e-11       6e-11
         * cosEpsA  1.0
         * cosEpsB  0           -0.0625
         *
         */

        //result = sintA + costA*sinEpsA + sintA*cosEpsB + costA*sinEpsB +
        //          sintB + costB*sinEpsA + sintB*cosEpsB + costB*sinEpsB;

        //result = sintA + sintA*cosEpsB + sintB + sintB * cosEpsB;
        //result += costA*sinEpsA + costA*sinEpsB + costB*sinEpsA + costB * sinEpsB;
        double a = 0;
        double b = 0;

        double t = sintA;
        double c = a + t;
        double d = -(c - a - t);
        a = c;
        b = b + d;

        t = costA * sinEpsA;
        c = a + t;
        d = -(c - a - t);
        a = c;
        b = b + d;

        b = b + sintA * cosEpsB + costA * sinEpsB;
        /*
    t = sintA*cosEpsB;
    c = a + t;
    d = -(c - a - t);
    a = c;
    b = b + d;

    t = costA*sinEpsB;
    c = a + t;
    d = -(c - a - t);
    a = c;
    b = b + d;
         */

        b = b + sintB + costB * sinEpsA + sintB * cosEpsB + costB * sinEpsB;
        /*
    t = sintB;
    c = a + t;
    d = -(c - a - t);
    a = c;
    b = b + d;

    t = costB*sinEpsA;
    c = a + t;
    d = -(c - a - t);
    a = c;
    b = b + d;

    t = sintB*cosEpsB;
    c = a + t;
    d = -(c - a - t);
    a = c;
    b = b + d;

    t = costB*sinEpsB;
    c = a + t;
    d = -(c - a - t);
    a = c;
    b = b + d;
         */

        if (xb != 0.0) {
            t = ((costA + costB) * (cosEpsA + cosEpsB) -
                 (sintA + sintB) * (sinEpsA + sinEpsB)) * xb;  // approximate cosine*xb
            c = a + t;
            d = -(c - a - t);
            a = c;
            b = b + d;
        }

        result = a + b;

        return result;
    }

    /**
     * Compute cosine in the first quadrant by subtracting input from PI/2 and
     * then calling sinQ.  This is more accurate as the input approaches PI/2.
     *  @param xa number from which cosine is requested
     *  @param xb extra bits for x (may be 0.0)
     *  @return cos(xa + xb)
     */
    private static double cosQ(double xa, double xb) {
        final double pi2a = 1.5707963267948966;
        final double pi2b = 6.123233995736766E-17;

        final double a = pi2a - xa;
        double b = -(a - pi2a + xa);
        b += pi2b - xb;

        return sinQ(a, b);
    }

    /**
     *  Compute tangent (or cotangent) over the first quadrant.   0 < x < pi/2
     *  Use combination of table lookup and rational polynomial expansion.
     *  @param xa number from which sine is requested
     *  @param xb extra bits for x (may be 0.0)
     *  @param cotanFlag if true, compute the cotangent instead of the tangent
     *  @return tan(xa+xb) (or cotangent, depending on cotanFlag)
     */
    private static double tanQ(double xa, double xb, boolean cotanFlag) {

        int idx = (int) ((xa * 8.0) + 0.5);
        final double epsilon = xa - EIGHTHS[idx]; //idx*0.125;

        // Table lookups
        final double sintA = SINE_TABLE_A[idx];
        final double sintB = SINE_TABLE_B[idx];
        final double costA = COSINE_TABLE_A[idx];
        final double costB = COSINE_TABLE_B[idx];

        // Polynomial eval of sin(epsilon), cos(epsilon)
        double sinEpsA = epsilon;
        double sinEpsB = polySine(epsilon);
        final double cosEpsA = 1.0;
        final double cosEpsB = polyCosine(epsilon);

        // Split epsilon   xa + xb = x
        double temp = sinEpsA * HEX_40000000;
        double temp2 = (sinEpsA + temp) - temp;
        sinEpsB +=  sinEpsA - temp2;
        sinEpsA = temp2;

        /* Compute sin(x) by angle addition formula */

        /* Compute the following sum:
         *
         * result = sintA + costA*sinEpsA + sintA*cosEpsB + costA*sinEpsB +
         *          sintB + costB*sinEpsA + sintB*cosEpsB + costB*sinEpsB;
         *
         * Ranges of elements
         *
         * xxxtA   0            PI/2
         * xxxtB   -1.5e-9      1.5e-9
         * sinEpsA -0.0625      0.0625
         * sinEpsB -6e-11       6e-11
         * cosEpsA  1.0
         * cosEpsB  0           -0.0625
         *
         */

        //result = sintA + costA*sinEpsA + sintA*cosEpsB + costA*sinEpsB +
        //          sintB + costB*sinEpsA + sintB*cosEpsB + costB*sinEpsB;

        //result = sintA + sintA*cosEpsB + sintB + sintB * cosEpsB;
        //result += costA*sinEpsA + costA*sinEpsB + costB*sinEpsA + costB * sinEpsB;
        double a = 0;
        double b = 0;

        // Compute sine
        double t = sintA;
        double c = a + t;
        double d = -(c - a - t);
        a = c;
        b = b + d;

        t = costA*sinEpsA;
        c = a + t;
        d = -(c - a - t);
        a = c;
        b = b + d;

        b = b + sintA*cosEpsB + costA*sinEpsB;
        b = b + sintB + costB*sinEpsA + sintB*cosEpsB + costB*sinEpsB;

        double sina = a + b;
        double sinb = -(sina - a - b);

        // Compute cosine

        a = b = c = d = 0.0;

        t = costA*cosEpsA;
        c = a + t;
        d = -(c - a - t);
        a = c;
        b = b + d;

        t = -sintA*sinEpsA;
        c = a + t;
        d = -(c - a - t);
        a = c;
        b = b + d;

        b = b + costB*cosEpsA + costA*cosEpsB + costB*cosEpsB;
        b = b - (sintB*sinEpsA + sintA*sinEpsB + sintB*sinEpsB);

        double cosa = a + b;
        double cosb = -(cosa - a - b);

        if (cotanFlag) {
            double tmp;
            tmp = cosa; cosa = sina; sina = tmp;
            tmp = cosb; cosb = sinb; sinb = tmp;
        }


        /* estimate and correct, compute 1.0/(cosa+cosb) */
        /*
    double est = (sina+sinb)/(cosa+cosb);
    double err = (sina - cosa*est) + (sinb - cosb*est);
    est += err/(cosa+cosb);
    err = (sina - cosa*est) + (sinb - cosb*est);
         */

        // f(x) = 1/x,   f'(x) = -1/x^2

        double est = sina/cosa;

        /* Split the estimate to get more accurate read on division rounding */
        temp = est * HEX_40000000;
        double esta = (est + temp) - temp;
        double estb =  est - esta;

        temp = cosa * HEX_40000000;
        double cosaa = (cosa + temp) - temp;
        double cosab =  cosa - cosaa;

        //double err = (sina - est*cosa)/cosa;  // Correction for division rounding
        double err = (sina - esta*cosaa - esta*cosab - estb*cosaa - estb*cosab)/cosa;  // Correction for division rounding
        err += sinb/cosa;                     // Change in est due to sinb
        err += -sina * cosb / cosa / cosa;    // Change in est due to cosb

        if (xb != 0.0) {
            // tan' = 1 + tan^2      cot' = -(1 + cot^2)
            // Approximate impact of xb
            double xbadj = xb + est*est*xb;
            if (cotanFlag) {
                xbadj = -xbadj;
            }

            err += xbadj;
        }

        return est+err;
    }

    /** Reduce the input argument using the Payne and Hanek method.
     *  This is good for all inputs 0.0 < x < inf
     *  Output is remainder after dividing by PI/2
     *  The result array should contain 3 numbers.
     *  result[0] is the integer portion, so mod 4 this gives the quadrant.
     *  result[1] is the upper bits of the remainder
     *  result[2] is the lower bits of the remainder
     *
     * @param x number to reduce
     * @param result placeholder where to put the result
     */
    private static void reducePayneHanek(double x, double result[])
    {
        /* Convert input double to bits */
        long inbits = Double.doubleToLongBits(x);
        int exponent = (int) ((inbits >> 52) & 0x7ff) - 1023;

        /* Convert to fixed point representation */
        inbits &= 0x000fffffffffffffL;
        inbits |= 0x0010000000000000L;

        /* Normalize input to be between 0.5 and 1.0 */
        exponent++;
        inbits <<= 11;

        /* Based on the exponent, get a shifted copy of recip2pi */
        long shpi0;
        long shpiA;
        long shpiB;
        int idx = exponent >> 6;
        int shift = exponent - (idx << 6);

        if (shift != 0) {
            shpi0 = (idx == 0) ? 0 : (RECIP_2PI[idx-1] << shift);
            shpi0 |= RECIP_2PI[idx] >>> (64-shift);
            shpiA = (RECIP_2PI[idx] << shift) | (RECIP_2PI[idx+1] >>> (64-shift));
            shpiB = (RECIP_2PI[idx+1] << shift) | (RECIP_2PI[idx+2] >>> (64-shift));
        } else {
            shpi0 = (idx == 0) ? 0 : RECIP_2PI[idx-1];
            shpiA = RECIP_2PI[idx];
            shpiB = RECIP_2PI[idx+1];
        }

        /* Multiply input by shpiA */
        long a = inbits >>> 32;
        long b = inbits & 0xffffffffL;

        long c = shpiA >>> 32;
        long d = shpiA & 0xffffffffL;

        long ac = a * c;
        long bd = b * d;
        long bc = b * c;
        long ad = a * d;

        long prodB = bd + (ad << 32);
        long prodA = ac + (ad >>> 32);

        boolean bita = (bd & 0x8000000000000000L) != 0;
        boolean bitb = (ad & 0x80000000L ) != 0;
        boolean bitsum = (prodB & 0x8000000000000000L) != 0;

        /* Carry */
        if ( (bita && bitb) ||
                ((bita || bitb) && !bitsum) ) {
            prodA++;
        }

        bita = (prodB & 0x8000000000000000L) != 0;
        bitb = (bc & 0x80000000L ) != 0;

        prodB = prodB + (bc << 32);
        prodA = prodA + (bc >>> 32);

        bitsum = (prodB & 0x8000000000000000L) != 0;

        /* Carry */
        if ( (bita && bitb) ||
                ((bita || bitb) && !bitsum) ) {
            prodA++;
        }

        /* Multiply input by shpiB */
        c = shpiB >>> 32;
        d = shpiB & 0xffffffffL;
        ac = a * c;
        bc = b * c;
        ad = a * d;

        /* Collect terms */
        ac = ac + ((bc + ad) >>> 32);

        bita = (prodB & 0x8000000000000000L) != 0;
        bitb = (ac & 0x8000000000000000L ) != 0;
        prodB += ac;
        bitsum = (prodB & 0x8000000000000000L) != 0;
        /* Carry */
        if ( (bita && bitb) ||
                ((bita || bitb) && !bitsum) ) {
            prodA++;
        }

        /* Multiply by shpi0 */
        c = shpi0 >>> 32;
        d = shpi0 & 0xffffffffL;

        bd = b * d;
        bc = b * c;
        ad = a * d;

        prodA += bd + ((bc + ad) << 32);

        /*
         * prodA, prodB now contain the remainder as a fraction of PI.  We want this as a fraction of
         * PI/2, so use the following steps:
         * 1.) multiply by 4.
         * 2.) do a fixed point muliply by PI/4.
         * 3.) Convert to floating point.
         * 4.) Multiply by 2
         */

        /* This identifies the quadrant */
        int intPart = (int)(prodA >>> 62);

        /* Multiply by 4 */
        prodA <<= 2;
        prodA |= prodB >>> 62;
        prodB <<= 2;

        /* Multiply by PI/4 */
        a = prodA >>> 32;
        b = prodA & 0xffffffffL;

        c = PI_O_4_BITS[0] >>> 32;
        d = PI_O_4_BITS[0] & 0xffffffffL;

        ac = a * c;
        bd = b * d;
        bc = b * c;
        ad = a * d;

        long prod2B = bd + (ad << 32);
        long prod2A = ac + (ad >>> 32);

        bita = (bd & 0x8000000000000000L) != 0;
        bitb = (ad & 0x80000000L ) != 0;
        bitsum = (prod2B & 0x8000000000000000L) != 0;

        /* Carry */
        if ( (bita && bitb) ||
                ((bita || bitb) && !bitsum) ) {
            prod2A++;
        }

        bita = (prod2B & 0x8000000000000000L) != 0;
        bitb = (bc & 0x80000000L ) != 0;

        prod2B = prod2B + (bc << 32);
        prod2A = prod2A + (bc >>> 32);

        bitsum = (prod2B & 0x8000000000000000L) != 0;

        /* Carry */
        if ( (bita && bitb) ||
                ((bita || bitb) && !bitsum) ) {
            prod2A++;
        }

        /* Multiply input by pio4bits[1] */
        c = PI_O_4_BITS[1] >>> 32;
        d = PI_O_4_BITS[1] & 0xffffffffL;
        ac = a * c;
        bc = b * c;
        ad = a * d;

        /* Collect terms */
        ac = ac + ((bc + ad) >>> 32);

        bita = (prod2B & 0x8000000000000000L) != 0;
        bitb = (ac & 0x8000000000000000L ) != 0;
        prod2B += ac;
        bitsum = (prod2B & 0x8000000000000000L) != 0;
        /* Carry */
        if ( (bita && bitb) ||
                ((bita || bitb) && !bitsum) ) {
            prod2A++;
        }

        /* Multiply inputB by pio4bits[0] */
        a = prodB >>> 32;
        b = prodB & 0xffffffffL;
        c = PI_O_4_BITS[0] >>> 32;
        d = PI_O_4_BITS[0] & 0xffffffffL;
        ac = a * c;
        bc = b * c;
        ad = a * d;

        /* Collect terms */
        ac = ac + ((bc + ad) >>> 32);

        bita = (prod2B & 0x8000000000000000L) != 0;
        bitb = (ac & 0x8000000000000000L ) != 0;
        prod2B += ac;
        bitsum = (prod2B & 0x8000000000000000L) != 0;
        /* Carry */
        if ( (bita && bitb) ||
                ((bita || bitb) && !bitsum) ) {
            prod2A++;
        }

        /* Convert to double */
        double tmpA = (prod2A >>> 12) / TWO_POWER_52;  // High order 52 bits
        double tmpB = (((prod2A & 0xfffL) << 40) + (prod2B >>> 24)) / TWO_POWER_52 / TWO_POWER_52; // Low bits

        double sumA = tmpA + tmpB;
        double sumB = -(sumA - tmpA - tmpB);

        /* Multiply by PI/2 and return */
        result[0] = intPart;
        result[1] = sumA * 2.0;
        result[2] = sumB * 2.0;
    }

    /**
     *  Sine function.
     *  @param x a number
     *  @return sin(x)
     */
    public static double sin(double x) {
        boolean negative = false;
        int quadrant = 0;
        double xa;
        double xb = 0.0;

        /* Take absolute value of the input */
        xa = x;
        if (x < 0) {
            negative = true;
            xa = -xa;
        }

        /* Check for zero and negative zero */
        if (xa == 0.0) {
            long bits = Double.doubleToLongBits(x);
            if (bits < 0) {
                return -0.0;
            }
            return 0.0;
        }

        if (xa != xa || xa == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }

        /* Perform any argument reduction */
        if (xa > 3294198.0) {
            // PI * (2**20)
            // Argument too big for CodyWaite reduction.  Must use
            // PayneHanek.
            double reduceResults[] = new double[3];
            reducePayneHanek(xa, reduceResults);
            quadrant = ((int) reduceResults[0]) & 3;
            xa = reduceResults[1];
            xb = reduceResults[2];
        } else if (xa > 1.5707963267948966) {
            /* Inline the Cody/Waite reduction for performance */

            // Estimate k
            //k = (int)(xa / 1.5707963267948966);
            int k = (int)(xa * 0.6366197723675814);

            // Compute remainder
            double remA;
            double remB;
            while (true) {
                double a = -k * 1.570796251296997;
                remA = xa + a;
                remB = -(remA - xa - a);

                a = -k * 7.549789948768648E-8;
                double b = remA;
                remA = a + b;
                remB += -(remA - b - a);

                a = -k * 6.123233995736766E-17;
                b = remA;
                remA = a + b;
                remB += -(remA - b - a);

                if (remA > 0.0)
                    break;

                // Remainder is negative, so decrement k and try again.
                // This should only happen if the input is very close
                // to an even multiple of pi/2
                k--;
            }
            quadrant = k & 3;
            xa = remA;
            xb = remB;
        }

        if (negative) {
            quadrant ^= 2;  // Flip bit 1
        }

        switch (quadrant) {
            case 0:
                return sinQ(xa, xb);
            case 1:
                return cosQ(xa, xb);
            case 2:
                return -sinQ(xa, xb);
            case 3:
                return -cosQ(xa, xb);
            default:
                return Double.NaN;
        }
    }

    /**
     *  Cosine function
     *  @param x a number
     *  @return cos(x)
     */
    public static double cos(double x) {
        int quadrant = 0;

        /* Take absolute value of the input */
        double xa = x;
        if (x < 0) {
            xa = -xa;
        }

        if (xa != xa || xa == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }

        /* Perform any argument reduction */
        double xb = 0;
        if (xa > 3294198.0) {
            // PI * (2**20)
            // Argument too big for CodyWaite reduction.  Must use
            // PayneHanek.
            double reduceResults[] = new double[3];
            reducePayneHanek(xa, reduceResults);
            quadrant = ((int) reduceResults[0]) & 3;
            xa = reduceResults[1];
            xb = reduceResults[2];
        } else if (xa > 1.5707963267948966) {
            /* Inline the Cody/Waite reduction for performance */

            // Estimate k
            //k = (int)(xa / 1.5707963267948966);
            int k = (int)(xa * 0.6366197723675814);

            // Compute remainder
            double remA;
            double remB;
            while (true) {
                double a = -k * 1.570796251296997;
                remA = xa + a;
                remB = -(remA - xa - a);

                a = -k * 7.549789948768648E-8;
                double b = remA;
                remA = a + b;
                remB += -(remA - b - a);

                a = -k * 6.123233995736766E-17;
                b = remA;
                remA = a + b;
                remB += -(remA - b - a);

                if (remA > 0.0)
                    break;

                // Remainder is negative, so decrement k and try again.
                // This should only happen if the input is very close
                // to an even multiple of pi/2
                k--;
            }
            quadrant = k & 3;
            xa = remA;
            xb = remB;
        }

        //if (negative)
        //  quadrant = (quadrant + 2) % 4;

        switch (quadrant) {
            case 0:
                return cosQ(xa, xb);
            case 1:
                return -sinQ(xa, xb);
            case 2:
                return -cosQ(xa, xb);
            case 3:
                return sinQ(xa, xb);
            default:
                return Double.NaN;
        }
    }

    /**
     *   Tangent function
     *  @param x a number
     *  @return tan(x)
     */
    public static double tan(double x) {
        boolean negative = false;
        int quadrant = 0;

        /* Take absolute value of the input */
        double xa = x;
        if (x < 0) {
            negative = true;
            xa = -xa;
        }

        /* Check for zero and negative zero */
        if (xa == 0.0) {
            long bits = Double.doubleToLongBits(x);
            if (bits < 0) {
                return -0.0;
            }
            return 0.0;
        }

        if (xa != xa || xa == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }

        /* Perform any argument reduction */
        double xb = 0;
        if (xa > 3294198.0) {
            // PI * (2**20)
            // Argument too big for CodyWaite reduction.  Must use
            // PayneHanek.
            double reduceResults[] = new double[3];
            reducePayneHanek(xa, reduceResults);
            quadrant = ((int) reduceResults[0]) & 3;
            xa = reduceResults[1];
            xb = reduceResults[2];
        } else if (xa > 1.5707963267948966) {
            /* Inline the Cody/Waite reduction for performance */

            // Estimate k
            //k = (int)(xa / 1.5707963267948966);
            int k = (int)(xa * 0.6366197723675814);

            // Compute remainder
            double remA;
            double remB;
            while (true) {
                double a = -k * 1.570796251296997;
                remA = xa + a;
                remB = -(remA - xa - a);

                a = -k * 7.549789948768648E-8;
                double b = remA;
                remA = a + b;
                remB += -(remA - b - a);

                a = -k * 6.123233995736766E-17;
                b = remA;
                remA = a + b;
                remB += -(remA - b - a);

                if (remA > 0.0)
                    break;

                // Remainder is negative, so decrement k and try again.
                // This should only happen if the input is very close
                // to an even multiple of pi/2
                k--;
            }
            quadrant = k & 3;
            xa = remA;
            xb = remB;
        }

        if (xa > 1.5) {
            // Accurracy suffers between 1.5 and PI/2
            final double pi2a = 1.5707963267948966;
            final double pi2b = 6.123233995736766E-17;

            final double a = pi2a - xa;
            double b = -(a - pi2a + xa);
            b += pi2b - xb;

            xa = a + b;
            xb = -(xa - a - b);
            quadrant ^= 1;
            negative ^= true;
        }

        double result;
        if ((quadrant & 1) == 0) {
            result = tanQ(xa, xb, false);
        } else {
            result = -tanQ(xa, xb, true);
        }

        if (negative) {
            result = -result;
        }

        return result;
    }

    /**
     * Arctangent function
     *  @param x a number
     *  @return atan(x)
     */
    public static double atan(double x) {
        return atan(x, 0.0, false);
    }

    /** Internal helper function to compute arctangent.
     * @param xa number from which arctangent is requested
     * @param xb extra bits for x (may be 0.0)
     * @param leftPlane if true, result angle must be put in the left half plane
     * @return atan(xa + xb) (or angle shifted by {@code PI} if leftPlane is true)
     */
    private static double atan(double xa, double xb, boolean leftPlane) {
        boolean negate = false;
        int idx;

        if (xa == 0.0) { // Matches +/- 0.0; return correct sign
            return leftPlane ? copySign(Math.PI, xa) : xa;
        }

        if (xa < 0) {
            // negative
            xa = -xa;
            xb = -xb;
            negate = true;
        }

        if (xa > 1.633123935319537E16) { // Very large input
            return (negate ^ leftPlane) ? (-Math.PI/2.0) : (Math.PI/2.0);
        }

        /* Estimate the closest tabulated arctan value, compute eps = xa-tangentTable */
        if (xa < 1.0) {
            idx = (int) (((-1.7168146928204136 * xa * xa + 8.0) * xa) + 0.5);
        } else {
            double temp = 1.0/xa;
            idx = (int) (-((-1.7168146928204136 * temp * temp + 8.0) * temp) + 13.07);
        }
        double epsA = xa - TANGENT_TABLE_A[idx];
        double epsB = -(epsA - xa + TANGENT_TABLE_A[idx]);
        epsB += xb - TANGENT_TABLE_B[idx];

        double temp = epsA + epsB;
        epsB = -(temp - epsA - epsB);
        epsA = temp;

        /* Compute eps = eps / (1.0 + xa*tangent) */
        temp = xa * HEX_40000000;
        double ya = xa + temp - temp;
        double yb = xb + xa - ya;
        xa = ya;
        xb += yb;

        //if (idx > 8 || idx == 0)
        if (idx == 0) {
            /* If the slope of the arctan is gentle enough (< 0.45), this approximation will suffice */
            //double denom = 1.0 / (1.0 + xa*tangentTableA[idx] + xb*tangentTableA[idx] + xa*tangentTableB[idx] + xb*tangentTableB[idx]);
            double denom = 1.0 / (1.0 + (xa + xb) * (TANGENT_TABLE_A[idx] + TANGENT_TABLE_B[idx]));
            //double denom = 1.0 / (1.0 + xa*tangentTableA[idx]);
            ya = epsA * denom;
            yb = epsB * denom;
        } else {
            double temp2 = xa * TANGENT_TABLE_A[idx];
            double za = 1.0 + temp2;
            double zb = -(za - 1.0 - temp2);
            temp2 = xb * TANGENT_TABLE_A[idx] + xa * TANGENT_TABLE_B[idx];
            temp = za + temp2;
            zb += -(temp - za - temp2);
            za = temp;

            zb += xb * TANGENT_TABLE_B[idx];
            ya = epsA / za;

            temp = ya * HEX_40000000;
            final double yaa = (ya + temp) - temp;
            final double yab = ya - yaa;

            temp = za * HEX_40000000;
            final double zaa = (za + temp) - temp;
            final double zab = za - zaa;

            /* Correct for rounding in division */
            yb = (epsA - yaa * zaa - yaa * zab - yab * zaa - yab * zab) / za;

            yb += -epsA * zb / za / za;
            yb += epsB / za;
        }


        epsA = ya;
        epsB = yb;

        /* Evaluate polynomial */
        double epsA2 = epsA*epsA;

        /*
    yb = -0.09001346640161823;
    yb = yb * epsA2 + 0.11110718400605211;
    yb = yb * epsA2 + -0.1428571349122913;
    yb = yb * epsA2 + 0.19999999999273194;
    yb = yb * epsA2 + -0.33333333333333093;
    yb = yb * epsA2 * epsA;
         */

        yb = 0.07490822288864472;
        yb = yb * epsA2 + -0.09088450866185192;
        yb = yb * epsA2 + 0.11111095942313305;
        yb = yb * epsA2 + -0.1428571423679182;
        yb = yb * epsA2 + 0.19999999999923582;
        yb = yb * epsA2 + -0.33333333333333287;
        yb = yb * epsA2 * epsA;


        ya = epsA;

        temp = ya + yb;
        yb = -(temp - ya - yb);
        ya = temp;

        /* Add in effect of epsB.   atan'(x) = 1/(1+x^2) */
        yb += epsB / (1.0 + epsA * epsA);

        double result;
        double resultb;

        //result = yb + eighths[idx] + ya;
        double za = EIGHTHS[idx] + ya;
        double zb = -(za - EIGHTHS[idx] - ya);
        temp = za + yb;
        zb += -(temp - za - yb);
        za = temp;

        result = za + zb;
        resultb = -(result - za - zb);

        if (leftPlane) {
            // Result is in the left plane
            final double pia = 1.5707963267948966*2.0;
            final double pib = 6.123233995736766E-17*2.0;

            za = pia - result;
            zb = -(za - pia + result);
            zb += pib - resultb;

            result = za + zb;
            resultb = -(result - za - zb);
        }


        if (negate ^ leftPlane) {
            result = -result;
        }

        return result;
    }

    /**
     * Two arguments arctangent function
     * @param y ordinate
     * @param x abscissa
     * @return phase angle of point (x,y) between {@code -PI} and {@code PI}
     */
    public static double atan2(double y, double x) {
        if (x !=x || y != y) {
            return Double.NaN;
        }

        if (y == 0.0) {
            double result = x*y;
            double invx = 1.0/x;
            double invy = 1.0/y;

            if (invx == 0.0) { // X is infinite
                if (x > 0) {
                    return y; // return +/- 0.0
                } else {
                    return copySign(Math.PI, y);
                }
            }

            if (x < 0.0 || invx < 0.0) {
                if (y < 0.0 || invy < 0.0) {
                    return -Math.PI;
                } else {
                    return Math.PI;
                }
            } else {
                return result;
            }
        }

        // y cannot now be zero

        if (y == Double.POSITIVE_INFINITY) {
            if (x == Double.POSITIVE_INFINITY) {
                return Math.PI/4.0;
            }

            if (x == Double.NEGATIVE_INFINITY) {
                return Math.PI*3.0/4.0;
            }

            return Math.PI/2.0;
        }

        if (y == Double.NEGATIVE_INFINITY) {
            if (x == Double.POSITIVE_INFINITY) {
                return -Math.PI/4.0;
            }

            if (x == Double.NEGATIVE_INFINITY) {
                return -Math.PI*3.0/4.0;
            }

            return -Math.PI/2.0;
        }

        if (x == Double.POSITIVE_INFINITY) {
            if (y > 0.0 || 1/y > 0.0) {
                return 0.0;
            }

            if (y < 0.0 || 1/y < 0.0) {
                return -0.0;
            }
        }

        if (x == Double.NEGATIVE_INFINITY)
        {
            if (y > 0.0 || 1/y > 0.0) {
                return Math.PI;
            }

            if (y < 0.0 || 1/y < 0.0) {
                return -Math.PI;
            }
        }

        // Neither y nor x can be infinite or NAN here

        if (x == 0) {
            if (y > 0.0 || 1/y > 0.0) {
                return Math.PI/2.0;
            }

            if (y < 0.0 || 1/y < 0.0) {
                return -Math.PI/2.0;
            }
        }

        // Compute ratio r = y/x
        final double r = y/x;
        if (Double.isInfinite(r)) { // bypass calculations that can create NaN
            return atan(r, 0, x < 0);
        }

        double ra = doubleHighPart(r);
        double rb = r - ra;

        // Split x
        final double xa = doubleHighPart(x);
        final double xb = x - xa;

        rb += (y - ra * xa - ra * xb - rb * xa - rb * xb) / x;

        double temp = ra + rb;
        rb = -(temp - ra - rb);
        ra = temp;

        if (ra == 0) { // Fix up the sign so atan works correctly
            ra = copySign(0.0, y);
        }

        // Call atan
        double result = atan(ra, rb, x < 0);

        return result;
    }

    /** Compute the arc sine of a number.
     * @param x number on which evaluation is done
     * @return arc sine of x
     */
    public static double asin(double x) {
      if (x != x) {
          return Double.NaN;
      }

      if (x > 1.0 || x < -1.0) {
          return Double.NaN;
      }

      if (x == 1.0) {
          return Math.PI/2.0;
      }

      if (x == -1.0) {
          return -Math.PI/2.0;
      }

      if (x == 0.0) { // Matches +/- 0.0; return correct sign
          return x;
      }

      /* Compute asin(x) = atan(x/sqrt(1-x*x)) */

      /* Split x */
      double temp = x * HEX_40000000;
      final double xa = x + temp - temp;
      final double xb = x - xa;

      /* Square it */
      double ya = xa*xa;
      double yb = xa*xb*2.0 + xb*xb;

      /* Subtract from 1 */
      ya = -ya;
      yb = -yb;

      double za = 1.0 + ya;
      double zb = -(za - 1.0 - ya);

      temp = za + yb;
      zb += -(temp - za - yb);
      za = temp;

      /* Square root */
      double y;
      y = sqrt(za);
      temp = y * HEX_40000000;
      ya = y + temp - temp;
      yb = y - ya;

      /* Extend precision of sqrt */
      yb += (za - ya*ya - 2*ya*yb - yb*yb) / (2.0*y);

      /* Contribution of zb to sqrt */
      double dx = zb / (2.0*y);

      // Compute ratio r = x/y
      double r = x/y;
      temp = r * HEX_40000000;
      double ra = r + temp - temp;
      double rb = r - ra;

      rb += (x - ra*ya - ra*yb - rb*ya - rb*yb) / y;  // Correct for rounding in division
      rb += -x * dx / y / y;  // Add in effect additional bits of sqrt.

      temp = ra + rb;
      rb = -(temp - ra - rb);
      ra = temp;

      return atan(ra, rb, false);
    }

    /** Compute the arc cosine of a number.
     * @param x number on which evaluation is done
     * @return arc cosine of x
     */
    public static double acos(double x) {
      if (x != x) {
          return Double.NaN;
      }

      if (x > 1.0 || x < -1.0) {
          return Double.NaN;
      }

      if (x == -1.0) {
          return Math.PI;
      }

      if (x == 1.0) {
          return 0.0;
      }

      if (x == 0) {
          return Math.PI/2.0;
      }

      /* Compute acos(x) = atan(sqrt(1-x*x)/x) */

      /* Split x */
      double temp = x * HEX_40000000;
      final double xa = x + temp - temp;
      final double xb = x - xa;

      /* Square it */
      double ya = xa*xa;
      double yb = xa*xb*2.0 + xb*xb;

      /* Subtract from 1 */
      ya = -ya;
      yb = -yb;

      double za = 1.0 + ya;
      double zb = -(za - 1.0 - ya);

      temp = za + yb;
      zb += -(temp - za - yb);
      za = temp;

      /* Square root */
      double y = sqrt(za);
      temp = y * HEX_40000000;
      ya = y + temp - temp;
      yb = y - ya;

      /* Extend precision of sqrt */
      yb += (za - ya*ya - 2*ya*yb - yb*yb) / (2.0*y);

      /* Contribution of zb to sqrt */
      yb += zb / (2.0*y);
      y = ya+yb;
      yb = -(y - ya - yb);

      // Compute ratio r = y/x
      double r = y/x;

      // Did r overflow?
      if (Double.isInfinite(r)) { // x is effectively zero
          return Math.PI/2; // so return the appropriate value
      }

      double ra = doubleHighPart(r);
      double rb = r - ra;

      rb += (y - ra*xa - ra*xb - rb*xa - rb*xb) / x;  // Correct for rounding in division
      rb += yb / x;  // Add in effect additional bits of sqrt.

      temp = ra + rb;
      rb = -(temp - ra - rb);
      ra = temp;

      return atan(ra, rb, x<0);
    }

    /** Compute the cubic root of a number.
     * @param x number on which evaluation is done
     * @return cubic root of x
     */
    public static double cbrt(double x) {
      /* Convert input double to bits */
      long inbits = Double.doubleToLongBits(x);
      int exponent = (int) ((inbits >> 52) & 0x7ff) - 1023;
      boolean subnormal = false;

      if (exponent == -1023) {
          if (x == 0) {
              return x;
          }

          /* Subnormal, so normalize */
          subnormal = true;
          x *= 1.8014398509481984E16;  // 2^54
          inbits = Double.doubleToLongBits(x);
          exponent = (int) ((inbits >> 52) & 0x7ff) - 1023;
      }

      if (exponent == 1024) {
          // Nan or infinity.  Don't care which.
          return x;
      }

      /* Divide the exponent by 3 */
      int exp3 = exponent / 3;

      /* p2 will be the nearest power of 2 to x with its exponent divided by 3 */
      double p2 = Double.longBitsToDouble((inbits & 0x8000000000000000L) |
                                          (long)(((exp3 + 1023) & 0x7ff)) << 52);

      /* This will be a number between 1 and 2 */
      final double mant = Double.longBitsToDouble((inbits & 0x000fffffffffffffL) | 0x3ff0000000000000L);

      /* Estimate the cube root of mant by polynomial */
      double est = -0.010714690733195933;
      est = est * mant + 0.0875862700108075;
      est = est * mant + -0.3058015757857271;
      est = est * mant + 0.7249995199969751;
      est = est * mant + 0.5039018405998233;

      est *= CBRTTWO[exponent % 3 + 2];

      // est should now be good to about 15 bits of precision.   Do 2 rounds of
      // Newton's method to get closer,  this should get us full double precision
      // Scale down x for the purpose of doing newtons method.  This avoids over/under flows.
      final double xs = x / (p2*p2*p2);
      est += (xs - est*est*est) / (3*est*est);
      est += (xs - est*est*est) / (3*est*est);

      // Do one round of Newton's method in extended precision to get the last bit right.
      double temp = est * HEX_40000000;
      double ya = est + temp - temp;
      double yb = est - ya;

      double za = ya * ya;
      double zb = ya * yb * 2.0 + yb * yb;
      temp = za * HEX_40000000;
      double temp2 = za + temp - temp;
      zb += za - temp2;
      za = temp2;

      zb = za * yb + ya * zb + zb * yb;
      za = za * ya;

      double na = xs - za;
      double nb = -(na - xs + za);
      nb -= zb;

      est += (na+nb)/(3*est*est);

      /* Scale by a power of two, so this is exact. */
      est *= p2;

      if (subnormal) {
          est *= 3.814697265625E-6;  // 2^-18
      }

      return est;
    }

    /**
     *  Convert degrees to radians, with error of less than 0.5 ULP
     *  @param x angle in degrees
     *  @return x converted into radians
     */
    public static double toRadians(double x)
    {
        if (Double.isInfinite(x) || x == 0.0) { // Matches +/- 0.0; return correct sign
            return x;
        }

        // These are PI/180 split into high and low order bits
        final double facta = 0.01745329052209854;
        final double factb = 1.997844754509471E-9;

        double xa = doubleHighPart(x);
        double xb = x - xa;

        double result = xb * factb + xb * facta + xa * factb + xa * facta;
        if (result == 0) {
            result = result * x; // ensure correct sign if calculation underflows
        }
        return result;
    }

    /**
     *  Convert radians to degrees, with error of less than 0.5 ULP
     *  @param x angle in radians
     *  @return x converted into degrees
     */
    public static double toDegrees(double x)
    {
        if (Double.isInfinite(x) || x == 0.0) { // Matches +/- 0.0; return correct sign
            return x;
        }

        // These are 180/PI split into high and low order bits
        final double facta = 57.2957763671875;
        final double factb = 3.145894820876798E-6;

        double xa = doubleHighPart(x);
        double xb = x - xa;

        return xb * factb + xb * facta + xa * factb + xa * facta;
    }

    /**
     * Absolute value.
     * @param x number from which absolute value is requested
     * @return abs(x)
     */
    public static int abs(final int x) {
        int PROBE_START_LINE_3378 = 3378;
		int p_x_1564_line_3378 = x;
		boolean fast_math_1_expr723_line_3378 = p_x_1564_line_3378 < 0;
		boolean fast_math_1_expr721_line_3378 = (fast_math_1_expr723_line_3378);
		int fast_math_1_expr722_line_3378 = 0;
		int p_x_1564_line_3378_v2 = 0;
		if (fast_math_1_expr721_line_3378) {
			int p_x_1564_line_3378_v1 = x;
			fast_math_1_expr722_line_3378 = -p_x_1564_line_3378_v1;
		} else {
			p_x_1564_line_3378_v2 = x;
		}
		int fast_math_1_expr720_line_3378 = fast_math_1_expr721_line_3378
				? fast_math_1_expr722_line_3378
				: p_x_1564_line_3378_v2;
		int PROBE_END_LINE_3378 = 3378;
		return fast_math_1_expr720_line_3378;
    }

    /**
     * Absolute value.
     * @param x number from which absolute value is requested
     * @return abs(x)
     */
    public static long abs(final long x) {
        return (x < 0l) ? -x : x;
    }

    /**
     * Absolute value.
     * @param x number from which absolute value is requested
     * @return abs(x)
     */
    public static float abs(final float x) {
        return (x < 0.0f) ? -x : (x == 0.0f) ? 0.0f : x; // -0.0 => +0.0
    }

    /**
     * Absolute value.
     * @param x number from which absolute value is requested
     * @return abs(x)
     */
    public static double abs(double x) {
        return (x < 0.0) ? -x : (x == 0.0) ? 0.0 : x; // -0.0 => +0.0
    }

    /**
     * Compute least significant bit (Unit in Last Position) for a number.
     * @param x number from which ulp is requested
     * @return ulp(x)
     */
    public static double ulp(double x) {
        if (Double.isInfinite(x)) {
            return Double.POSITIVE_INFINITY;
        }
        return abs(x - Double.longBitsToDouble(Double.doubleToLongBits(x) ^ 1));
    }

    /**
     * Compute least significant bit (Unit in Last Position) for a number.
     * @param x number from which ulp is requested
     * @return ulp(x)
     */
    public static float ulp(float x) {
        if (Float.isInfinite(x)) {
            return Float.POSITIVE_INFINITY;
        }
        return abs(x - Float.intBitsToFloat(Float.floatToIntBits(x) ^ 1));
    }

    /**
     * Multiply a double number by a power of 2.
     * @param d number to multiply
     * @param n power of 2
     * @return d &times; 2<sup>n</sup>
     */
    public static double scalb(final double d, final int n) {

        // first simple and fast handling when 2^n can be represented using normal numbers
        if ((n > -1023) && (n < 1024)) {
            return d * Double.longBitsToDouble(((long) (n + 1023)) << 52);
        }

        // handle special cases
        if (Double.isNaN(d) || Double.isInfinite(d) || (d == 0)) {
            return d;
        }
        if (n < -2098) {
            return (d > 0) ? 0.0 : -0.0;
        }
        if (n > 2097) {
            return (d > 0) ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
        }

        // decompose d
        final long bits = Double.doubleToLongBits(d);
        final long sign = bits & 0x8000000000000000L;
        int  exponent   = ((int) (bits >>> 52)) & 0x7ff;
        long mantissa   = bits & 0x000fffffffffffffL;

        // compute scaled exponent
        int scaledExponent = exponent + n;

        if (n < 0) {
            // we are really in the case n <= -1023
            if (scaledExponent > 0) {
                // both the input and the result are normal numbers, we only adjust the exponent
                return Double.longBitsToDouble(sign | (((long) scaledExponent) << 52) | mantissa);
            } else if (scaledExponent > -53) {
                // the input is a normal number and the result is a subnormal number

                // recover the hidden mantissa bit
                mantissa = mantissa | (1L << 52);

                // scales down complete mantissa, hence losing least significant bits
                final long mostSignificantLostBit = mantissa & (1L << (-scaledExponent));
                mantissa = mantissa >>> (1 - scaledExponent);
                if (mostSignificantLostBit != 0) {
                    // we need to add 1 bit to round up the result
                    mantissa++;
                }
                return Double.longBitsToDouble(sign | mantissa);

            } else {
                // no need to compute the mantissa, the number scales down to 0
                return (sign == 0L) ? 0.0 : -0.0;
            }
        } else {
            // we are really in the case n >= 1024
            if (exponent == 0) {

                // the input number is subnormal, normalize it
                while ((mantissa >>> 52) != 1) {
                    mantissa = mantissa << 1;
                    --scaledExponent;
                }
                ++scaledExponent;
                mantissa = mantissa & 0x000fffffffffffffL;

                if (scaledExponent < 2047) {
                    return Double.longBitsToDouble(sign | (((long) scaledExponent) << 52) | mantissa);
                } else {
                    return (sign == 0L) ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
                }

            } else if (scaledExponent < 2047) {
                return Double.longBitsToDouble(sign | (((long) scaledExponent) << 52) | mantissa);
            } else {
                return (sign == 0L) ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
            }
        }

    }

    /**
     * Multiply a float number by a power of 2.
     * @param f number to multiply
     * @param n power of 2
     * @return f &times; 2<sup>n</sup>
     */
    public static float scalb(final float f, final int n) {

        // first simple and fast handling when 2^n can be represented using normal numbers
        if ((n > -127) && (n < 128)) {
            return f * Float.intBitsToFloat((n + 127) << 23);
        }

        // handle special cases
        if (Float.isNaN(f) || Float.isInfinite(f) || (f == 0f)) {
            return f;
        }
        if (n < -277) {
            return (f > 0) ? 0.0f : -0.0f;
        }
        if (n > 276) {
            return (f > 0) ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }

        // decompose f
        final int bits = Float.floatToIntBits(f);
        final int sign = bits & 0x80000000;
        int  exponent  = (bits >>> 23) & 0xff;
        int mantissa   = bits & 0x007fffff;

        // compute scaled exponent
        int scaledExponent = exponent + n;

        if (n < 0) {
            // we are really in the case n <= -127
            if (scaledExponent > 0) {
                // both the input and the result are normal numbers, we only adjust the exponent
                return Float.intBitsToFloat(sign | (scaledExponent << 23) | mantissa);
            } else if (scaledExponent > -24) {
                // the input is a normal number and the result is a subnormal number

                // recover the hidden mantissa bit
                mantissa = mantissa | (1 << 23);

                // scales down complete mantissa, hence losing least significant bits
                final int mostSignificantLostBit = mantissa & (1 << (-scaledExponent));
                mantissa = mantissa >>> (1 - scaledExponent);
                if (mostSignificantLostBit != 0) {
                    // we need to add 1 bit to round up the result
                    mantissa++;
                }
                return Float.intBitsToFloat(sign | mantissa);

            } else {
                // no need to compute the mantissa, the number scales down to 0
                return (sign == 0) ? 0.0f : -0.0f;
            }
        } else {
            // we are really in the case n >= 128
            if (exponent == 0) {

                // the input number is subnormal, normalize it
                while ((mantissa >>> 23) != 1) {
                    mantissa = mantissa << 1;
                    --scaledExponent;
                }
                ++scaledExponent;
                mantissa = mantissa & 0x007fffff;

                if (scaledExponent < 255) {
                    return Float.intBitsToFloat(sign | (scaledExponent << 23) | mantissa);
                } else {
                    return (sign == 0) ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
                }

            } else if (scaledExponent < 255) {
                return Float.intBitsToFloat(sign | (scaledExponent << 23) | mantissa);
            } else {
                return (sign == 0) ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
            }
        }

    }

    /**
     * Get the next machine representable number after a number, moving
     * in the direction of another number.
     * <p>
     * The ordering is as follows (increasing):
     * <ul>
     * <li>-INFINITY</li>
     * <li>-MAX_VALUE</li>
     * <li>-MIN_VALUE</li>
     * <li>-0.0</li>
     * <li>+0.0</li>
     * <li>+MIN_VALUE</li>
     * <li>+MAX_VALUE</li>
     * <li>+INFINITY</li>
     * <li></li>
     * <p>
     * If arguments compare equal, then the second argument is returned.
     * <p>
     * If {@code direction} is greater than {@code d},
     * the smallest machine representable number strictly greater than
     * {@code d} is returned; if less, then the largest representable number
     * strictly less than {@code d} is returned.</p>
     * <p>
     * If {@code d} is infinite and direction does not
     * bring it back to finite numbers, it is returned unchanged.</p>
     *
     * @param d base number
     * @param direction (the only important thing is whether
     * {@code direction} is greater or smaller than {@code d})
     * @return the next machine representable number in the specified direction
     */
    public static double nextAfter(double d, double direction) {

        // handling of some important special cases
        if (Double.isNaN(d) || Double.isNaN(direction)) {
            return Double.NaN;
        } else if (d == direction) {
            return direction;
        } else if (Double.isInfinite(d)) {
            return (d < 0) ? -Double.MAX_VALUE : Double.MAX_VALUE;
        } else if (d == 0) {
            return (direction < 0) ? -Double.MIN_VALUE : Double.MIN_VALUE;
        }
        // special cases MAX_VALUE to infinity and  MIN_VALUE to 0
        // are handled just as normal numbers

        final long bits = Double.doubleToLongBits(d);
        final long sign = bits & 0x8000000000000000L;
        if ((direction < d) ^ (sign == 0L)) {
            return Double.longBitsToDouble(sign | ((bits & 0x7fffffffffffffffL) + 1));
        } else {
            return Double.longBitsToDouble(sign | ((bits & 0x7fffffffffffffffL) - 1));
        }

    }

    /**
     * Get the next machine representable number after a number, moving
     * in the direction of another number.
     * <p>
     * The ordering is as follows (increasing):
     * <ul>
     * <li>-INFINITY</li>
     * <li>-MAX_VALUE</li>
     * <li>-MIN_VALUE</li>
     * <li>-0.0</li>
     * <li>+0.0</li>
     * <li>+MIN_VALUE</li>
     * <li>+MAX_VALUE</li>
     * <li>+INFINITY</li>
     * <li></li>
     * <p>
     * If arguments compare equal, then the second argument is returned.
     * <p>
     * If {@code direction} is greater than {@code f},
     * the smallest machine representable number strictly greater than
     * {@code f} is returned; if less, then the largest representable number
     * strictly less than {@code f} is returned.</p>
     * <p>
     * If {@code f} is infinite and direction does not
     * bring it back to finite numbers, it is returned unchanged.</p>
     *
     * @param f base number
     * @param direction (the only important thing is whether
     * {@code direction} is greater or smaller than {@code f})
     * @return the next machine representable number in the specified direction
     */
    public static float nextAfter(final float f, final double direction) {

        // handling of some important special cases
        if (Double.isNaN(f) || Double.isNaN(direction)) {
            return Float.NaN;
        } else if (f == direction) {
            return (float) direction;
        } else if (Float.isInfinite(f)) {
            return (f < 0f) ? -Float.MAX_VALUE : Float.MAX_VALUE;
        } else if (f == 0f) {
            return (direction < 0) ? -Float.MIN_VALUE : Float.MIN_VALUE;
        }
        // special cases MAX_VALUE to infinity and  MIN_VALUE to 0
        // are handled just as normal numbers

        final int bits = Float.floatToIntBits(f);
        final int sign = bits & 0x80000000;
        if ((direction < f) ^ (sign == 0)) {
            return Float.intBitsToFloat(sign | ((bits & 0x7fffffff) + 1));
        } else {
            return Float.intBitsToFloat(sign | ((bits & 0x7fffffff) - 1));
        }

    }

    /** Get the largest whole number smaller than x.
     * @param x number from which floor is requested
     * @return a double number f such that f is an integer f <= x < f + 1.0
     */
    public static double floor(double x) {
        long y = 0;

        int PROBE_START_LINE_3719 = 3721;
		double p_x_1578_line_3719 = x;
		double p_x_1578_line_3719_v1 = x;
		boolean fast_math_1_expr724_line_3719 = p_x_1578_line_3719 != p_x_1578_line_3719_v1;
		int PROBE_END_LINE_3719 = 3721;
		if (fast_math_1_expr724_line_3719) { // NaN
            return x;
        }

        int PROBE_START_LINE_3723 = 3725;
		double p_x_1578_line_3723 = x;
		double f_two_power_52_1579_line_3723 = TWO_POWER_52;
		boolean fast_math_1_expr726_line_3723 = p_x_1578_line_3723 >= f_two_power_52_1579_line_3723;
		boolean fast_math_1_expr727_line_3723 = false;
		if (!fast_math_1_expr726_line_3723) {
			double p_x_1578_line_3723_v1 = x;
			double f_two_power_52_1579_line_3723_v1 = TWO_POWER_52;
			double fast_math_1_expr728_line_3723 = -f_two_power_52_1579_line_3723_v1;
			fast_math_1_expr727_line_3723 = p_x_1578_line_3723_v1 <= fast_math_1_expr728_line_3723;
		}
		boolean fast_math_1_expr725_line_3723 = fast_math_1_expr726_line_3723 || fast_math_1_expr727_line_3723;
		int PROBE_END_LINE_3723 = 3725;
		if (fast_math_1_expr725_line_3723) {
            return x;
        }

        int PROBE_START_LINE_3727 = 3727;
		double p_x_1578_line_3727 = x;
		int PROBE_END_LINE_3727 = 3727;
		y = (long) p_x_1578_line_3727;
        int PROBE_START_LINE_3728 = 3730;
		double p_x_1578_line_3728 = x;
		boolean fast_math_1_expr732_line_3728 = p_x_1578_line_3728 < 0;
		boolean fast_math_1_expr733_line_3728 = true;
		if (fast_math_1_expr732_line_3728) {
			long v_y_1580_line_3728 = y;
			double p_x_1578_line_3728_v1 = x;
			fast_math_1_expr733_line_3728 = v_y_1580_line_3728 != p_x_1578_line_3728_v1;
		}
		boolean fast_math_1_expr731_line_3728 = fast_math_1_expr732_line_3728 && fast_math_1_expr733_line_3728;
		int PROBE_END_LINE_3728 = 3730;
		if (fast_math_1_expr731_line_3728) {
            y--;
        }

        int PROBE_START_LINE_3732 = 3734;
		long v_y_1580_line_3732 = y;
		boolean fast_math_1_expr734_line_3732 = v_y_1580_line_3732 == 0;
		int PROBE_END_LINE_3732 = 3734;
		if (fast_math_1_expr734_line_3732) {
            return x*y;
        }

        int PROBE_START_LINE_3736 = 3736;
		long v_y_1580_line_3736 = y;
		int PROBE_END_LINE_3736 = 3736;
		return v_y_1580_line_3736;
    }

    /** Get the smallest whole number larger than x.
     * @param x number from which ceil is requested
     * @return a double number c such that c is an integer c - 1.0 < x <= c
     */
    public static double ceil(double x) {
        double y = 0.0;

        int PROBE_START_LINE_3746 = 3748;
		double p_x_1581_line_3746 = x;
		double p_x_1581_line_3746_v1 = x;
		boolean fast_math_1_expr735_line_3746 = p_x_1581_line_3746 != p_x_1581_line_3746_v1;
		int PROBE_END_LINE_3746 = 3748;
		if (fast_math_1_expr735_line_3746) { // NaN
            return x;
        }

        int PROBE_START_LINE_3750 = 3750;
		double p_x_1581_line_3750 = x;
		double fast_math_1_expr737_line_3750 = floor(p_x_1581_line_3750);
		int PROBE_END_LINE_3750 = 3750;
		y = fast_math_1_expr737_line_3750;
        int PROBE_START_LINE_3751 = 3753;
		double v_y_1582_line_3751 = y;
		double p_x_1581_line_3751 = x;
		boolean fast_math_1_expr738_line_3751 = v_y_1582_line_3751 == p_x_1581_line_3751;
		int PROBE_END_LINE_3751 = 3753;
		if (fast_math_1_expr738_line_3751) {
            int PROBE_START_LINE_3752 = 3752;
			double v_y_1582_line_3752 = y;
			int PROBE_END_LINE_3752 = 3752;
			return v_y_1582_line_3752;
        }

        y += 1.0;

        if (y == 0) {
            return x*y;
        }

        return y;
    }

    /** Get the whole number that is the nearest to x, or the even one if x is exactly half way between two integers.
     * @param x number from which nearest whole number is requested
     * @return a double number r such that r is an integer r - 0.5 <= x <= r + 0.5
     */
    public static double rint(double x) {
        double y = floor(x);
        double d = x - y;

        if (d > 0.5) {
            if (y == -1.0) {
                return -0.0; // Preserve sign of operand
            }
            return y+1.0;
        }
        if (d < 0.5) {
            return y;
        }

        /* half way, round to even */
        long z = (long) y;
        return (z & 1) == 0 ? y : y + 1.0;
    }

    /** Get the closest long to x.
     * @param x number from which closest long is requested
     * @return closest long to x
     */
    public static long round(double x) {
        return (long) floor(x + 0.5);
    }

    /** Get the closest int to x.
     * @param x number from which closest int is requested
     * @return closest int to x
     */
    public static int round(final float x) {
        return (int) floor(x + 0.5f);
    }

    /** Compute the minimum of two values
     * @param a first value
     * @param b second value
     * @return a if a is lesser or equal to b, b otherwise
     */
    public static int min(final int a, final int b) {
        int PROBE_START_LINE_3809 = 3809;
		int p_a_1586_line_3809 = a;
		int p_b_1587_line_3809 = b;
		boolean fast_math_1_expr741_line_3809 = p_a_1586_line_3809 <= p_b_1587_line_3809;
		boolean fast_math_1_expr740_line_3809 = (fast_math_1_expr741_line_3809);
		int p_a_1586_line_3809_v1 = 0;
		int p_b_1587_line_3809_v1 = 0;
		if (fast_math_1_expr740_line_3809) {
			p_a_1586_line_3809_v1 = a;
		} else {
			p_b_1587_line_3809_v1 = b;
		}
		int fast_math_1_expr739_line_3809 = fast_math_1_expr740_line_3809
				? p_a_1586_line_3809_v1
				: p_b_1587_line_3809_v1;
		int PROBE_END_LINE_3809 = 3809;
		return fast_math_1_expr739_line_3809;
    }

    /** Compute the minimum of two values
     * @param a first value
     * @param b second value
     * @return a if a is lesser or equal to b, b otherwise
     */
    public static long min(final long a, final long b) {
        return (a <= b) ? a : b;
    }

    /** Compute the minimum of two values
     * @param a first value
     * @param b second value
     * @return a if a is lesser or equal to b, b otherwise
     */
    public static float min(final float a, final float b) {
        if (a > b) {
            return b;
        }
        if (a < b) {
            return a;
        }
        /* if either arg is NaN, return NaN */
        if (a != b) {
            return Float.NaN;
        }
        /* min(+0.0,-0.0) == -0.0 */
        /* 0x80000000 == Float.floatToRawIntBits(-0.0d) */
        int bits = Float.floatToRawIntBits(a);
        if (bits == 0x80000000) {
            return a;
        }
        return b;
    }

    /** Compute the minimum of two values
     * @param a first value
     * @param b second value
     * @return a if a is lesser or equal to b, b otherwise
     */
    public static double min(final double a, final double b) {
        if (a > b) {
            return b;
        }
        if (a < b) {
            return a;
        }
        /* if either arg is NaN, return NaN */
        if (a != b) {
            return Double.NaN;
        }
        /* min(+0.0,-0.0) == -0.0 */
        /* 0x8000000000000000L == Double.doubleToRawLongBits(-0.0d) */
        long bits = Double.doubleToRawLongBits(a);
        if (bits == 0x8000000000000000L) {
            return a;
        }
        return b;
    }

    /** Compute the maximum of two values
     * @param a first value
     * @param b second value
     * @return b if a is lesser or equal to b, a otherwise
     */
    public static int max(final int a, final int b) {
        int PROBE_START_LINE_3877 = 3877;
		int p_a_1594_line_3877 = a;
		int p_b_1595_line_3877 = b;
		boolean fast_math_1_expr744_line_3877 = p_a_1594_line_3877 <= p_b_1595_line_3877;
		boolean fast_math_1_expr743_line_3877 = (fast_math_1_expr744_line_3877);
		int p_b_1595_line_3877_v1 = 0;
		int p_a_1594_line_3877_v1 = 0;
		if (fast_math_1_expr743_line_3877) {
			p_b_1595_line_3877_v1 = b;
		} else {
			p_a_1594_line_3877_v1 = a;
		}
		int fast_math_1_expr742_line_3877 = fast_math_1_expr743_line_3877
				? p_b_1595_line_3877_v1
				: p_a_1594_line_3877_v1;
		int PROBE_END_LINE_3877 = 3877;
		return fast_math_1_expr742_line_3877;
    }

    /** Compute the maximum of two values
     * @param a first value
     * @param b second value
     * @return b if a is lesser or equal to b, a otherwise
     */
    public static long max(final long a, final long b) {
        return (a <= b) ? b : a;
    }

    /** Compute the maximum of two values
     * @param a first value
     * @param b second value
     * @return b if a is lesser or equal to b, a otherwise
     */
    public static float max(final float a, final float b) {
        if (a > b) {
            return a;
        }
        if (a < b) {
            return b;
        }
        /* if either arg is NaN, return NaN */
        if (a != b) {
            return Float.NaN;
        }
        /* min(+0.0,-0.0) == -0.0 */
        /* 0x80000000 == Float.floatToRawIntBits(-0.0d) */
        int bits = Float.floatToRawIntBits(a);
        if (bits == 0x80000000) {
            return b;
        }
        return a;
    }

    /** Compute the maximum of two values
     * @param a first value
     * @param b second value
     * @return b if a is lesser or equal to b, a otherwise
     */
    public static double max(final double a, final double b) {
        if (a > b) {
            return a;
        }
        if (a < b) {
            return b;
        }
        /* if either arg is NaN, return NaN */
        if (a != b) {
            return Double.NaN;
        }
        /* min(+0.0,-0.0) == -0.0 */
        /* 0x8000000000000000L == Double.doubleToRawLongBits(-0.0d) */
        long bits = Double.doubleToRawLongBits(a);
        if (bits == 0x8000000000000000L) {
            return b;
        }
        return a;
    }

    /**
     * Returns the hypotenuse of a triangle with sides {@code x} and {@code y}
     * - sqrt(<i>x</i><sup>2</sup>&nbsp;+<i>y</i><sup>2</sup>)<br/>
     * avoiding intermediate overflow or underflow.
     *
     * <ul>
     * <li> If either argument is infinite, then the result is positive infinity.</li>
     * <li> else, if either argument is NaN then the result is NaN.</li>
     * </ul>
     *
     * @param x a value
     * @param y a value
     * @return sqrt(<i>x</i><sup>2</sup>&nbsp;+<i>y</i><sup>2</sup>)
     */
    public static double hypot(final double x, final double y) {
        if (Double.isInfinite(x) || Double.isInfinite(y)) {
            return Double.POSITIVE_INFINITY;
        } else if (Double.isNaN(x) || Double.isNaN(y)) {
            return Double.NaN;
        } else {

            final int expX = getExponent(x);
            final int expY = getExponent(y);
            if (expX > expY + 27) {
                // y is neglectible with respect to x
                return abs(x);
            } else if (expY > expX + 27) {
                // x is neglectible with respect to y
                return abs(y);
            } else {

                // find an intermediate scale to avoid both overflow and underflow
                final int middleExp = (expX + expY) / 2;

                // scale parameters without losing precision
                final double scaledX = scalb(x, -middleExp);
                final double scaledY = scalb(y, -middleExp);

                // compute scaled hypotenuse
                final double scaledH = sqrt(scaledX * scaledX + scaledY * scaledY);

                // remove scaling
                return scalb(scaledH, middleExp);

            }

        }
    }

    /**
     * Computes the remainder as prescribed by the IEEE 754 standard.
     * The remainder value is mathematically equal to {@code x - y*n}
     * where {@code n} is the mathematical integer closest to the exact mathematical value
     * of the quotient {@code x/y}.
     * If two mathematical integers are equally close to {@code x/y} then
     * {@code n} is the integer that is even.
     * <p>
     * <ul>
     * <li>If either operand is NaN, the result is NaN.</li>
     * <li>If the result is not NaN, the sign of the result equals the sign of the dividend.</li>
     * <li>If the dividend is an infinity, or the divisor is a zero, or both, the result is NaN.</li>
     * <li>If the dividend is finite and the divisor is an infinity, the result equals the dividend.</li>
     * <li>If the dividend is a zero and the divisor is finite, the result equals the dividend.</li>
     * </ul>
     * <p><b>Note:</b> this implementation currently delegates to {@link StrictMath#IEEEremainder}
     * @param dividend the number to be divided
     * @param divisor the number by which to divide
     * @return the remainder, rounded
     */
    public static double IEEEremainder(double dividend, double divisor) {
        return StrictMath.IEEEremainder(dividend, divisor); // TODO provide our own implementation
    }

    /**
     * Returns the first argument with the sign of the second argument.
     * A NaN {@code sign} argument is treated as positive.
     *
     * @param magnitude the value to return
     * @param sign the sign for the returned value
     * @return the magnitude with the same sign as the {@code sign} argument
     */
    public static double copySign(double magnitude, double sign){
        long m = Double.doubleToLongBits(magnitude);
        long s = Double.doubleToLongBits(sign);
        if ((m >= 0 && s >= 0) || (m < 0 && s < 0)) { // Sign is currently OK
            return magnitude;
        }
        return -magnitude; // flip sign
    }

    /**
     * Returns the first argument with the sign of the second argument.
     * A NaN {@code sign} argument is treated as positive.
     *
     * @param magnitude the value to return
     * @param sign the sign for the returned value
     * @return the magnitude with the same sign as the {@code sign} argument
     */
    public static float copySign(float magnitude, float sign){
        int m = Float.floatToIntBits(magnitude);
        int s = Float.floatToIntBits(sign);
        if ((m >= 0 && s >= 0) || (m < 0 && s < 0)) { // Sign is currently OK
            return magnitude;
        }
        return -magnitude; // flip sign
    }

    /**
     * Return the exponent of a double number, removing the bias.
     * <p>
     * For double numbers of the form 2<sup>x</sup>, the unbiased
     * exponent is exactly x.
     * </p>
     * @param d number from which exponent is requested
     * @return exponent for d in IEEE754 representation, without bias
     */
    public static int getExponent(final double d) {
        return (int) ((Double.doubleToLongBits(d) >>> 52) & 0x7ff) - 1023;
    }

    /**
     * Return the exponent of a float number, removing the bias.
     * <p>
     * For float numbers of the form 2<sup>x</sup>, the unbiased
     * exponent is exactly x.
     * </p>
     * @param f number from which exponent is requested
     * @return exponent for d in IEEE754 representation, without bias
     */
    public static int getExponent(final float f) {
        return ((Float.floatToIntBits(f) >>> 23) & 0xff) - 127;
    }

}
