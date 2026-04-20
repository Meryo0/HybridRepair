package com.fasterxml.jackson.databind.type;

import java.util.ArrayList;

import com.fasterxml.jackson.databind.JavaType;

/**
 * Simple helper class used to keep track of 'call stack' for classes being referenced
 * (as well as unbound variables)
 *
 * @since 2.7
 */
public final class ClassStack
{
    protected final ClassStack _parent;
    protected final Class<?> _current;

    private ArrayList<ResolvedRecursiveType> _selfRefs;

    public ClassStack(Class<?> rootType) {
        this(null, rootType);
    }

    private ClassStack(ClassStack parent, Class<?> curr) {
        int PROBE_START_LINE_25 = 25;
		com.fasterxml.jackson.databind.type.ClassStack p_parent_2869_line_25 = parent;
		int PROBE_END_LINE_25 = 25;
		_parent = p_parent_2869_line_25;
        int PROBE_START_LINE_26 = 26;
		Class<?> p_curr_2870_line_26 = curr;
		int PROBE_END_LINE_26 = 26;
		_current = p_curr_2870_line_26;
    }

    /**
     * @return New stack frame, if addition is ok; null if not
     */
    public ClassStack child(Class<?> cls) {
        return new ClassStack(this, cls);
    }

    /**
     * Method called to indicate that there is a self-reference from
     * deeper down in stack pointing into type this stack frame represents.
     */
    public void addSelfReference(ResolvedRecursiveType ref)
    {
        if (_selfRefs == null) {
            _selfRefs = new ArrayList<ResolvedRecursiveType>();
        }
        _selfRefs.add(ref);
    }

    /**
     * Method called when type that this stack frame represents is
     * fully resolved, allowing self-references to be completed
     * (if there are any)
     */
    public void resolveSelfReferences(JavaType resolved)
    {
        int PROBE_START_LINE_55 = 59;
		ArrayList<com.fasterxml.jackson.databind.type.ResolvedRecursiveType> f__self_refs_2876_line_55 = _selfRefs;
		boolean class_stack_1_expr4_line_55 = f__self_refs_2876_line_55 != null;
		int PROBE_END_LINE_55 = 59;
		if (class_stack_1_expr4_line_55) {
            for (ResolvedRecursiveType ref : _selfRefs) {
                ref.setReference(resolved);
            }
        }
    }

    public ClassStack find(Class<?> cls)
    {
        if (_current == cls) return this;
        for (ClassStack curr = _parent; curr != null; curr = curr._parent) {
            if (curr._current == cls) {
                return curr;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[ClassStack (self-refs: ")
            .append((_selfRefs == null) ? "0" : String.valueOf(_selfRefs.size()))
            .append(')')
                    ;
        for (ClassStack curr = this; curr != null; curr = curr._parent) {
            sb.append(' ').append(curr._current.getName());
        }
        sb.append(']');
        return sb.toString();
    }
}
