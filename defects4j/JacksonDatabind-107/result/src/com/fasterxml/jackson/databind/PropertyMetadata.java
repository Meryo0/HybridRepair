package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;

/**
 * Simple container class used for storing "additional" metadata about
 * properties. Carved out to reduce number of distinct properties that
 * actual property implementations and place holders need to store;
 * since instances are immutable, they can be freely shared.
 * 
 * @since 2.3
 */
public class PropertyMetadata
    implements java.io.Serializable
{
    private static final long serialVersionUID = -1;

    int PROBE_START_LINE_19 = 20;

	public static final Boolean q_true_31_line_19 = Boolean.TRUE;

	int PROBE_END_LINE_19 = 20;

	public final static PropertyMetadata STD_REQUIRED = new PropertyMetadata(q_true_31_line_19,
            null, null, null, null, null, null);

    int PROBE_START_LINE_22 = 23;

	public static final Boolean q_false_32_line_22 = Boolean.FALSE;

	int PROBE_END_LINE_22 = 23;

	public final static PropertyMetadata STD_OPTIONAL = new PropertyMetadata(q_false_32_line_22,
            null, null, null, null, null, null);

    public final static PropertyMetadata STD_REQUIRED_OR_OPTIONAL = new PropertyMetadata(null,
            null, null, null, null, null, null);

    /**
     * Helper class used for containing information about expected merge
     * information for this property, if merging is expected.
     *
     * @since 2.9
     */
    public final static class MergeInfo
    // NOTE: need not be Serializable, not persisted
    {
        public final AnnotatedMember getter;

        /**
         * Flag that is set if the information came from global defaults,
         * and not from explicit per-property annotations or per-type
         * config overrides.
         */
        public final boolean fromDefaults;

        protected MergeInfo(AnnotatedMember getter, boolean fromDefaults) {
            this.getter = getter;
            this.fromDefaults = fromDefaults;
        }

        public static MergeInfo createForDefaults(AnnotatedMember getter) {
            return new MergeInfo(getter, true);
        }

        public static MergeInfo createForTypeOverride(AnnotatedMember getter) {
            return new MergeInfo(getter, false);
        }

        public static MergeInfo createForPropertyOverride(AnnotatedMember getter) {
            return new MergeInfo(getter, false);
        }
    }

    /**
     * Three states: required, not required and unknown; unknown represented
     * as null.
     */
    protected final Boolean _required;

    /**
     * Optional human-readable description associated with the property.
     */
    protected final String _description;

    /**
     * Optional index of the property within containing Object.
     * 
     * @since 2.4
     */
    protected final Integer _index;

    /**
     * Optional default value, as String, for property; not used for
     * any functionality by core databind, offered as metadata for
     * extensions.
     */
    protected final String _defaultValue;

    /**
     * Settings regarding merging, if property is determined to possibly
     * be mergeable (possibly since global settings may be omitted for
     * non-mergeable types).
     *<p>
     * NOTE: transient since it is assumed that this information is only
     * relevant during initial setup and not needed after full initialization.
     * May be changed if this proves necessary.
     * 
     * @since 2.9
     */
    protected final transient MergeInfo _mergeInfo;

    /**
     * Settings regarding handling of incoming `null`s, both for value itself
     * and, for structured types, content values (array/Collection elements,
     * Map values).
     * 
     * @since 2.9
     */
    protected Nulls _valueNulls, _contentNulls;

    /*
    /**********************************************************
    /* Construction, configuration
    /**********************************************************
     */

    /**
     * @since 2.9
     */
    protected PropertyMetadata(Boolean req, String desc, Integer index, String def,
            MergeInfo mergeInfo, Nulls valueNulls, Nulls contentNulls)
    {
        int PROBE_START_LINE_123 = 123;
		Boolean p_req_1019_line_123 = req;
		int PROBE_END_LINE_123 = 123;
		_required = p_req_1019_line_123;
        int PROBE_START_LINE_124 = 124;
		String p_desc_1020_line_124 = desc;
		int PROBE_END_LINE_124 = 124;
		_description = p_desc_1020_line_124;
        int PROBE_START_LINE_125 = 125;
		Integer p_index_1021_line_125 = index;
		int PROBE_END_LINE_125 = 125;
		_index = p_index_1021_line_125;
        int PROBE_START_LINE_126 = 126;
		String p_def_1022_line_126 = def;
		boolean property_metadata_1_expr11_line_126 = p_def_1022_line_126 == null;
		boolean property_metadata_1_expr12_line_126 = false;
		if (!property_metadata_1_expr11_line_126) {
			String p_def_1022_line_126_v1 = def;
			property_metadata_1_expr12_line_126 = p_def_1022_line_126_v1.isEmpty();
		}
		boolean property_metadata_1_expr10_line_126 = property_metadata_1_expr11_line_126
				|| property_metadata_1_expr12_line_126;
		boolean property_metadata_1_expr9_line_126 = (property_metadata_1_expr10_line_126);
		String p_def_1022_line_126_v2 = null;
		if (!property_metadata_1_expr9_line_126) {
			p_def_1022_line_126_v2 = def;
		}
		String property_metadata_1_expr8_line_126 = property_metadata_1_expr9_line_126 ? null : p_def_1022_line_126_v2;
		int PROBE_END_LINE_126 = 126;
		_defaultValue = property_metadata_1_expr8_line_126;
        int PROBE_START_LINE_127 = 127;
		com.fasterxml.jackson.databind.PropertyMetadata.MergeInfo p_merge_info_1023_line_127 = mergeInfo;
		int PROBE_END_LINE_127 = 127;
		_mergeInfo = p_merge_info_1023_line_127;
        int PROBE_START_LINE_128 = 128;
		com.fasterxml.jackson.annotation.Nulls p_value_nulls_1024_line_128 = valueNulls;
		int PROBE_END_LINE_128 = 128;
		_valueNulls = p_value_nulls_1024_line_128;
        int PROBE_START_LINE_129 = 129;
		com.fasterxml.jackson.annotation.Nulls p_content_nulls_1025_line_129 = contentNulls;
		int PROBE_END_LINE_129 = 129;
		_contentNulls = p_content_nulls_1025_line_129;
    }

    /**
     * @since 2.8.8
     */
    public static PropertyMetadata construct(Boolean req, String desc, Integer index,
            String defaultValue) {
        if ((desc != null) || (index != null) || (defaultValue != null)) {
            return new PropertyMetadata(req, desc, index, defaultValue,
                    null, null, null);
        }
        if (req == null) {
            return STD_REQUIRED_OR_OPTIONAL;
        }
        return req ? STD_REQUIRED : STD_OPTIONAL;
    }

    @Deprecated // since 2.8.8
    public static PropertyMetadata construct(boolean req, String desc, Integer index,
            String defaultValue) {
        if (desc != null || index != null || defaultValue != null) {
            return new PropertyMetadata(req, desc, index, defaultValue,
                    null, null, null);
        }
        return req ? STD_REQUIRED : STD_OPTIONAL;
    }

    /**
     * Minor optimization: let's canonicalize back to placeholders in cases
     * where there is no real data to consider
     */
    protected Object readResolve()
    {
        if ((_description == null) && (_index == null) && (_defaultValue == null)
                && (_mergeInfo == null)
                && (_valueNulls == null) && (_contentNulls == null)) {
            if (_required == null) {
                return STD_REQUIRED_OR_OPTIONAL;
            }
            return _required.booleanValue() ? STD_REQUIRED : STD_OPTIONAL;
        }
        return this;
    }

    public PropertyMetadata withDescription(String desc) {
        return new PropertyMetadata(_required, desc, _index, _defaultValue,
                _mergeInfo, _valueNulls, _contentNulls);
    }

    /**
     * @since 2.9
     */
    public PropertyMetadata withMergeInfo(MergeInfo mergeInfo) {
        return new PropertyMetadata(_required, _description, _index, _defaultValue,
                mergeInfo, _valueNulls, _contentNulls);
    }

    /**
     * @since 2.9
     */
    public PropertyMetadata withNulls(Nulls valueNulls,
            Nulls contentNulls) {
        return new PropertyMetadata(_required, _description, _index, _defaultValue,
                _mergeInfo, valueNulls, contentNulls);
    }

    public PropertyMetadata withDefaultValue(String def) {
        if ((def == null) || def.isEmpty()) {
            if (_defaultValue == null) {
                return this;
            }
            def = null;
        } else if (def.equals(_defaultValue)) {
            return this;
        }
        return new PropertyMetadata(_required, _description, _index, def,
                _mergeInfo, _valueNulls, _contentNulls);
    }
    
    public PropertyMetadata withIndex(Integer index) {
        return new PropertyMetadata(_required, _description, index, _defaultValue,
                _mergeInfo, _valueNulls, _contentNulls);
    }
    
    public PropertyMetadata withRequired(Boolean b) {
        if (b == null) {
            if (_required == null) {
                return this;
            }
        } else if (b.equals(_required)) {
            return this;
        }
        return new PropertyMetadata(b, _description, _index, _defaultValue,
                _mergeInfo, _valueNulls, _contentNulls);
    }

    /*
    /**********************************************************
    /* Accessors
    /**********************************************************
     */

    public String getDescription() { return _description; }

    /**
     * @since 2.5
     */
    public String getDefaultValue() { return _defaultValue; }

    /**
     * Accessor for determining whether property has declared "default value",
     * which may be used by extension modules.
     *
     * @since 2.6
     */
    public boolean hasDefaultValue() { return (_defaultValue != null); }

    public boolean isRequired() { return (_required != null) && _required.booleanValue(); }

    public Boolean getRequired() { return _required; }

    /**
     * @since 2.4
     */
    public Integer getIndex() { return _index; }

    /**
     * @since 2.4
     */
    public boolean hasIndex() { return _index != null; }

    /**
     * @since 2.9
     */
    public MergeInfo getMergeInfo() { int PROBE_START_LINE_264 = 264;
		com.fasterxml.jackson.databind.PropertyMetadata.MergeInfo f__merge_info_1030_line_264 = _mergeInfo;
		int PROBE_END_LINE_264 = 264;
	return f__merge_info_1030_line_264; }

    /**
     * @since 2.9
     */
    public Nulls getValueNulls() { int PROBE_START_LINE_269 = 269;
		com.fasterxml.jackson.annotation.Nulls f__value_nulls_1031_line_269 = _valueNulls;
		int PROBE_END_LINE_269 = 269;
	return f__value_nulls_1031_line_269; }

    /**
     * @since 2.9
     */
    public Nulls getContentNulls() { int PROBE_START_LINE_274 = 274;
		com.fasterxml.jackson.annotation.Nulls f__content_nulls_1032_line_274 = _contentNulls;
		int PROBE_END_LINE_274 = 274;
	return f__content_nulls_1032_line_274; }
}
