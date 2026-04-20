/*
 * Copyright (c) 2007 Mockito contributors
 * This program is made available under the terms of the MIT License.
 */
package org.mockito.internal.verification;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import org.mockito.internal.invocation.Invocation;
import org.mockito.internal.util.ListUtil;
import org.mockito.internal.util.ListUtil.Filter;


public class RegisteredInvocations {

    int PROBE_START_LINE_18 = 18;

	private final List<org.mockito.internal.invocation.Invocation> registered_invocations_1_expr1_line_18 = Collections
			.synchronizedList(new LinkedList<Invocation>());

	int PROBE_END_LINE_18 = 18;

	private final List<Invocation> invocations = registered_invocations_1_expr1_line_18;
    
    public void add(Invocation invocation) {
        invocations.add(invocation);
    }

    public void removeLast() {
        invocations.remove(invocations.size()-1);
    }

    public List<Invocation> getAll() {
        return ListUtil.filter(new LinkedList<Invocation>(invocations), new RemoveToString());
    }
    
    private static class RemoveToString implements Filter<Invocation> {
        public boolean isOut(Invocation invocation) {
            return Invocation.isToString(invocation);
        }
    }
}