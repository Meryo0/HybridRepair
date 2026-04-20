/* ===========================================================
 * JFreeChart : a free chart library for the Java(tm) platform
 * ===========================================================
 *
 * (C) Copyright 2000-2007, by Object Refinery Limited and Contributors.
 *
 * Project Info:  http://www.jfree.org/jfreechart/index.html
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 *
 * [Java is a trademark or registered trademark of Sun Microsystems, Inc.
 * in the United States and other countries.]
 *
 * -----------------------
 * AbstractObjectList.java
 * -----------------------
 * (C)opyright 2003-2007, by Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   Bill Kelemen;
 *                   Nicolas Brodu;
 *
 * Changes
 * -------
 * 13-Aug-2003 : Version 1, based on ObjectList (DG);
 * 24-Aug-2003 : Fixed size (BK);
 * 15-Sep-2003 : Fix serialization for subclasses (ShapeList, PaintList) (NB);
 * 20-Dec-2007 : Implement default hashCode() (DG);
 *
 */

package org.jfree.chart.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;

/**
 * A list of objects that can grow as required.
 */
public class AbstractObjectList implements Cloneable, Serializable {

    /** For serialization. */
    private static final long serialVersionUID = 7789833772597351595L;

    /** The default initial capacity of the list. */
    public static final int DEFAULT_INITIAL_CAPACITY = 8;

    /** Storage for the objects. */
    private transient Object[] objects;

    /** The current list size. */
    private int size = 0;

    int PROBE_START_LINE_70 = 71;

	private int f_default_initial_capacity_3201_line_71 = DEFAULT_INITIAL_CAPACITY;

	int PROBE_END_LINE_70 = 71;

	/** The default increment. */
    private int increment = f_default_initial_capacity_3201_line_71;

    /**
     * Creates a new list with the default initial capacity.
     */
    protected AbstractObjectList() {
        this(DEFAULT_INITIAL_CAPACITY);
    }

    /**
     * Creates a new list.
     *
     * @param initialCapacity  the initial capacity.
     */
    protected AbstractObjectList(int initialCapacity) {
        this (initialCapacity, initialCapacity);
    }

    /**
     * Creates a new list.
     *
     * @param initialCapacity  the initial capacity.
     * @param increment  the increment.
     */
    protected AbstractObjectList(int initialCapacity, int increment) {
        int PROBE_START_LINE_96 = 96;
		int p_initial_capacity_3203_line_96 = initialCapacity;
		int PROBE_END_LINE_96 = 96;
		this.objects = new Object[p_initial_capacity_3203_line_96];
        int PROBE_START_LINE_97 = 97;
		int p_increment_3204_line_97 = increment;
		int PROBE_END_LINE_97 = 97;
		this.increment = p_increment_3204_line_97;
    }

    /**
     * Returns the object at the specified index, if there is one, or
     * <code>null</code>.
     *
     * @param index  the object index.
     *
     * @return The object or <code>null</code>.
     */
    protected Object get(int index) {
        Object result = null;
        int PROBE_START_LINE_110 = 112;
		int p_index_3206_line_110 = index;
		boolean abstract_object_list_1_expr11_line_110 = p_index_3206_line_110 >= 0;
		boolean abstract_object_list_1_expr12_line_110 = true;
		if (abstract_object_list_1_expr11_line_110) {
			int p_index_3206_line_110_v1 = index;
			int f_size_3199_line_110 = this.size;
			abstract_object_list_1_expr12_line_110 = p_index_3206_line_110_v1 < f_size_3199_line_110;
		}
		boolean abstract_object_list_1_expr10_line_110 = abstract_object_list_1_expr11_line_110
				&& abstract_object_list_1_expr12_line_110;
		int PROBE_END_LINE_110 = 112;
		if (abstract_object_list_1_expr10_line_110) {
            int PROBE_START_LINE_111 = 111;
			Object[] f_objects_3205_line_111 = this.objects;
			int p_index_3206_line_111 = index;
			Object abstract_object_list_1_expr16_line_111 = f_objects_3205_line_111[p_index_3206_line_111];
			int PROBE_END_LINE_111 = 111;
			result = abstract_object_list_1_expr16_line_111;
        }
        int PROBE_START_LINE_113 = 113;
		Object v_result_3207_line_113 = result;
		int PROBE_END_LINE_113 = 113;
		return v_result_3207_line_113;
    }

    /**
     * Sets an object reference (overwriting any existing object).
     *
     * @param index  the object index.
     * @param object  the object (<code>null</code> permitted).
     */
    protected void set(int index, Object object) {
        int PROBE_START_LINE_123 = 125;
		int p_index_3208_line_123 = index;
		boolean abstract_object_list_1_expr19_line_123 = p_index_3208_line_123 < 0;
		int PROBE_END_LINE_123 = 125;
		if (abstract_object_list_1_expr19_line_123) {
            throw new IllegalArgumentException("Requires index >= 0.");
        }
        int PROBE_START_LINE_126 = 130;
		int p_index_3208_line_126 = index;
		Object[] f_objects_3205_line_126 = this.objects;
		int abstract_object_list_1_expr21_line_126 = f_objects_3205_line_126.length;
		boolean abstract_object_list_1_expr20_line_126 = p_index_3208_line_126 >= abstract_object_list_1_expr21_line_126;
		int PROBE_END_LINE_126 = 130;
		if (abstract_object_list_1_expr20_line_126) {
            Object[] enlarged = new Object[index + this.increment];
            System.arraycopy(this.objects, 0, enlarged, 0, this.objects.length);
            this.objects = enlarged;
        }
        int PROBE_START_LINE_131 = 131;
		Object[] f_objects_3205_line_131 = this.objects;
		int p_index_3208_line_131 = index;
		Object p_object_3209_line_131 = object;
		int PROBE_END_LINE_131 = 131;
		f_objects_3205_line_131[p_index_3208_line_131] = p_object_3209_line_131;
        int PROBE_START_LINE_132 = 132;
		int f_size_3199_line_132 = this.size;
		int p_index_3208_line_132 = index;
		int abstract_object_list_1_expr33_line_132 = p_index_3208_line_132 + 1;
		int abstract_object_list_1_expr30_line_132 = Math.max(f_size_3199_line_132,
				abstract_object_list_1_expr33_line_132);
		int PROBE_END_LINE_132 = 132;
		this.size = abstract_object_list_1_expr30_line_132;
    }

    /**
     * Clears the list.
     */
    public void clear() {
        int PROBE_START_LINE_139 = 139;
		Object[] f_objects_3205_line_139 = this.objects;
		int PROBE_END_LINE_139 = 139;
		Arrays.fill(f_objects_3205_line_139, null);
        this.size = 0;
    }

    /**
     * Returns the size of the list.
     *
     * @return The size of the list.
     */
    public int size() {
        int PROBE_START_LINE_149 = 149;
		int f_size_3199_line_149 = this.size;
		int PROBE_END_LINE_149 = 149;
		return f_size_3199_line_149;
    }

    /**
     * Returns the index of the specified object, or -1 if the object is not in
     * the list.
     *
     * @param object  the object.
     *
     * @return The index or -1.
     */
    protected int indexOf(Object object) {
        for (int index = 0; true; index++) {
            int PROBE_START_LINE_162 = 164;
			int v_index_3212_line_161 = index;
			int f_size_3199_line_161 = this.size;
			boolean abstract_object_list_1_expr44_line_161 = v_index_3212_line_161 < f_size_3199_line_161;
			if (!(abstract_object_list_1_expr44_line_161)) {
				break;
			}
			Object[] f_objects_3205_line_162 = this.objects;
			int v_index_3212_line_162 = index;
			Object abstract_object_list_1_expr49_line_162 = f_objects_3205_line_162[v_index_3212_line_162];
			Object p_object_3211_line_162 = object;
			boolean abstract_object_list_1_expr48_line_162 = abstract_object_list_1_expr49_line_162 == p_object_3211_line_162;
			int PROBE_END_LINE_162 = 164;
			if (abstract_object_list_1_expr48_line_162) {
                int PROBE_START_LINE_163 = 163;
				int v_index_3212_line_163 = index;
				int abstract_object_list_1_expr52_line_163 = (v_index_3212_line_163);
				int PROBE_END_LINE_163 = 163;
				return abstract_object_list_1_expr52_line_163;
            }
        }
        int PROBE_START_LINE_166 = 166;
		int abstract_object_list_1_expr53_line_166 = -1;
		int PROBE_END_LINE_166 = 166;
		return abstract_object_list_1_expr53_line_166;
    }

    /**
     * Tests this list for equality with another object.
     *
     * @param obj  the object to test.
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {

        if (obj == null) {
            return false;
        }

        if (obj == this) {
            return true;
        }

        if (!(obj instanceof AbstractObjectList)) {
            return false;
        }

        AbstractObjectList other = (AbstractObjectList) obj;
        int listSize = size();
        for (int i = 0; i < listSize; i++) {
           if (!ObjectUtilities.equal(get(i), other.get(i))) {
               return false;
           }
        }
        return true;
    }

    /**
     * Returns a hash code value for the object.
     *
     * @return The hashcode.
     */
    public int hashCode() {
        int result = 127;
        int size = size();
        result = HashUtilities.hashCode(result, size());
        // for efficiency, we just use the first, last and middle items to
        // compute a hashCode...
        if (size > 0) {
            result = HashUtilities.hashCode(result, this.objects[0]);
            if (size > 1) {
                result = HashUtilities.hashCode(result, this.objects[size - 1]);
                if (size > 2) {
                    result = HashUtilities.hashCode(result,
                            this.objects[size / 2]);
                }
            }
        }
        return result;
    }

    /**
     * Clones the list of objects.  The objects in the list are not cloned, so
     * this is method makes a 'shallow' copy of the list.
     *
     * @return A clone.
     *
     * @throws CloneNotSupportedException if an item in the list does not
     *         support cloning.
     */
    public Object clone() throws CloneNotSupportedException {

        AbstractObjectList clone = (AbstractObjectList) super.clone();
        if (this.objects != null) {
            clone.objects = new Object[this.objects.length];
            System.arraycopy(this.objects, 0, clone.objects, 0,
                    this.objects.length);
        }
        return clone;

    }

    /**
     * Provides serialization support.
     *
     * @param stream  the output stream.
     *
     * @throws IOException  if there is an I/O error.
     */
    private void writeObject(ObjectOutputStream stream)
            throws IOException {

        stream.defaultWriteObject();
        int count = size();
        stream.writeInt(count);
        for (int i = 0; i < count; i++) {
            final Object object = get(i);
            if (object != null && object instanceof Serializable) {
                stream.writeInt(i);
                stream.writeObject(object);
            }
            else {
                stream.writeInt(-1);
            }
        }

    }

    /**
     * Provides serialization support.
     *
     * @param stream  the input stream.
     *
     * @throws IOException  if there is an I/O error.
     * @throws ClassNotFoundException  if there is a classpath problem.
     */
    private void readObject(ObjectInputStream stream)
            throws IOException, ClassNotFoundException {

        stream.defaultReadObject();
        this.objects = new Object[this.size];
        int count = stream.readInt();
        for (int i = 0; i < count; i++) {
            int index = stream.readInt();
            if (index != -1) {
                set(index, stream.readObject());
            }
        }

    }

}
