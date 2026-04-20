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
		com.fasterxml.jackson.databind.type.ClassStack p_parent_5331_line_25 = parent;
		int PROBE_END_LINE_25 = 25;
		_parent = p_parent_5331_line_25;
        int PROBE_START_LINE_26 = 26;
		Class<?> p_curr_5332_line_26 = curr;
		int PROBE_END_LINE_26 = 26;
		_current = p_curr_5332_line_26;
    }

    /**
     * @return New stack frame, if addition is ok; null if not
     */
    public ClassStack child(Class<?> cls) {
        int PROBE_START_LINE_33 = 33;
		Class<?> p_cls_5335_line_33 = cls;
		int PROBE_END_LINE_33 = 33;
		return new ClassStack(this, p_cls_5335_line_33);
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
		ArrayList<com.fasterxml.jackson.databind.type.ResolvedRecursiveType> f__self_refs_5338_line_55 = _selfRefs;
		boolean class_stack_1_expr6_line_55 = f__self_refs_5338_line_55 != null;
		int PROBE_END_LINE_55 = 59;
		if (class_stack_1_expr6_line_55) {
            for (ResolvedRecursiveType ref : _selfRefs) {
                ref.setReference(resolved);
            }
        }
    }

    public ClassStack find(Class<?> cls)
    {
        int PROBE_START_LINE_64 = 64;
		Class<?> f__current_5334_line_64 = _current;
		Class<?> p_cls_5339_line_64 = cls;
		boolean class_stack_1_expr7_line_64 = f__current_5334_line_64 == p_cls_5339_line_64;
		if (class_stack_1_expr7_line_64) return this;
        boolean FOR_STMT_TOGGLE_LINE_65 = false;
		int PROBE_END_LINE_64 = 64;
		for (ClassStack curr = null; true;) {
            int PROBE_START_LINE_66 = 68;
			if (!FOR_STMT_TOGGLE_LINE_65) {
				FOR_STMT_TOGGLE_LINE_65 = true;
				ClassStack f__parent_5333_line_65 = _parent;
				curr = f__parent_5333_line_65;
			} else {
				if (FOR_STMT_TOGGLE_LINE_65) {
					com.fasterxml.jackson.databind.type.ClassStack v_curr_5340_line_65_v1 = curr;
					com.fasterxml.jackson.databind.type.ClassStack q__parent_176_line_65 = v_curr_5340_line_65_v1._parent;
					curr = q__parent_176_line_65;
				} else {
					FOR_STMT_TOGGLE_LINE_65 = true;
				}
			}
			com.fasterxml.jackson.databind.type.ClassStack v_curr_5340_line_65 = curr;
			boolean class_stack_1_expr10_line_65 = v_curr_5340_line_65 != null;
			if (!(class_stack_1_expr10_line_65)) {
				break;
			}
			com.fasterxml.jackson.databind.type.ClassStack v_curr_5340_line_66 = curr;
			Class<?> q__current_177_line_66 = v_curr_5340_line_66._current;
			Class<?> p_cls_5339_line_66 = cls;
			boolean class_stack_1_expr12_line_66 = q__current_177_line_66 == p_cls_5339_line_66;
			int PROBE_END_LINE_66 = 68;
			if (class_stack_1_expr12_line_66) {
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
