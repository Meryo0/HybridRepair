package org.jsoup.helper;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Implementation of ArrayList that watches out for changes to the contents.
 */
public abstract class ChangeNotifyingArrayList<E> extends ArrayList<E> {
    public ChangeNotifyingArrayList(int initialCapacity) {
        super(initialCapacity);
    }

    public abstract void onContentsChanged();

    @Override
    public E set(int index, E element) {
        onContentsChanged();
        int PROBE_START_LINE_19 = 19;
		int p_index_37_line_19 = index;
		E p_element_38_line_19 = element;
		E change_notifying_array_list_1_expr3_line_19 = super.set(p_index_37_line_19, p_element_38_line_19);
		int PROBE_END_LINE_19 = 19;
		return change_notifying_array_list_1_expr3_line_19;
    }

    @Override
    public boolean add(E e) {
        onContentsChanged();
        int PROBE_START_LINE_25 = 25;
		E p_e_39_line_25 = e;
		boolean change_notifying_array_list_1_expr5_line_25 = super.add(p_e_39_line_25);
		int PROBE_END_LINE_25 = 25;
		return change_notifying_array_list_1_expr5_line_25;
    }

    @Override
    public void add(int index, E element) {
        onContentsChanged();
        super.add(index, element);
    }

    @Override
    public E remove(int index) {
        onContentsChanged();
        int PROBE_START_LINE_37 = 37;
		int p_index_42_line_37 = index;
		E change_notifying_array_list_1_expr7_line_37 = super.remove(p_index_42_line_37);
		int PROBE_END_LINE_37 = 37;
		return change_notifying_array_list_1_expr7_line_37;
    }

    @Override
    public boolean remove(Object o) {
        onContentsChanged();
        return super.remove(o);
    }

    @Override
    public void clear() {
        onContentsChanged();
        super.clear();
    }

    @Override
    public boolean addAll(Collection<? extends E> c) {
        onContentsChanged();
        int PROBE_START_LINE_55 = 55;
		Collection<? extends E> p_c_44_line_55 = c;
		boolean change_notifying_array_list_1_expr9_line_55 = super.addAll(p_c_44_line_55);
		int PROBE_END_LINE_55 = 55;
		return change_notifying_array_list_1_expr9_line_55;
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> c) {
        onContentsChanged();
        int PROBE_START_LINE_61 = 61;
		int p_index_45_line_61 = index;
		Collection<? extends E> p_c_46_line_61 = c;
		boolean change_notifying_array_list_1_expr11_line_61 = super.addAll(p_index_45_line_61, p_c_46_line_61);
		int PROBE_END_LINE_61 = 61;
		return change_notifying_array_list_1_expr11_line_61;
    }

    @Override
    protected void removeRange(int fromIndex, int toIndex) {
        onContentsChanged();
        super.removeRange(fromIndex, toIndex);
    }

    @Override
    public boolean removeAll(Collection<?> c) {
        onContentsChanged();
        return super.removeAll(c);
    }

    @Override
    public boolean retainAll(Collection<?> c) {
        onContentsChanged();
        return super.retainAll(c);
    }

}
