/*
 *
 * ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Rhino code, released
 * May 6, 1999.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1997-1999
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Nick Santos
 *   Google Inc.
 *
 * Alternatively, the contents of this file may be used under the terms of
 * the GNU General Public License Version 2 or later (the "GPL"), in which
 * case the provisions of the GPL are applicable instead of those above. If
 * you wish to allow use of your version of this file only under the terms of
 * the GPL and not to allow others to use your version of this file under the
 * MPL, indicate your decision by deleting the provisions above and replacing
 * them with the notice and other provisions required by the GPL. If you do
 * not delete the provisions above, a recipient may use your version of this
 * file under either the MPL or the GPL.
 *
 * ***** END LICENSE BLOCK ***** */

package com.google.javascript.rhino.jstype;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;
import java.util.Collection;

/**
 * Representation for a collection of properties on an object.
 * @author nicksantos@google.com (Nick Santos)
 */
class PropertyMap implements Serializable {
  private static final long serialVersionUID = 1L;

  private static final PropertyMap EMPTY_MAP = new PropertyMap(
      ImmutableMap.<String, Property>of());

  private static final Function<ObjectType, PropertyMap> PROP_MAP_FROM_TYPE =
      new Function<ObjectType, PropertyMap>() {
    @Override public PropertyMap apply(ObjectType t) {
      return t.getPropertyMap();
    }
  };

  // A place to get the inheritance structure.
  // Because the extended interfaces are resolved dynamically, this gets
  // messy :(. If type-resolution was more well-defined, we could
  // just reference primary parents and secondary parents directly.
  private ObjectType parentSource = null;

  // The map of our own properties.
  private final Map<String, Property> properties;

  PropertyMap() {
    this(Maps.<String, Property>newTreeMap());
  }

  private PropertyMap(Map<String, Property> underlyingMap) {
    int PROBE_START_LINE_84 = 84;
	Map<String, com.google.javascript.rhino.jstype.Property> p_underlying_map_5353_line_84 = underlyingMap;
	int PROBE_END_LINE_84 = 84;
	this.properties = p_underlying_map_5353_line_84;
  }

  static PropertyMap immutableEmptyMap() {
    return EMPTY_MAP;
  }

  void setParentSource(ObjectType ownerType) {
    int PROBE_START_LINE_92 = 94;
	com.google.javascript.rhino.jstype.PropertyMap f_empty_map_5349_line_92 = EMPTY_MAP;
	boolean property_map_1_expr9_line_92 = this != f_empty_map_5349_line_92;
	int PROBE_END_LINE_92 = 94;
	if (property_map_1_expr9_line_92) {
      int PROBE_START_LINE_93 = 93;
		com.google.javascript.rhino.jstype.ObjectType p_owner_type_5355_line_93 = ownerType;
		int PROBE_END_LINE_93 = 93;
	this.parentSource = p_owner_type_5355_line_93;
    }
  }

  /** Returns the direct parent of this property map. */
  PropertyMap getPrimaryParent() {
    int PROBE_START_LINE_99 = 101;
	com.google.javascript.rhino.jstype.ObjectType f_parent_source_5352_line_99 = parentSource;
	boolean property_map_1_expr14_line_99 = f_parent_source_5352_line_99 == null;
	int PROBE_END_LINE_99 = 101;
	if (property_map_1_expr14_line_99) {
      return null;
    }
    int PROBE_START_LINE_102 = 102;
	com.google.javascript.rhino.jstype.ObjectType f_parent_source_5352_line_102 = parentSource;
	ObjectType property_map_1_expr15_line_102 = f_parent_source_5352_line_102.getImplicitPrototype();
	int PROBE_END_LINE_102 = 102;
	ObjectType iProto = property_map_1_expr15_line_102;
    int PROBE_START_LINE_103 = 103;
	com.google.javascript.rhino.jstype.ObjectType v_i_proto_5356_line_103 = iProto;
	boolean property_map_1_expr17_line_103 = v_i_proto_5356_line_103 == null;
	com.google.javascript.rhino.jstype.PropertyMap property_map_1_expr18_line_103 = null;
	if (!property_map_1_expr17_line_103) {
		com.google.javascript.rhino.jstype.ObjectType v_i_proto_5356_line_103_v1 = iProto;
		property_map_1_expr18_line_103 = v_i_proto_5356_line_103_v1.getPropertyMap();
	}
	com.google.javascript.rhino.jstype.PropertyMap property_map_1_expr16_line_103 = property_map_1_expr17_line_103
			? null
			: property_map_1_expr18_line_103;
	int PROBE_END_LINE_103 = 103;
	return property_map_1_expr16_line_103;
  }

  /**
   * Returns the secondary parents of this property map, for interfaces that
   * need multiple inheritance.
   */
  Iterable<PropertyMap> getSecondaryParents() {
    int PROBE_START_LINE_111 = 113;
	com.google.javascript.rhino.jstype.ObjectType f_parent_source_5352_line_111 = parentSource;
	boolean property_map_1_expr19_line_111 = f_parent_source_5352_line_111 == null;
	int PROBE_END_LINE_111 = 113;
	if (property_map_1_expr19_line_111) {
      return ImmutableList.of();
    }
    Iterable<ObjectType> extendedInterfaces =
        parentSource.getCtorExtendedInterfaces();

    int PROBE_START_LINE_118 = 120;
	Iterable<com.google.javascript.rhino.jstype.ObjectType> v_extended_interfaces_5357_line_118 = extendedInterfaces;
	boolean property_map_1_expr21_line_118 = Iterables.isEmpty(v_extended_interfaces_5357_line_118);
	int PROBE_END_LINE_118 = 120;
	// Most of the time, this will be empty.
    if (property_map_1_expr21_line_118) {
      int PROBE_START_LINE_119 = 119;
		ImmutableList<com.google.javascript.rhino.jstype.PropertyMap> property_map_1_expr22_line_119 = ImmutableList
				.of();
		int PROBE_END_LINE_119 = 119;
	return property_map_1_expr22_line_119;
    }

    return Iterables.transform(extendedInterfaces, PROP_MAP_FROM_TYPE);
  }

  Property getSlot(String name) {
    if (properties.containsKey(name)) {
      return properties.get(name);
    }
    PropertyMap primaryParent = getPrimaryParent();
    if (primaryParent != null) {
      Property prop = primaryParent.getSlot(name);
      if (prop != null) {
        return prop;
      }
    }
    for (PropertyMap p : getSecondaryParents()) {
      if (p != null) {
        Property prop = p.getSlot(name);
        if (prop != null) {
          return prop;
        }
      }
    }
    return null;
  }

  Property getOwnProperty(String propertyName) {
    int PROBE_START_LINE_148 = 148;
	Map<String, com.google.javascript.rhino.jstype.Property> f_properties_5354_line_148 = properties;
	String p_property_name_5359_line_148 = propertyName;
	com.google.javascript.rhino.jstype.Property property_map_1_expr23_line_148 = f_properties_5354_line_148
			.get(p_property_name_5359_line_148);
	int PROBE_END_LINE_148 = 148;
	return property_map_1_expr23_line_148;
  }

  int getPropertiesCount() {
    int PROBE_START_LINE_152 = 152;
	PropertyMap property_map_1_expr24_line_152 = getPrimaryParent();
	int PROBE_END_LINE_152 = 152;
	PropertyMap primaryParent = property_map_1_expr24_line_152;
    int PROBE_START_LINE_153 = 155;
	com.google.javascript.rhino.jstype.PropertyMap v_primary_parent_5360_line_153 = primaryParent;
	boolean property_map_1_expr25_line_153 = v_primary_parent_5360_line_153 == null;
	int PROBE_END_LINE_153 = 155;
	if (property_map_1_expr25_line_153) {
      return this.properties.size();
    }
    int PROBE_START_LINE_156 = 156;
	Set<String> property_map_1_expr26_line_156 = Sets.newHashSet();
	int PROBE_END_LINE_156 = 156;
	Set<String> props = property_map_1_expr26_line_156;
    int PROBE_START_LINE_157 = 157;
	Set<String> v_props_5361_line_157 = props;
	int PROBE_END_LINE_157 = 157;
	collectPropertyNames(v_props_5361_line_157);
    int PROBE_START_LINE_158 = 158;
	Set<String> v_props_5361_line_158 = props;
	int property_map_1_expr28_line_158 = v_props_5361_line_158.size();
	int PROBE_END_LINE_158 = 158;
	return property_map_1_expr28_line_158;
  }

  boolean hasOwnProperty(String propertyName) {
    return properties.get(propertyName) != null;
  }

  boolean hasProperty(String propertyName) {
    return getSlot(propertyName) != null;
  }

  Set<String> getOwnPropertyNames() {
    return properties.keySet();
  }

  void collectPropertyNames(Set<String> props) {
    int PROBE_START_LINE_174 = 176;
	Map<String, com.google.javascript.rhino.jstype.Property> f_properties_5354_line_174 = properties;
	Set<String> property_map_1_expr29_line_174 = f_properties_5354_line_174.keySet();
	int PROBE_END_LINE_174 = 176;
	for (String prop : property_map_1_expr29_line_174) {
      int PROBE_START_LINE_175 = 175;
		Set<String> p_props_5364_line_175 = props;
		String v_prop_5365_line_175 = prop;
		int PROBE_END_LINE_175 = 175;
	p_props_5364_line_175.add(v_prop_5365_line_175);
    }
    int PROBE_START_LINE_177 = 177;
	PropertyMap property_map_1_expr31_line_177 = getPrimaryParent();
	int PROBE_END_LINE_177 = 177;
	PropertyMap primaryParent = property_map_1_expr31_line_177;
    int PROBE_START_LINE_178 = 180;
	com.google.javascript.rhino.jstype.PropertyMap v_primary_parent_5366_line_178 = primaryParent;
	boolean property_map_1_expr32_line_178 = v_primary_parent_5366_line_178 != null;
	int PROBE_END_LINE_178 = 180;
	if (property_map_1_expr32_line_178) {
      int PROBE_START_LINE_179 = 179;
		com.google.javascript.rhino.jstype.PropertyMap v_primary_parent_5366_line_179 = primaryParent;
		Set<String> p_props_5364_line_179 = props;
		int PROBE_END_LINE_179 = 179;
	v_primary_parent_5366_line_179.collectPropertyNames(p_props_5364_line_179);
    }
    int PROBE_START_LINE_181 = 185;
	Iterable<com.google.javascript.rhino.jstype.PropertyMap> property_map_1_expr34_line_181 = getSecondaryParents();
	int PROBE_END_LINE_181 = 185;
	for (PropertyMap p : property_map_1_expr34_line_181) {
      if (p != null) {
        p.collectPropertyNames(props);
      }
    }
  }

  boolean removeProperty(String name) {
    return properties.remove(name) != null;
  }

  void putProperty(String name, Property newProp) {
    int PROBE_START_LINE_193 = 193;
	Map<String, com.google.javascript.rhino.jstype.Property> f_properties_5354_line_193 = properties;
	String p_name_5369_line_193 = name;
	Property property_map_1_expr35_line_193 = f_properties_5354_line_193.get(p_name_5369_line_193);
	int PROBE_END_LINE_193 = 193;
	Property oldProp = property_map_1_expr35_line_193;
    int PROBE_START_LINE_194 = 198;
	com.google.javascript.rhino.jstype.Property v_old_prop_5371_line_194 = oldProp;
	boolean property_map_1_expr36_line_194 = v_old_prop_5371_line_194 != null;
	int PROBE_END_LINE_194 = 198;
	if (property_map_1_expr36_line_194) {
      // This is to keep previously inferred JsDoc info, e.g., in a
      // replaceScript scenario.
      newProp.setJSDocInfo(oldProp.getJSDocInfo());
    }
    int PROBE_START_LINE_199 = 199;
	Map<String, com.google.javascript.rhino.jstype.Property> f_properties_5354_line_199 = properties;
	String p_name_5369_line_199 = name;
	com.google.javascript.rhino.jstype.Property p_new_prop_5370_line_199 = newProp;
	int PROBE_END_LINE_199 = 199;
	f_properties_5354_line_199.put(p_name_5369_line_199, p_new_prop_5370_line_199);
  }

  Iterable<Property> values() {
    int PROBE_START_LINE_203 = 203;
	Map<String, com.google.javascript.rhino.jstype.Property> f_properties_5354_line_203 = properties;
	Collection<com.google.javascript.rhino.jstype.Property> property_map_1_expr38_line_203 = f_properties_5354_line_203
			.values();
	int PROBE_END_LINE_203 = 203;
	return property_map_1_expr38_line_203;
  }
}
