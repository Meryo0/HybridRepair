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
package org.apache.commons.lang3;

import java.io.File;

/**
 * <p>
 * Helpers for {@code java.lang.System}.
 * </p>
 * <p>
 * If a system property cannot be read due to security restrictions, the corresponding field in this class will be set
 * to {@code null} and a message will be written to {@code System.err}.
 * </p>
 * <p>
 * #ThreadSafe#
 * </p>
 *
 * @since 1.0
 */
public class SystemUtils {

    /**
     * The prefix String for all Windows OS.
     */
    private static final String OS_NAME_WINDOWS_PREFIX = "Windows";

    // System property constants
    // -----------------------------------------------------------------------
    // These MUST be declared first. Other constants depend on this.

    /**
     * The System property key for the user home directory.
     */
    private static final String USER_HOME_KEY = "user.home";

    /**
     * The System property key for the user directory.
     */
    private static final String USER_DIR_KEY = "user.dir";

    /**
     * The System property key for the Java IO temporary directory.
     */
    private static final String JAVA_IO_TMPDIR_KEY = "java.io.tmpdir";

    /**
     * The System property key for the Java home directory.
     */
    private static final String JAVA_HOME_KEY = "java.home";

    int PROBE_START_LINE_66 = 88;

	public static final String system_utils_1_expr1_line_88 = getSystemProperty("awt.toolkit");

	int PROBE_END_LINE_66 = 88;

	/**
     * <p>
     * The {@code awt.toolkit} System Property.
     * </p>
     * <p>
     * Holds a class name, on Windows XP this is {@code sun.awt.windows.WToolkit}.
     * </p>
     * <p>
     * <b>On platforms without a GUI, this value is {@code null}.</b>
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.1
     */
    public static final String AWT_TOOLKIT = system_utils_1_expr1_line_88;

    int PROBE_START_LINE_90 = 110;

	public static final String system_utils_1_expr2_line_110 = getSystemProperty("file.encoding");

	int PROBE_END_LINE_90 = 110;

	/**
     * <p>
     * The {@code file.encoding} System Property.
     * </p>
     * <p>
     * File encoding, such as {@code Cp1252}.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.0
     * @since Java 1.2
     */
    public static final String FILE_ENCODING = system_utils_1_expr2_line_110;

    int PROBE_START_LINE_112 = 137;

	public static final String system_utils_1_expr3_line_137 = getSystemProperty("file.separator");

	int PROBE_END_LINE_112 = 137;

	/**
     * <p>
     * The {@code file.separator} System Property.
     * The file separator is:
     * </p>
     * <ul>
     * <li>{@code "/"} on UNIX</li>
     * <li>{@code "\"} on Windows.</li>
     * </ul>
     *
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @deprecated Use {@link File#separator}, since it is guaranteed to be a
     *             string containing a single character and it does not require a privilege check.
     * @since Java 1.1
     */
    @Deprecated
    public static final String FILE_SEPARATOR = system_utils_1_expr3_line_137;

    int PROBE_START_LINE_139 = 155;

	public static final String system_utils_1_expr4_line_155 = getSystemProperty("java.awt.fonts");

	int PROBE_END_LINE_139 = 155;

	/**
     * <p>
     * The {@code java.awt.fonts} System Property.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.1
     */
    public static final String JAVA_AWT_FONTS = system_utils_1_expr4_line_155;

    int PROBE_START_LINE_157 = 173;

	public static final String system_utils_1_expr5_line_173 = getSystemProperty("java.awt.graphicsenv");

	int PROBE_END_LINE_157 = 173;

	/**
     * <p>
     * The {@code java.awt.graphicsenv} System Property.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.1
     */
    public static final String JAVA_AWT_GRAPHICSENV = system_utils_1_expr5_line_173;

    int PROBE_START_LINE_175 = 194;

	public static final String system_utils_1_expr6_line_194 = getSystemProperty("java.awt.headless");

	int PROBE_END_LINE_175 = 194;

	/**
     * <p>
     * The {@code java.awt.headless} System Property. The value of this property is the String {@code "true"} or
     * {@code "false"}.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @see #isJavaAwtHeadless()
     * @since 2.1
     * @since Java 1.4
     */
    public static final String JAVA_AWT_HEADLESS = system_utils_1_expr6_line_194;

    int PROBE_START_LINE_196 = 212;

	public static final String system_utils_1_expr7_line_212 = getSystemProperty("java.awt.printerjob");

	int PROBE_END_LINE_196 = 212;

	/**
     * <p>
     * The {@code java.awt.printerjob} System Property.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.1
     */
    public static final String JAVA_AWT_PRINTERJOB = system_utils_1_expr7_line_212;

    int PROBE_START_LINE_214 = 230;

	public static final String system_utils_1_expr8_line_230 = getSystemProperty("java.class.path");

	int PROBE_END_LINE_214 = 230;

	/**
     * <p>
     * The {@code java.class.path} System Property. Java class path.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String JAVA_CLASS_PATH = system_utils_1_expr8_line_230;

    int PROBE_START_LINE_232 = 248;

	public static final String system_utils_1_expr9_line_248 = getSystemProperty("java.class.version");

	int PROBE_END_LINE_232 = 248;

	/**
     * <p>
     * The {@code java.class.version} System Property. Java class format version number.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String JAVA_CLASS_VERSION = system_utils_1_expr9_line_248;

    int PROBE_START_LINE_250 = 267;

	public static final String system_utils_1_expr10_line_267 = getSystemProperty("java.compiler");

	int PROBE_END_LINE_250 = 267;

	/**
     * <p>
     * The {@code java.compiler} System Property. Name of JIT compiler to use. First in JDK version 1.2. Not used in Sun
     * JDKs after 1.2.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2. Not used in Sun versions after 1.2.
     */
    public static final String JAVA_COMPILER = system_utils_1_expr10_line_267;

    int PROBE_START_LINE_269 = 285;

	public static final String system_utils_1_expr11_line_285 = getSystemProperty("java.endorsed.dirs");

	int PROBE_END_LINE_269 = 285;

	/**
     * <p>
     * The {@code java.endorsed.dirs} System Property. Path of endorsed directory or directories.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.4
     */
    public static final String JAVA_ENDORSED_DIRS = system_utils_1_expr11_line_285;

    int PROBE_START_LINE_287 = 303;

	public static final String system_utils_1_expr12_line_303 = getSystemProperty("java.ext.dirs");

	int PROBE_END_LINE_287 = 303;

	/**
     * <p>
     * The {@code java.ext.dirs} System Property. Path of extension directory or directories.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.3
     */
    public static final String JAVA_EXT_DIRS = system_utils_1_expr12_line_303;

    int PROBE_START_LINE_305 = 321;

	public static final String f_java_home_key_165_line_321 = JAVA_HOME_KEY;

	public static final String system_utils_1_expr13_line_321 = getSystemProperty(f_java_home_key_165_line_321);

	int PROBE_END_LINE_305 = 321;

	/**
     * <p>
     * The {@code java.home} System Property. Java installation directory.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String JAVA_HOME = system_utils_1_expr13_line_321;

    int PROBE_START_LINE_323 = 339;

	public static final String f_java_io_tmpdir_key_167_line_339 = JAVA_IO_TMPDIR_KEY;

	public static final String system_utils_1_expr14_line_339 = getSystemProperty(f_java_io_tmpdir_key_167_line_339);

	int PROBE_END_LINE_323 = 339;

	/**
     * <p>
     * The {@code java.io.tmpdir} System Property. Default temp file path.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_IO_TMPDIR = system_utils_1_expr14_line_339;

    int PROBE_START_LINE_341 = 357;

	public static final String system_utils_1_expr15_line_357 = getSystemProperty("java.library.path");

	int PROBE_END_LINE_341 = 357;

	/**
     * <p>
     * The {@code java.library.path} System Property. List of paths to search when loading libraries.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_LIBRARY_PATH = system_utils_1_expr15_line_357;

    int PROBE_START_LINE_359 = 376;

	public static final String system_utils_1_expr16_line_376 = getSystemProperty("java.runtime.name");

	int PROBE_END_LINE_359 = 376;

	/**
     * <p>
     * The {@code java.runtime.name} System Property. Java Runtime Environment name.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.0
     * @since Java 1.3
     */
    public static final String JAVA_RUNTIME_NAME = system_utils_1_expr16_line_376;

    int PROBE_START_LINE_378 = 395;

	public static final String system_utils_1_expr17_line_395 = getSystemProperty("java.runtime.version");

	int PROBE_END_LINE_378 = 395;

	/**
     * <p>
     * The {@code java.runtime.version} System Property. Java Runtime Environment version.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.0
     * @since Java 1.3
     */
    public static final String JAVA_RUNTIME_VERSION = system_utils_1_expr17_line_395;

    int PROBE_START_LINE_397 = 413;

	public static final String system_utils_1_expr18_line_413 = getSystemProperty("java.specification.name");

	int PROBE_END_LINE_397 = 413;

	/**
     * <p>
     * The {@code java.specification.name} System Property. Java Runtime Environment specification name.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_SPECIFICATION_NAME = system_utils_1_expr18_line_413;

    int PROBE_START_LINE_415 = 431;

	public static final String system_utils_1_expr19_line_431 = getSystemProperty("java.specification.vendor");

	int PROBE_END_LINE_415 = 431;

	/**
     * <p>
     * The {@code java.specification.vendor} System Property. Java Runtime Environment specification vendor.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_SPECIFICATION_VENDOR = system_utils_1_expr19_line_431;

    int PROBE_START_LINE_433 = 449;

	public static final String system_utils_1_expr20_line_449 = getSystemProperty("java.specification.version");

	int PROBE_END_LINE_433 = 449;

	/**
     * <p>
     * The {@code java.specification.version} System Property. Java Runtime Environment specification version.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.3
     */
    public static final String JAVA_SPECIFICATION_VERSION = system_utils_1_expr20_line_449;
    int PROBE_START_LINE_450 = 450;

	private static final String f_java_specification_version_173_line_450 = JAVA_SPECIFICATION_VERSION;

	private static final org.apache.commons.lang3.JavaVersion system_utils_1_expr21_line_450 = JavaVersion
			.get(f_java_specification_version_173_line_450);

	int PROBE_END_LINE_450 = 450;

	private static final JavaVersion JAVA_SPECIFICATION_VERSION_AS_ENUM = system_utils_1_expr21_line_450;

    int PROBE_START_LINE_452 = 470;

	public static final String system_utils_1_expr22_line_470 = getSystemProperty("java.util.prefs.PreferencesFactory");

	int PROBE_END_LINE_452 = 470;

	/**
     * <p>
     * The {@code java.util.prefs.PreferencesFactory} System Property. A class name.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.1
     * @since Java 1.4
     */
    public static final String JAVA_UTIL_PREFS_PREFERENCES_FACTORY =
        system_utils_1_expr22_line_470;

    int PROBE_START_LINE_472 = 488;

	public static final String system_utils_1_expr23_line_488 = getSystemProperty("java.vendor");

	int PROBE_END_LINE_472 = 488;

	/**
     * <p>
     * The {@code java.vendor} System Property. Java vendor-specific string.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String JAVA_VENDOR = system_utils_1_expr23_line_488;

    int PROBE_START_LINE_490 = 506;

	public static final String system_utils_1_expr24_line_506 = getSystemProperty("java.vendor.url");

	int PROBE_END_LINE_490 = 506;

	/**
     * <p>
     * The {@code java.vendor.url} System Property. Java vendor URL.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String JAVA_VENDOR_URL = system_utils_1_expr24_line_506;

    int PROBE_START_LINE_508 = 524;

	public static final String system_utils_1_expr25_line_524 = getSystemProperty("java.version");

	int PROBE_END_LINE_508 = 524;

	/**
     * <p>
     * The {@code java.version} System Property. Java version number.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String JAVA_VERSION = system_utils_1_expr25_line_524;

    int PROBE_START_LINE_526 = 543;

	public static final String system_utils_1_expr26_line_543 = getSystemProperty("java.vm.info");

	int PROBE_END_LINE_526 = 543;

	/**
     * <p>
     * The {@code java.vm.info} System Property. Java Virtual Machine implementation info.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.0
     * @since Java 1.2
     */
    public static final String JAVA_VM_INFO = system_utils_1_expr26_line_543;

    int PROBE_START_LINE_545 = 561;

	public static final String system_utils_1_expr27_line_561 = getSystemProperty("java.vm.name");

	int PROBE_END_LINE_545 = 561;

	/**
     * <p>
     * The {@code java.vm.name} System Property. Java Virtual Machine implementation name.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_VM_NAME = system_utils_1_expr27_line_561;

    int PROBE_START_LINE_563 = 579;

	public static final String system_utils_1_expr28_line_579 = getSystemProperty("java.vm.specification.name");

	int PROBE_END_LINE_563 = 579;

	/**
     * <p>
     * The {@code java.vm.specification.name} System Property. Java Virtual Machine specification name.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_VM_SPECIFICATION_NAME = system_utils_1_expr28_line_579;

    int PROBE_START_LINE_581 = 597;

	public static final String system_utils_1_expr29_line_597 = getSystemProperty("java.vm.specification.vendor");

	int PROBE_END_LINE_581 = 597;

	/**
     * <p>
     * The {@code java.vm.specification.vendor} System Property. Java Virtual Machine specification vendor.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_VM_SPECIFICATION_VENDOR = system_utils_1_expr29_line_597;

    int PROBE_START_LINE_599 = 615;

	public static final String system_utils_1_expr30_line_615 = getSystemProperty("java.vm.specification.version");

	int PROBE_END_LINE_599 = 615;

	/**
     * <p>
     * The {@code java.vm.specification.version} System Property. Java Virtual Machine specification version.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_VM_SPECIFICATION_VERSION = system_utils_1_expr30_line_615;

    int PROBE_START_LINE_617 = 633;

	public static final String system_utils_1_expr31_line_633 = getSystemProperty("java.vm.vendor");

	int PROBE_END_LINE_617 = 633;

	/**
     * <p>
     * The {@code java.vm.vendor} System Property. Java Virtual Machine implementation vendor.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_VM_VENDOR = system_utils_1_expr31_line_633;

    int PROBE_START_LINE_635 = 651;

	public static final String system_utils_1_expr32_line_651 = getSystemProperty("java.vm.version");

	int PROBE_END_LINE_635 = 651;

	/**
     * <p>
     * The {@code java.vm.version} System Property. Java Virtual Machine implementation version.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.2
     */
    public static final String JAVA_VM_VERSION = system_utils_1_expr32_line_651;

    int PROBE_START_LINE_653 = 669;

	public static final String system_utils_1_expr33_line_669 = getSystemProperty("line.separator");

	int PROBE_END_LINE_653 = 669;

	/**
     * <p>
     * The {@code line.separator} System Property. Line separator (<code>&quot;\n&quot;</code> on UNIX).
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String LINE_SEPARATOR = system_utils_1_expr33_line_669;

    int PROBE_START_LINE_671 = 687;

	public static final String system_utils_1_expr34_line_687 = getSystemProperty("os.arch");

	int PROBE_END_LINE_671 = 687;

	/**
     * <p>
     * The {@code os.arch} System Property. Operating system architecture.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String OS_ARCH = system_utils_1_expr34_line_687;

    int PROBE_START_LINE_689 = 705;

	public static final String system_utils_1_expr35_line_705 = getSystemProperty("os.name");

	int PROBE_END_LINE_689 = 705;

	/**
     * <p>
     * The {@code os.name} System Property. Operating system name.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String OS_NAME = system_utils_1_expr35_line_705;

    int PROBE_START_LINE_707 = 723;

	public static final String system_utils_1_expr36_line_723 = getSystemProperty("os.version");

	int PROBE_END_LINE_707 = 723;

	/**
     * <p>
     * The {@code os.version} System Property. Operating system version.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String OS_VERSION = system_utils_1_expr36_line_723;

    int PROBE_START_LINE_725 = 744;

	public static final String system_utils_1_expr37_line_744 = getSystemProperty("path.separator");

	int PROBE_END_LINE_725 = 744;

	/**
     * <p>
     * The {@code path.separator} System Property. Path separator (<code>&quot;:&quot;</code> on UNIX).
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @deprecated Use {@link File#pathSeparator}, since it is guaranteed to be a
     *             string containing a single character and it does not require a privilege check.
     * @since Java 1.1
     */
    @Deprecated
    public static final String PATH_SEPARATOR = system_utils_1_expr37_line_744;

    int PROBE_START_LINE_746 = 765;

	public static final String system_utils_1_expr42_line_764 = getSystemProperty("user.country");

	public static final boolean system_utils_1_expr39_line_764 = system_utils_1_expr42_line_764 == null;

	public static final String system_utils_1_expr40_line_765 = getSystemProperty("user.region");

	public static final String system_utils_1_expr41_line_765 = getSystemProperty("user.country");

	public static final String system_utils_1_expr38_line_764 = system_utils_1_expr39_line_764
			? system_utils_1_expr40_line_765
			: system_utils_1_expr41_line_765;

	int PROBE_END_LINE_746 = 765;

	/**
     * <p>
     * The {@code user.country} or {@code user.region} System Property. User's country code, such as {@code GB}. First
     * in Java version 1.2 as {@code user.region}. Renamed to {@code user.country} in 1.4
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.0
     * @since Java 1.2
     */
    public static final String USER_COUNTRY = system_utils_1_expr38_line_764;

    int PROBE_START_LINE_767 = 783;

	public static final String f_user_dir_key_193_line_783 = USER_DIR_KEY;

	public static final String system_utils_1_expr43_line_783 = getSystemProperty(f_user_dir_key_193_line_783);

	int PROBE_END_LINE_767 = 783;

	/**
     * <p>
     * The {@code user.dir} System Property. User's current working directory.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String USER_DIR = system_utils_1_expr43_line_783;

    int PROBE_START_LINE_785 = 801;

	public static final String f_user_home_key_195_line_801 = USER_HOME_KEY;

	public static final String system_utils_1_expr44_line_801 = getSystemProperty(f_user_home_key_195_line_801);

	int PROBE_END_LINE_785 = 801;

	/**
     * <p>
     * The {@code user.home} System Property. User's home directory.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String USER_HOME = system_utils_1_expr44_line_801;

    int PROBE_START_LINE_803 = 820;

	public static final String system_utils_1_expr45_line_820 = getSystemProperty("user.language");

	int PROBE_END_LINE_803 = 820;

	/**
     * <p>
     * The {@code user.language} System Property. User's language code, such as {@code "en"}.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.0
     * @since Java 1.2
     */
    public static final String USER_LANGUAGE = system_utils_1_expr45_line_820;

    int PROBE_START_LINE_822 = 838;

	public static final String system_utils_1_expr46_line_838 = getSystemProperty("user.name");

	int PROBE_END_LINE_822 = 838;

	/**
     * <p>
     * The {@code user.name} System Property. User's account name.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since Java 1.1
     */
    public static final String USER_NAME = system_utils_1_expr46_line_838;

    int PROBE_START_LINE_840 = 856;

	public static final String system_utils_1_expr47_line_856 = getSystemProperty("user.timezone");

	int PROBE_END_LINE_840 = 856;

	/**
     * <p>
     * The {@code user.timezone} System Property. For example: {@code "America/Los_Angeles"}.
     * </p>
     * <p>
     * Defaults to {@code null} if the runtime does not have security access to read this property or the property does
     * not exist.
     * </p>
     * <p>
     * This value is initialized when the class is loaded. If {@link System#setProperty(String,String)} or
     * {@link System#setProperties(java.util.Properties)} is called after this class is loaded, the value will be out of
     * sync with that System property.
     * </p>
     *
     * @since 2.1
     */
    public static final String USER_TIMEZONE = system_utils_1_expr47_line_856;

    // Java version checks
    // -----------------------------------------------------------------------
    // These MUST be declared after those above as they depend on the
    // values being set up

    int PROBE_START_LINE_863 = 871;

	public static final boolean system_utils_1_expr48_line_871 = getJavaVersionMatches("1.1");

	int PROBE_END_LINE_863 = 871;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.1 (also 1.1.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     */
    public static final boolean IS_JAVA_1_1 = system_utils_1_expr48_line_871;

    int PROBE_START_LINE_873 = 881;

	public static final boolean system_utils_1_expr49_line_881 = getJavaVersionMatches("1.2");

	int PROBE_END_LINE_873 = 881;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.2 (also 1.2.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     */
    public static final boolean IS_JAVA_1_2 = system_utils_1_expr49_line_881;

    int PROBE_START_LINE_883 = 891;

	public static final boolean system_utils_1_expr50_line_891 = getJavaVersionMatches("1.3");

	int PROBE_END_LINE_883 = 891;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.3 (also 1.3.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     */
    public static final boolean IS_JAVA_1_3 = system_utils_1_expr50_line_891;

    int PROBE_START_LINE_893 = 901;

	public static final boolean system_utils_1_expr51_line_901 = getJavaVersionMatches("1.4");

	int PROBE_END_LINE_893 = 901;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.4 (also 1.4.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     */
    public static final boolean IS_JAVA_1_4 = system_utils_1_expr51_line_901;

    int PROBE_START_LINE_903 = 911;

	public static final boolean system_utils_1_expr52_line_911 = getJavaVersionMatches("1.5");

	int PROBE_END_LINE_903 = 911;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.5 (also 1.5.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     */
    public static final boolean IS_JAVA_1_5 = system_utils_1_expr52_line_911;

    int PROBE_START_LINE_913 = 921;

	public static final boolean system_utils_1_expr53_line_921 = getJavaVersionMatches("1.6");

	int PROBE_END_LINE_913 = 921;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.6 (also 1.6.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     */
    public static final boolean IS_JAVA_1_6 = system_utils_1_expr53_line_921;

    int PROBE_START_LINE_923 = 933;

	public static final boolean system_utils_1_expr54_line_933 = getJavaVersionMatches("1.7");

	int PROBE_END_LINE_923 = 933;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.7 (also 1.7.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     *
     * @since 3.0
     */
    public static final boolean IS_JAVA_1_7 = system_utils_1_expr54_line_933;

    int PROBE_START_LINE_935 = 945;

	public static final boolean system_utils_1_expr55_line_945 = getJavaVersionMatches("1.8");

	int PROBE_END_LINE_935 = 945;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.8 (also 1.8.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     *
     * @since 3.3.2
     */
    public static final boolean IS_JAVA_1_8 = system_utils_1_expr55_line_945;

    int PROBE_START_LINE_947 = 957;

	public static final boolean system_utils_1_expr56_line_957 = getJavaVersionMatches("1.9");

	int PROBE_END_LINE_947 = 957;

	/**
     * <p>
     * Is {@code true} if this is Java version 1.9 (also 1.9.x versions).
     * </p>
     * <p>
     * The field will return {@code false} if {@link #JAVA_VERSION} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_JAVA_1_9 = system_utils_1_expr56_line_957;

    // Operating system checks
    // -----------------------------------------------------------------------
    // These MUST be declared after those above as they depend on the
    // values being set up
    // OS names from http://www.vamphq.com/os.html
    // Selected ones included - please advise dev@commons.apache.org
    // if you want another added or a mistake corrected

    int PROBE_START_LINE_967 = 977;

	public static final boolean system_utils_1_expr57_line_977 = getOSMatchesName("AIX");

	int PROBE_END_LINE_967 = 977;

	/**
     * <p>
     * Is {@code true} if this is AIX.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_AIX = system_utils_1_expr57_line_977;

    int PROBE_START_LINE_979 = 989;

	public static final boolean system_utils_1_expr58_line_989 = getOSMatchesName("HP-UX");

	int PROBE_END_LINE_979 = 989;

	/**
     * <p>
     * Is {@code true} if this is HP-UX.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_HP_UX = system_utils_1_expr58_line_989;

    int PROBE_START_LINE_991 = 1001;

	public static final boolean system_utils_1_expr59_line_1001 = getOSMatchesName("OS/400");

	int PROBE_END_LINE_991 = 1001;

	/**
     * <p>
     * Is {@code true} if this is IBM OS/400.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.3
     */
    public static final boolean IS_OS_400 = system_utils_1_expr59_line_1001;

    int PROBE_START_LINE_1003 = 1013;

	public static final boolean system_utils_1_expr60_line_1013 = getOSMatchesName("Irix");

	int PROBE_END_LINE_1003 = 1013;

	/**
     * <p>
     * Is {@code true} if this is Irix.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_IRIX = system_utils_1_expr60_line_1013;

    int PROBE_START_LINE_1015 = 1025;

	public static final boolean system_utils_1_expr62_line_1025 = getOSMatchesName("Linux");

	public static final boolean system_utils_1_expr63_line_1025 = getOSMatchesName("LINUX");

	public static final boolean system_utils_1_expr61_line_1025 = system_utils_1_expr62_line_1025
			|| system_utils_1_expr63_line_1025;

	int PROBE_END_LINE_1015 = 1025;

	/**
     * <p>
     * Is {@code true} if this is Linux.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_LINUX = system_utils_1_expr61_line_1025;

    int PROBE_START_LINE_1027 = 1037;

	public static final boolean system_utils_1_expr64_line_1037 = getOSMatchesName("Mac");

	int PROBE_END_LINE_1027 = 1037;

	/**
     * <p>
     * Is {@code true} if this is Mac.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_MAC = system_utils_1_expr64_line_1037;

    int PROBE_START_LINE_1039 = 1049;

	public static final boolean system_utils_1_expr65_line_1049 = getOSMatchesName("Mac OS X");

	int PROBE_END_LINE_1039 = 1049;

	/**
     * <p>
     * Is {@code true} if this is Mac.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_MAC_OSX = system_utils_1_expr65_line_1049;

    int PROBE_START_LINE_1051 = 1061;

	public static final boolean system_utils_1_expr66_line_1061 = getOSMatches("Mac OS X", "10.0");

	int PROBE_END_LINE_1051 = 1061;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Cheetah.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_CHEETAH = system_utils_1_expr66_line_1061;

    int PROBE_START_LINE_1063 = 1073;

	public static final boolean system_utils_1_expr67_line_1073 = getOSMatches("Mac OS X", "10.1");

	int PROBE_END_LINE_1063 = 1073;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Puma.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_PUMA = system_utils_1_expr67_line_1073;

    int PROBE_START_LINE_1075 = 1085;

	public static final boolean system_utils_1_expr68_line_1085 = getOSMatches("Mac OS X", "10.2");

	int PROBE_END_LINE_1075 = 1085;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Jaguar.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_JAGUAR = system_utils_1_expr68_line_1085;

    int PROBE_START_LINE_1087 = 1097;

	public static final boolean system_utils_1_expr69_line_1097 = getOSMatches("Mac OS X", "10.3");

	int PROBE_END_LINE_1087 = 1097;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Panther.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_PANTHER = system_utils_1_expr69_line_1097;

    int PROBE_START_LINE_1099 = 1109;

	public static final boolean system_utils_1_expr70_line_1109 = getOSMatches("Mac OS X", "10.4");

	int PROBE_END_LINE_1099 = 1109;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Tiger.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_TIGER = system_utils_1_expr70_line_1109;

    int PROBE_START_LINE_1111 = 1121;

	public static final boolean system_utils_1_expr71_line_1121 = getOSMatches("Mac OS X", "10.5");

	int PROBE_END_LINE_1111 = 1121;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Leopard.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_LEOPARD = system_utils_1_expr71_line_1121;

    int PROBE_START_LINE_1123 = 1133;

	public static final boolean system_utils_1_expr72_line_1133 = getOSMatches("Mac OS X", "10.6");

	int PROBE_END_LINE_1123 = 1133;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Snow Leopard.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_SNOW_LEOPARD = system_utils_1_expr72_line_1133;

    int PROBE_START_LINE_1135 = 1145;

	public static final boolean system_utils_1_expr73_line_1145 = getOSMatches("Mac OS X", "10.7");

	int PROBE_END_LINE_1135 = 1145;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Lion.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_LION = system_utils_1_expr73_line_1145;

    int PROBE_START_LINE_1147 = 1157;

	public static final boolean system_utils_1_expr74_line_1157 = getOSMatches("Mac OS X", "10.8");

	int PROBE_END_LINE_1147 = 1157;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Mountain Lion.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_MOUNTAIN_LION = system_utils_1_expr74_line_1157;

    int PROBE_START_LINE_1159 = 1169;

	public static final boolean system_utils_1_expr75_line_1169 = getOSMatches("Mac OS X", "10.9");

	int PROBE_END_LINE_1159 = 1169;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Mavericks.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_MAVERICKS = system_utils_1_expr75_line_1169;

    int PROBE_START_LINE_1171 = 1181;

	public static final boolean system_utils_1_expr76_line_1181 = getOSMatches("Mac OS X", "10.10");

	int PROBE_END_LINE_1171 = 1181;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X Yosemite.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_MAC_OSX_YOSEMITE = system_utils_1_expr76_line_1181;

    int PROBE_START_LINE_1183 = 1193;

	public static final boolean system_utils_1_expr77_line_1193 = getOSMatches("Mac OS X", "10.11");

	int PROBE_END_LINE_1183 = 1193;

	/**
     * <p>
     * Is {@code true} if this is Mac OS X El Capitan.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.5
     */
    public static final boolean IS_OS_MAC_OSX_EL_CAPITAN = system_utils_1_expr77_line_1193;

    int PROBE_START_LINE_1195 = 1205;

	public static final boolean system_utils_1_expr78_line_1205 = getOSMatchesName("FreeBSD");

	int PROBE_END_LINE_1195 = 1205;

	/**
     * <p>
     * Is {@code true} if this is FreeBSD.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.1
     */
    public static final boolean IS_OS_FREE_BSD = system_utils_1_expr78_line_1205;

    int PROBE_START_LINE_1207 = 1217;

	public static final boolean system_utils_1_expr79_line_1217 = getOSMatchesName("OpenBSD");

	int PROBE_END_LINE_1207 = 1217;

	/**
     * <p>
     * Is {@code true} if this is OpenBSD.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.1
     */
    public static final boolean IS_OS_OPEN_BSD = system_utils_1_expr79_line_1217;

    int PROBE_START_LINE_1219 = 1229;

	public static final boolean system_utils_1_expr80_line_1229 = getOSMatchesName("NetBSD");

	int PROBE_END_LINE_1219 = 1229;

	/**
     * <p>
     * Is {@code true} if this is NetBSD.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.1
     */
    public static final boolean IS_OS_NET_BSD = system_utils_1_expr80_line_1229;

    int PROBE_START_LINE_1231 = 1241;

	public static final boolean system_utils_1_expr81_line_1241 = getOSMatchesName("OS/2");

	int PROBE_END_LINE_1231 = 1241;

	/**
     * <p>
     * Is {@code true} if this is OS/2.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_OS2 = system_utils_1_expr81_line_1241;

    int PROBE_START_LINE_1243 = 1253;

	public static final boolean system_utils_1_expr82_line_1253 = getOSMatchesName("Solaris");

	int PROBE_END_LINE_1243 = 1253;

	/**
     * <p>
     * Is {@code true} if this is Solaris.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_SOLARIS = system_utils_1_expr82_line_1253;

    int PROBE_START_LINE_1255 = 1265;

	public static final boolean system_utils_1_expr83_line_1265 = getOSMatchesName("SunOS");

	int PROBE_END_LINE_1255 = 1265;

	/**
     * <p>
     * Is {@code true} if this is SunOS.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_SUN_OS = system_utils_1_expr83_line_1265;

    int PROBE_START_LINE_1267 = 1278;

	public static final boolean f_is_os_aix_208_line_1277 = IS_OS_AIX;

	public static final boolean f_is_os_hp_ux_209_line_1277 = IS_OS_HP_UX;

	public static final boolean f_is_os_irix_211_line_1277 = IS_OS_IRIX;

	public static final boolean f_is_os_linux_212_line_1277 = IS_OS_LINUX;

	public static final boolean f_is_os_mac_osx_214_line_1277 = IS_OS_MAC_OSX;

	public static final boolean system_utils_1_expr84_line_1277 = f_is_os_aix_208_line_1277
			|| f_is_os_hp_ux_209_line_1277 || f_is_os_irix_211_line_1277 || f_is_os_linux_212_line_1277
			|| f_is_os_mac_osx_214_line_1277 || IS_OS_SOLARIS || IS_OS_SUN_OS || IS_OS_FREE_BSD || IS_OS_OPEN_BSD
			|| IS_OS_NET_BSD;

	int PROBE_END_LINE_1267 = 1278;

	/**
     * <p>
     * Is {@code true} if this is a UNIX like system, as in any of AIX, HP-UX, Irix, Linux, MacOSX, Solaris or SUN OS.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.1
     */
    public static final boolean IS_OS_UNIX = system_utils_1_expr84_line_1277;

    int PROBE_START_LINE_1280 = 1290;

	public static final String f_os_name_windows_prefix_235_line_1290 = OS_NAME_WINDOWS_PREFIX;

	public static final boolean system_utils_1_expr85_line_1290 = getOSMatchesName(
			f_os_name_windows_prefix_235_line_1290);

	int PROBE_END_LINE_1280 = 1290;

	/**
     * <p>
     * Is {@code true} if this is Windows.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_WINDOWS = system_utils_1_expr85_line_1290;

    int PROBE_START_LINE_1292 = 1302;

	public static final String f_os_name_windows_prefix_235_line_1302 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr87_line_1302 = f_os_name_windows_prefix_235_line_1302 + " 2000";

	public static final boolean system_utils_1_expr86_line_1302 = getOSMatchesName(system_utils_1_expr87_line_1302);

	int PROBE_END_LINE_1292 = 1302;

	/**
     * <p>
     * Is {@code true} if this is Windows 2000.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_WINDOWS_2000 = system_utils_1_expr86_line_1302;

    int PROBE_START_LINE_1304 = 1314;

	public static final String f_os_name_windows_prefix_235_line_1314 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr89_line_1314 = f_os_name_windows_prefix_235_line_1314 + " 2003";

	public static final boolean system_utils_1_expr88_line_1314 = getOSMatchesName(system_utils_1_expr89_line_1314);

	int PROBE_END_LINE_1304 = 1314;

	/**
     * <p>
     * Is {@code true} if this is Windows 2003.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.1
     */
    public static final boolean IS_OS_WINDOWS_2003 = system_utils_1_expr88_line_1314;

    int PROBE_START_LINE_1316 = 1326;

	public static final String f_os_name_windows_prefix_235_line_1326 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr91_line_1326 = f_os_name_windows_prefix_235_line_1326
			+ " Server 2008";

	public static final boolean system_utils_1_expr90_line_1326 = getOSMatchesName(system_utils_1_expr91_line_1326);

	int PROBE_END_LINE_1316 = 1326;

	/**
     * <p>
     * Is {@code true} if this is Windows Server 2008.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.1
     */
    public static final boolean IS_OS_WINDOWS_2008 = system_utils_1_expr90_line_1326;

    int PROBE_START_LINE_1328 = 1338;

	public static final String f_os_name_windows_prefix_235_line_1338 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr93_line_1338 = f_os_name_windows_prefix_235_line_1338
			+ " Server 2012";

	public static final boolean system_utils_1_expr92_line_1338 = getOSMatchesName(system_utils_1_expr93_line_1338);

	int PROBE_END_LINE_1328 = 1338;

	/**
     * <p>
     * Is {@code true} if this is Windows Server 2012.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.4
     */
    public static final boolean IS_OS_WINDOWS_2012 = system_utils_1_expr92_line_1338;

    int PROBE_START_LINE_1340 = 1350;

	public static final String f_os_name_windows_prefix_235_line_1350 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr95_line_1350 = f_os_name_windows_prefix_235_line_1350 + " 95";

	public static final boolean system_utils_1_expr94_line_1350 = getOSMatchesName(system_utils_1_expr95_line_1350);

	int PROBE_END_LINE_1340 = 1350;

	/**
     * <p>
     * Is {@code true} if this is Windows 95.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_WINDOWS_95 = system_utils_1_expr94_line_1350;

    int PROBE_START_LINE_1352 = 1362;

	public static final String f_os_name_windows_prefix_235_line_1362 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr97_line_1362 = f_os_name_windows_prefix_235_line_1362 + " 98";

	public static final boolean system_utils_1_expr96_line_1362 = getOSMatchesName(system_utils_1_expr97_line_1362);

	int PROBE_END_LINE_1352 = 1362;

	/**
     * <p>
     * Is {@code true} if this is Windows 98.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_WINDOWS_98 = system_utils_1_expr96_line_1362;

    int PROBE_START_LINE_1364 = 1374;

	public static final String f_os_name_windows_prefix_235_line_1374 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr99_line_1374 = f_os_name_windows_prefix_235_line_1374 + " Me";

	public static final boolean system_utils_1_expr98_line_1374 = getOSMatchesName(system_utils_1_expr99_line_1374);

	int PROBE_END_LINE_1364 = 1374;

	/**
     * <p>
     * Is {@code true} if this is Windows ME.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_WINDOWS_ME = system_utils_1_expr98_line_1374;

    int PROBE_START_LINE_1376 = 1386;

	public static final String f_os_name_windows_prefix_235_line_1386 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr101_line_1386 = f_os_name_windows_prefix_235_line_1386 + " NT";

	public static final boolean system_utils_1_expr100_line_1386 = getOSMatchesName(system_utils_1_expr101_line_1386);

	int PROBE_END_LINE_1376 = 1386;

	/**
     * <p>
     * Is {@code true} if this is Windows NT.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_WINDOWS_NT = system_utils_1_expr100_line_1386;

    int PROBE_START_LINE_1388 = 1398;

	public static final String f_os_name_windows_prefix_235_line_1398 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr103_line_1398 = f_os_name_windows_prefix_235_line_1398 + " XP";

	public static final boolean system_utils_1_expr102_line_1398 = getOSMatchesName(system_utils_1_expr103_line_1398);

	int PROBE_END_LINE_1388 = 1398;

	/**
     * <p>
     * Is {@code true} if this is Windows XP.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.0
     */
    public static final boolean IS_OS_WINDOWS_XP = system_utils_1_expr102_line_1398;

    int PROBE_START_LINE_1401 = 1411;

	public static final String f_os_name_windows_prefix_235_line_1411 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr105_line_1411 = f_os_name_windows_prefix_235_line_1411 + " Vista";

	public static final boolean system_utils_1_expr104_line_1411 = getOSMatchesName(system_utils_1_expr105_line_1411);

	int PROBE_END_LINE_1401 = 1411;

	// -----------------------------------------------------------------------
    /**
     * <p>
     * Is {@code true} if this is Windows Vista.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 2.4
     */
    public static final boolean IS_OS_WINDOWS_VISTA = system_utils_1_expr104_line_1411;

    int PROBE_START_LINE_1413 = 1423;

	public static final String f_os_name_windows_prefix_235_line_1423 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr107_line_1423 = f_os_name_windows_prefix_235_line_1423 + " 7";

	public static final boolean system_utils_1_expr106_line_1423 = getOSMatchesName(system_utils_1_expr107_line_1423);

	int PROBE_END_LINE_1413 = 1423;

	/**
     * <p>
     * Is {@code true} if this is Windows 7.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.0
     */
    public static final boolean IS_OS_WINDOWS_7 = system_utils_1_expr106_line_1423;

    int PROBE_START_LINE_1425 = 1435;

	public static final String f_os_name_windows_prefix_235_line_1435 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr109_line_1435 = f_os_name_windows_prefix_235_line_1435 + " 8";

	public static final boolean system_utils_1_expr108_line_1435 = getOSMatchesName(system_utils_1_expr109_line_1435);

	int PROBE_END_LINE_1425 = 1435;

	/**
     * <p>
     * Is {@code true} if this is Windows 8.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.2
     */
    public static final boolean IS_OS_WINDOWS_8 = system_utils_1_expr108_line_1435;

    int PROBE_START_LINE_1437 = 1447;

	public static final String f_os_name_windows_prefix_235_line_1447 = OS_NAME_WINDOWS_PREFIX;

	public static final String system_utils_1_expr111_line_1447 = f_os_name_windows_prefix_235_line_1447 + " 10";

	public static final boolean system_utils_1_expr110_line_1447 = getOSMatchesName(system_utils_1_expr111_line_1447);

	int PROBE_END_LINE_1437 = 1447;

	/**
     * <p>
     * Is {@code true} if this is Windows 10.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.5
     */
    public static final boolean IS_OS_WINDOWS_10 = system_utils_1_expr110_line_1447;

    int PROBE_START_LINE_1449 = 1464;

	public static final boolean system_utils_1_expr112_line_1464 = getOSMatchesName("z/OS");

	int PROBE_END_LINE_1449 = 1464;

	/**
     * <p>
     * Is {@code true} if this is z/OS.
     * </p>
     * <p>
     * The field will return {@code false} if {@code OS_NAME} is {@code null}.
     * </p>
     *
     * @since 3.5
     */
    // Values on a z/OS system I tested (Gary Gregory - 2016-03-12)
    // os.arch = s390x
    // os.encoding = ISO8859_1
    // os.name = z/OS
    // os.version = 02.02.00
    public static final boolean IS_OS_ZOS = system_utils_1_expr112_line_1464;

    /**
     * <p>
     * Gets the Java home directory as a {@code File}.
     * </p>
     *
     * @return a directory
     * @throws SecurityException if a security manager exists and its {@code checkPropertyAccess} method doesn't allow
     * access to the specified system property.
     * @see System#getProperty(String)
     * @since 2.1
     */
    public static File getJavaHome() {
        return new File(System.getProperty(JAVA_HOME_KEY));
    }

    /**
     * <p>
     * Gets the Java IO temporary directory as a {@code File}.
     * </p>
     *
     * @return a directory
     * @throws SecurityException if a security manager exists and its {@code checkPropertyAccess} method doesn't allow
     * access to the specified system property.
     * @see System#getProperty(String)
     * @since 2.1
     */
    public static File getJavaIoTmpDir() {
        return new File(System.getProperty(JAVA_IO_TMPDIR_KEY));
    }

    /**
     * <p>
     * Decides if the Java version matches.
     * </p>
     *
     * @param versionPrefix the prefix for the java version
     * @return true if matches, or false if not or can't determine
     */
    private static boolean getJavaVersionMatches(final String versionPrefix) {
        int PROBE_START_LINE_1505 = 1505;
		String f_java_specification_version_173_line_1505 = JAVA_SPECIFICATION_VERSION;
		String p_version_prefix_250_line_1505 = versionPrefix;
		boolean system_utils_1_expr113_line_1505 = isJavaVersionMatch(f_java_specification_version_173_line_1505,
				p_version_prefix_250_line_1505);
		int PROBE_END_LINE_1505 = 1505;
		return system_utils_1_expr113_line_1505;
    }

    /**
     * Decides if the operating system matches.
     *
     * @param osNamePrefix the prefix for the os name
     * @param osVersionPrefix the prefix for the version
     * @return true if matches, or false if not or can't determine
     */
    private static boolean getOSMatches(final String osNamePrefix, final String osVersionPrefix) {
        int PROBE_START_LINE_1516 = 1516;
		String f_os_name_188_line_1516 = OS_NAME;
		String f_os_version_189_line_1516 = OS_VERSION;
		String p_os_name_prefix_251_line_1516 = osNamePrefix;
		String p_os_version_prefix_252_line_1516 = osVersionPrefix;
		boolean system_utils_1_expr114_line_1516 = isOSMatch(f_os_name_188_line_1516, f_os_version_189_line_1516,
				p_os_name_prefix_251_line_1516, p_os_version_prefix_252_line_1516);
		int PROBE_END_LINE_1516 = 1516;
		return system_utils_1_expr114_line_1516;
    }

    /**
     * Decides if the operating system matches.
     *
     * @param osNamePrefix the prefix for the os name
     * @return true if matches, or false if not or can't determine
     */
    private static boolean getOSMatchesName(final String osNamePrefix) {
        int PROBE_START_LINE_1526 = 1526;
		String f_os_name_188_line_1526 = OS_NAME;
		String p_os_name_prefix_253_line_1526 = osNamePrefix;
		boolean system_utils_1_expr115_line_1526 = isOSNameMatch(f_os_name_188_line_1526,
				p_os_name_prefix_253_line_1526);
		int PROBE_END_LINE_1526 = 1526;
		return system_utils_1_expr115_line_1526;
    }

    // -----------------------------------------------------------------------
    /**
     * <p>
     * Gets a System property, defaulting to {@code null} if the property cannot be read.
     * </p>
     * <p>
     * If a {@code SecurityException} is caught, the return value is {@code null} and a message is written to
     * {@code System.err}.
     * </p>
     *
     * @param property the system property name
     * @return the system property value or {@code null} if a security problem occurs
     */
    private static String getSystemProperty(final String property) {
        try {
            int PROBE_START_LINE_1544 = 1544;
			String p_property_254_line_1544 = property;
			String system_utils_1_expr116_line_1544 = System.getProperty(p_property_254_line_1544);
			int PROBE_END_LINE_1544 = 1544;
			return system_utils_1_expr116_line_1544;
        } catch (final SecurityException ex) {
            // we are not allowed to look at this property
            System.err.println("Caught a SecurityException reading the system property '" + property
                    + "'; the SystemUtils property value will default to null.");
            return null;
        }
    }

    /**
     * <p>
     * Gets the user directory as a {@code File}.
     * </p>
     *
     * @return a directory
     * @throws SecurityException if a security manager exists and its {@code checkPropertyAccess} method doesn't allow
     * access to the specified system property.
     * @see System#getProperty(String)
     * @since 2.1
     */
    public static File getUserDir() {
        return new File(System.getProperty(USER_DIR_KEY));
    }

    /**
     * <p>
     * Gets the user home directory as a {@code File}.
     * </p>
     *
     * @return a directory
     * @throws SecurityException if a security manager exists and its {@code checkPropertyAccess} method doesn't allow
     * access to the specified system property.
     * @see System#getProperty(String)
     * @since 2.1
     */
    public static File getUserHome() {
        return new File(System.getProperty(USER_HOME_KEY));
    }

    /**
     * Returns whether the {@link #JAVA_AWT_HEADLESS} value is {@code true}.
     *
     * @return {@code true} if {@code JAVA_AWT_HEADLESS} is {@code "true"}, {@code false} otherwise.
     * @see #JAVA_AWT_HEADLESS
     * @since 2.1
     * @since Java 1.4
     */
    public static boolean isJavaAwtHeadless() {
        return JAVA_AWT_HEADLESS != null ? JAVA_AWT_HEADLESS.equals(Boolean.TRUE.toString()) : false;
    }

    /**
     * <p>
     * Is the Java version at least the requested version.
     * </p>
     * <p>
     * Example input:
     * </p>
     * <ul>
     * <li>{@code 1.2f} to test for Java 1.2</li>
     * <li>{@code 1.31f} to test for Java 1.3.1</li>
     * </ul>
     *
     * @param requiredVersion the required version, for example 1.31f
     * @return {@code true} if the actual version is equal or greater than the required version
     */
    public static boolean isJavaVersionAtLeast(final JavaVersion requiredVersion) {
        int PROBE_START_LINE_1611 = 1611;
		org.apache.commons.lang3.JavaVersion f_java_specification_version_as_enum_174_line_1611 = JAVA_SPECIFICATION_VERSION_AS_ENUM;
		org.apache.commons.lang3.JavaVersion p_required_version_255_line_1611 = requiredVersion;
		boolean system_utils_1_expr117_line_1611 = f_java_specification_version_as_enum_174_line_1611
				.atLeast(p_required_version_255_line_1611);
		int PROBE_END_LINE_1611 = 1611;
		return system_utils_1_expr117_line_1611;
    }

    /**
     * <p>
     * Decides if the Java version matches.
     * </p>
     * <p>
     * This method is package private instead of private to support unit test invocation.
     * </p>
     *
     * @param version the actual Java version
     * @param versionPrefix the prefix for the expected Java version
     * @return true if matches, or false if not or can't determine
     */
    static boolean isJavaVersionMatch(final String version, final String versionPrefix) {
        int PROBE_START_LINE_1627 = 1629;
		String p_version_256_line_1627 = version;
		boolean system_utils_1_expr118_line_1627 = p_version_256_line_1627 == null;
		int PROBE_END_LINE_1627 = 1629;
		if (system_utils_1_expr118_line_1627) {
            return false;
        }
        int PROBE_START_LINE_1630 = 1630;
		String p_version_256_line_1630 = version;
		String p_version_prefix_257_line_1630 = versionPrefix;
		boolean system_utils_1_expr119_line_1630 = p_version_256_line_1630.startsWith(p_version_prefix_257_line_1630);
		int PROBE_END_LINE_1630 = 1630;
		return system_utils_1_expr119_line_1630;
    }

    /**
     * Decides if the operating system matches.
     * <p>
     * This method is package private instead of private to support unit test invocation.
     * </p>
     *
     * @param osName the actual OS name
     * @param osVersion the actual OS version
     * @param osNamePrefix the prefix for the expected OS name
     * @param osVersionPrefix the prefix for the expected OS version
     * @return true if matches, or false if not or can't determine
     */
    static boolean isOSMatch(final String osName, final String osVersion, final String osNamePrefix, final String osVersionPrefix) {
        int PROBE_START_LINE_1646 = 1648;
		String p_os_name_258_line_1646 = osName;
		boolean system_utils_1_expr121_line_1646 = p_os_name_258_line_1646 == null;
		boolean system_utils_1_expr122_line_1646 = false;
		if (!system_utils_1_expr121_line_1646) {
			String p_os_version_259_line_1646 = osVersion;
			system_utils_1_expr122_line_1646 = p_os_version_259_line_1646 == null;
		}
		boolean system_utils_1_expr120_line_1646 = system_utils_1_expr121_line_1646 || system_utils_1_expr122_line_1646;
		int PROBE_END_LINE_1646 = 1648;
		if (system_utils_1_expr120_line_1646) {
            return false;
        }
        int PROBE_START_LINE_1649 = 1649;
		String p_os_name_258_line_1649 = osName;
		String p_os_name_prefix_260_line_1649 = osNamePrefix;
		boolean system_utils_1_expr124_line_1649 = isOSNameMatch(p_os_name_258_line_1649,
				p_os_name_prefix_260_line_1649);
		boolean system_utils_1_expr125_line_1649 = true;
		if (system_utils_1_expr124_line_1649) {
			String p_os_version_259_line_1649 = osVersion;
			String p_os_version_prefix_261_line_1649 = osVersionPrefix;
			system_utils_1_expr125_line_1649 = isOSVersionMatch(p_os_version_259_line_1649,
					p_os_version_prefix_261_line_1649);
		}
		boolean system_utils_1_expr123_line_1649 = system_utils_1_expr124_line_1649 && system_utils_1_expr125_line_1649;
		int PROBE_END_LINE_1649 = 1649;
		return system_utils_1_expr123_line_1649;
    }

    /**
     * Decides if the operating system matches.
     * <p>
     * This method is package private instead of private to support unit test invocation.
     * </p>
     *
     * @param osName the actual OS name
     * @param osNamePrefix the prefix for the expected OS name
     * @return true if matches, or false if not or can't determine
     */
    static boolean isOSNameMatch(final String osName, final String osNamePrefix) {
        int PROBE_START_LINE_1663 = 1665;
		String p_os_name_262_line_1663 = osName;
		boolean system_utils_1_expr126_line_1663 = p_os_name_262_line_1663 == null;
		int PROBE_END_LINE_1663 = 1665;
		if (system_utils_1_expr126_line_1663) {
            return false;
        }
        int PROBE_START_LINE_1666 = 1666;
		String p_os_name_262_line_1666 = osName;
		String p_os_name_prefix_263_line_1666 = osNamePrefix;
		boolean system_utils_1_expr127_line_1666 = p_os_name_262_line_1666.startsWith(p_os_name_prefix_263_line_1666);
		int PROBE_END_LINE_1666 = 1666;
		return system_utils_1_expr127_line_1666;
    }

    /**
     * Decides if the operating system version matches.
     * <p>
     * This method is package private instead of private to support unit test invocation.
     * </p>
     *
     * @param osVersion the actual OS version
     * @param osVersionPrefix the prefix for the expected OS version
     * @return true if matches, or false if not or can't determine
     */
    static boolean isOSVersionMatch(final String osVersion, final String osVersionPrefix) {
        if (StringUtils.isEmpty(osVersion)) {
            return false;
        }
        // Compare parts of the version string instead of using String.startsWith(String) because otherwise
        // osVersionPrefix 10.1 would also match osVersion 10.10
        String[] versionPrefixParts = osVersionPrefix.split("\\.");
        String[] versionParts = osVersion.split("\\.");
        for (int i = 0; i < Math.min(versionPrefixParts.length, versionParts.length); i++) {
            if (!versionPrefixParts[i].equals(versionParts[i])) {
                return false;
            }
        }
        return true;
    }

    // -----------------------------------------------------------------------
    /**
     * <p>
     * SystemUtils instances should NOT be constructed in standard programming. Instead, the class should be used as
     * {@code SystemUtils.FILE_SEPARATOR}.
     * </p>
     * <p>
     * This constructor is public to permit tools that require a JavaBean instance to operate.
     * </p>
     */
    public SystemUtils() {
        super();
    }

}
