/*
 * Copyright 2013 The Closure Compiler Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.javascript.jscomp;

/**
 * Records whether the code has changed since the last reset.
 * @author nicksantos@google.com (Nick Santos)
 */
final class RecentChange implements CodeChangeHandler {
  private boolean hasChanged = false;

  @Override
  public void reportChange() {
    hasChanged = true;
  }

  public boolean hasCodeChanged() {
    int PROBE_START_LINE_32 = 32;
	boolean f_has_changed_2678_line_32 = hasChanged;
	int PROBE_END_LINE_32 = 32;
	return f_has_changed_2678_line_32;
  }

  public void reset() {
    hasChanged = false;
  }
}
