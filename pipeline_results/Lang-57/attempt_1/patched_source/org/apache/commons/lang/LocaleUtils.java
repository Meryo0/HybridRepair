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
package org.apache.commons.lang;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Collections;
import java.util.Set;

public class LocaleUtils {
    private static final Set<Locale> cAvailableLocaleSet = 
        Collections.unmodifiableSet(new HashSet<>(availableLocaleList()));

    public static boolean isAvailableLocale(Locale locale) {
        if (locale == null) {
            return false; // Null locale is not considered available
        }
        return cAvailableLocaleSet.contains(locale);
    }
}
