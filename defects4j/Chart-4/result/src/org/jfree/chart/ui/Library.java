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
 * ------------
 * Library.java
 * ------------
 * (C) Copyright 2002-2007, by Object Refinery Limited.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 21-Feb-2002 : Version 1 (DG);
 * 25-Mar-2002 : Added a new constructor (DG);
 * 02-Nov-2005 : Minor API doc updates (DG);
 * 21-Jun-2007 : Copied from JCommon (DG);
 *
 */

package org.jfree.chart.ui;

/**
 * A simple class representing a library in a software project.
 */
public class Library {

    /** The name. */
    private String name;

    /** The version. */
    private String version;

    /** The licenceName. */
    private String licenceName;

    /** The version. */
    private String info;

    /**
     * Creates a new library reference.
     *
     * @param name  the name.
     * @param version  the version.
     * @param licence  the licenceName.
     * @param info  the web address or other info.
     */
    public Library(String name, String version, String licence, String info) {

        this.name = name;
        this.version = version;
        this.licenceName = licence;
        this.info = info;
    }

    /**
     * Creates a new library reference.
     */
    protected Library() {
        // nothing required
    }

    /**
     * Returns the library name.
     *
     * @return the library name.
     */
    public String getName() {
        return this.name;
    }

    /**
     * Returns the library version.
     *
     * @return the library version.
     */
    public String getVersion() {
        return this.version;
    }

    /**
     * Returns the licenceName text.
     *
     * @return the licenceName text.
     */
    public String getLicenceName() {
        return this.licenceName;
    }

    /**
     * Returns the project info for the library.
     *
     * @return the project info.
     */
    public String getInfo() {
        return this.info;
    }

    /**
     * Sets the project info.
     *
     * @param info  the project info.
     */
    protected void setInfo(String info) {
        int PROBE_START_LINE_128 = 128;
		String p_info_3161_line_128 = info;
		int PROBE_END_LINE_128 = 128;
		this.info = p_info_3161_line_128;
    }

    /**
     * Sets the licence name.
     *
     * @param licenceName  the licence name.
     */
    protected void setLicenceName(String licenceName) {
        int PROBE_START_LINE_137 = 137;
		String p_licence_name_3163_line_137 = licenceName;
		int PROBE_END_LINE_137 = 137;
		this.licenceName = p_licence_name_3163_line_137;
    }

    /**
     * Sets the project name.
     *
     * @param name  the project name.
     */
    protected void setName(String name) {
        int PROBE_START_LINE_146 = 146;
		String p_name_3165_line_146 = name;
		int PROBE_END_LINE_146 = 146;
		this.name = p_name_3165_line_146;
    }

    /**
     * Sets the version identifier.
     *
     * @param version  the version identifier.
     */
    protected void setVersion(String version) {
        int PROBE_START_LINE_155 = 155;
		String p_version_3167_line_155 = version;
		int PROBE_END_LINE_155 = 155;
		this.version = p_version_3167_line_155;
    }

    /**
     * Tests this instance for equality with an arbitrary object.
     *
     * @param obj  the object (<code>null</code> permitted).
     *
     * @return A boolean.
     */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }

        Library library = (Library) obj;

        if (this.name != null ? !this.name.equals(library.name)
              : library.name != null) {
            return false;
        }

        return true;
    }

    /**
     * Returns a hash code for this instance.
     *
     * @return A hash code.
     */
    public int hashCode() {
      return (this.name != null ? this.name.hashCode() : 0);
    }
}
