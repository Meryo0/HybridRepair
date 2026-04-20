package com.fasterxml.jackson.databind;

import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Iterator;
import java.util.LinkedList;

/**
 * Checked exception used to signal fatal problems with mapping of
 * content, distinct from low-level I/O problems (signaled using
 * simple {@link java.io.IOException}s) or data encoding/decoding
 * problems (signaled with {@link com.fasterxml.jackson.core.JsonParseException},
 * {@link com.fasterxml.jackson.core.JsonGenerationException}).
 *<p>
 * One additional feature is the ability to denote relevant path
 * of references (during serialization/deserialization) to help in
 * troubleshooting.
 */
public class JsonMappingException
    extends JsonProcessingException
{
    private static final long serialVersionUID = 1L;

    /**
     * Let's limit length of reference chain, to limit damage in cases
     * of infinite recursion.
     */
    final static int MAX_REFS_TO_LIST = 1000;

    /*
    /**********************************************************
    /* Helper classes
    /**********************************************************
     */

    /**
     * Simple bean class used to contain references. References
     * can be added to indicate execution/reference path that
     * lead to the problem that caused this exception to be
     * thrown.
     */
    public static class Reference implements Serializable
    {
        private static final long serialVersionUID = 2L; // changes between 2.7 and 2.8

        // transient since 2.8
        protected transient Object _from;

        /**
         * Name of field (for beans) or key (for Maps) that is part
         * of the reference. May be null for Collection types (which
         * generally have {@link #_index} defined), or when resolving
         * Map classes without (yet) having an instance to operate on.
         */
        protected String _fieldName;

        int PROBE_START_LINE_61 = 67;

		protected int json_mapping_exception_1_expr1_line_67 = -1;

		int PROBE_END_LINE_61 = 67;

		/**
         * Index within a {@link Collection} instance that contained
         * the reference; used if index is relevant and available.
         * If either not applicable, or not available, -1 is used to
         * denote "not known" (or not relevant).
         */
        protected int _index = json_mapping_exception_1_expr1_line_67;

        /**
         * Lazily-constructed description of this instance; needed mostly to
         * allow JDK serialization to work in case where {@link #_from} is
         * non-serializable (and has to be dropped) but we still want to pass
         * actual description along.
         *
         * @since 2.8
         */
        protected String _desc;

        /**
         * Default constructor for deserialization/sub-classing purposes
         */
        protected Reference() { }

        public Reference(Object from) { _from = from; }

        public Reference(Object from, String fieldName) {
            int PROBE_START_LINE_87 = 87;
			Object p_from_532_line_87 = from;
			int PROBE_END_LINE_87 = 87;
			_from = p_from_532_line_87;
            int PROBE_START_LINE_88 = 90;
			String p_field_name_533_line_88 = fieldName;
			boolean json_mapping_exception_1_expr3_line_88 = p_field_name_533_line_88 == null;
			int PROBE_END_LINE_88 = 90;
			if (json_mapping_exception_1_expr3_line_88) {
                throw new NullPointerException("Cannot pass null fieldName");
            }
            int PROBE_START_LINE_91 = 91;
			String p_field_name_533_line_91 = fieldName;
			int PROBE_END_LINE_91 = 91;
			_fieldName = p_field_name_533_line_91;
        }

        public Reference(Object from, int index) {
            int PROBE_START_LINE_95 = 95;
			Object p_from_536_line_95 = from;
			int PROBE_END_LINE_95 = 95;
			_from = p_from_536_line_95;
            int PROBE_START_LINE_96 = 96;
			int p_index_537_line_96 = index;
			int PROBE_END_LINE_96 = 96;
			_index = p_index_537_line_96;
        }

        // Setters to let Jackson deserialize instances, but not to be called from outside
        void setFieldName(String n) { _fieldName = n; }
        void setIndex(int ix) { _index = ix; }
        void setDescription(String d) { _desc = d; }

        /**
         * Object through which reference was resolved. Can be either
         * actual instance (usually the case for serialization), or
         * Class (usually the case for deserialization).
         *<p>
         * Note that this value must be `transient` to allow serializability (as
         * often such Object is NOT serializable; or, in case of `Class`, may
         * not available at the point of deserialization). As such will return
         * `null` if instance has been passed using JDK serialization.
         */
        @JsonIgnore
        public Object getFrom() { return _from; }

        public String getFieldName() { return _fieldName; }
        public int getIndex() { return _index; }
        public String getDescription() {
            int PROBE_START_LINE_120 = 160;
			String f__desc_541_line_120 = _desc;
			boolean json_mapping_exception_1_expr7_line_120 = f__desc_541_line_120 == null;
			int PROBE_END_LINE_120 = 160;
			if (json_mapping_exception_1_expr7_line_120) {
                StringBuilder sb = new StringBuilder();

                int PROBE_START_LINE_123 = 147;
				Object f__from_534_line_123 = _from;
				boolean json_mapping_exception_1_expr9_line_123 = f__from_534_line_123 == null;
				int PROBE_END_LINE_123 = 147;
				if (json_mapping_exception_1_expr9_line_123) { // can this ever occur?
                    sb.append("UNKNOWN");
                } else {
                    int PROBE_START_LINE_126 = 126;
					Object f__from_534_line_126 = _from;
					boolean json_mapping_exception_1_expr14_line_126 = f__from_534_line_126 instanceof Class<?>;
					boolean json_mapping_exception_1_expr11_line_126 = (json_mapping_exception_1_expr14_line_126);
					Object f__from_534_line_126_v1 = null;
					Class<? extends Object> json_mapping_exception_1_expr13_line_126 = null;
					if (json_mapping_exception_1_expr11_line_126) {
						f__from_534_line_126_v1 = _from;
					} else {
						Object f__from_534_line_126_v2 = _from;
						json_mapping_exception_1_expr13_line_126 = f__from_534_line_126_v2.getClass();
					}
					Class<?> json_mapping_exception_1_expr10_line_126 = json_mapping_exception_1_expr11_line_126
							? (Class<?>) f__from_534_line_126_v1
							: json_mapping_exception_1_expr13_line_126;
					int PROBE_END_LINE_126 = 126;
					Class<?> cls = json_mapping_exception_1_expr10_line_126;
                    // Hmmh. Although Class.getName() is mostly ok, it does look
                    // butt-ugly for arrays.
                    // 06-Oct-2016, tatu: as per [databind#1403], `getSimpleName()` not so good
                    //   as it drops enclosing class. So let's try bit different approach
                    int arrays = 0;
                    while (true) {
                        int PROBE_START_LINE_132 = 132;
						Class<?> v_cls_543_line_132 = cls;
						boolean json_mapping_exception_1_expr15_line_132 = v_cls_543_line_132.isArray();
						if (!(json_mapping_exception_1_expr15_line_132)) {
							break;
						}
						int PROBE_END_LINE_132 = 132;
						cls = cls.getComponentType();
                        ++arrays;
                    }
                    int PROBE_START_LINE_136 = 136;
					StringBuilder v_sb_542_line_136 = sb;
					Class<?> v_cls_543_line_136 = cls;
					String json_mapping_exception_1_expr17_line_136 = v_cls_543_line_136.getName();
					int PROBE_END_LINE_136 = 136;
					v_sb_542_line_136.append(json_mapping_exception_1_expr17_line_136);
                    while (true) {
                        int PROBE_START_LINE_137 = 137;
						boolean json_mapping_exception_1_expr18_line_137 = --arrays >= 0;
						if (!(json_mapping_exception_1_expr18_line_137)) {
							break;
						}
						int PROBE_END_LINE_137 = 137;
						sb.append("[]");
                    }
                    /* was:
                    String pkgName = ClassUtil.getPackageName(cls);
                    if (pkgName != null) {
                        sb.append(pkgName);
                        sb.append('.');
                    }
                    */
                }
                int PROBE_START_LINE_148 = 148;
				StringBuilder v_sb_542_line_148 = sb;
				int PROBE_END_LINE_148 = 148;
				v_sb_542_line_148.append('[');
                int PROBE_START_LINE_149 = 157;
				String f__field_name_535_line_149 = _fieldName;
				boolean json_mapping_exception_1_expr21_line_149 = f__field_name_535_line_149 != null;
				int PROBE_END_LINE_149 = 157;
				if (json_mapping_exception_1_expr21_line_149) {
                    int PROBE_START_LINE_150 = 150;
					StringBuilder v_sb_542_line_150 = sb;
					int PROBE_END_LINE_150 = 150;
					v_sb_542_line_150.append('"');
                    int PROBE_START_LINE_151 = 151;
					StringBuilder v_sb_542_line_151 = sb;
					String f__field_name_535_line_151 = _fieldName;
					int PROBE_END_LINE_151 = 151;
					v_sb_542_line_151.append(f__field_name_535_line_151);
                    int PROBE_START_LINE_152 = 152;
					StringBuilder v_sb_542_line_152 = sb;
					int PROBE_END_LINE_152 = 152;
					v_sb_542_line_152.append('"');
                } else {
					int PROBE_START_LINE_153 = 157;
					int f__index_530_line_153 = _index;
					boolean json_mapping_exception_1_expr25_line_153 = f__index_530_line_153 >= 0;
					int PROBE_END_LINE_153 = 157;
					if (json_mapping_exception_1_expr25_line_153) {
						int PROBE_START_LINE_154 = 154;
						StringBuilder v_sb_542_line_154 = sb;
						int f__index_530_line_154 = _index;
						int PROBE_END_LINE_154 = 154;
						v_sb_542_line_154.append(f__index_530_line_154);
					} else {
						sb.append('?');
					}
				}
                int PROBE_START_LINE_158 = 158;
				StringBuilder v_sb_542_line_158 = sb;
				int PROBE_END_LINE_158 = 158;
				v_sb_542_line_158.append(']');
                int PROBE_START_LINE_159 = 159;
				StringBuilder v_sb_542_line_159 = sb;
				String json_mapping_exception_1_expr29_line_159 = v_sb_542_line_159.toString();
				int PROBE_END_LINE_159 = 159;
				_desc = json_mapping_exception_1_expr29_line_159;
            }
            int PROBE_START_LINE_161 = 161;
			String f__desc_541_line_161 = _desc;
			int PROBE_END_LINE_161 = 161;
			return f__desc_541_line_161;
        }

        @Override
        public String toString() {
            int PROBE_START_LINE_166 = 166;
			String json_mapping_exception_1_expr30_line_166 = getDescription();
			int PROBE_END_LINE_166 = 166;
			return json_mapping_exception_1_expr30_line_166;
        }

        /**
         * May need some cleaning here, given that `from` may or may not be serializable.
         *
         * since 2.8
         */
        Object writeReplace() {
            // as per [databind#1195], need to ensure description is not null, since
            // `_from` is transient
            getDescription();
            return this;
        }
    }

    /*
    /**********************************************************
    /* State/configuration
    /**********************************************************
     */

    /**
     * Path through which problem that triggering throwing of
     * this exception was reached.
     */
    protected LinkedList<Reference> _path;

    /**
     * Underlying processor ({@link JsonParser} or {@link JsonGenerator}),
     * if known.
     *<p>
     * NOTE: typically not serializable hence <code>transient</code>
     *
     * @since 2.7
     */
    protected transient Closeable _processor;
    
    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    /**
     * @deprecated Since 2.7 Use variant that takes {@link JsonParser} instead
     */
    @Deprecated // since 2.7
    public JsonMappingException(String msg) { super(msg); }

    /**
     * @deprecated Since 2.7 Use variant that takes {@link JsonParser} instead
     */
    @Deprecated // since 2.7
    public JsonMappingException(String msg, Throwable rootCause) { super(msg, rootCause); }

    /**
     * @deprecated Since 2.7 Use variant that takes {@link JsonParser} instead
     */
    @Deprecated // since 2.7
    public JsonMappingException(String msg, JsonLocation loc) { super(msg, loc); }

    /**
     * @deprecated Since 2.7 Use variant that takes {@link JsonParser} instead
     */
    @Deprecated // since 2.7
    public JsonMappingException(String msg, JsonLocation loc, Throwable rootCause) { super(msg, loc, rootCause); }

    /**
     * @since 2.7
     */
    public JsonMappingException(Closeable processor, String msg) {
        super(msg);
        _processor = processor;
        if (processor instanceof JsonParser) {
            // 17-Aug-2015, tatu: Use of token location makes some sense from databinding,
            //   since actual parsing (current) location is typically only needed for low-level
            //   parsing exceptions.
            _location = ((JsonParser) processor).getTokenLocation();
        }
    }

    /**
     * @since 2.7
     */
    public JsonMappingException(Closeable processor, String msg, Throwable problem) {
        super(msg, problem);
        int PROBE_START_LINE_253 = 253;
		java.io.Closeable p_processor_555_line_253 = processor;
		int PROBE_END_LINE_253 = 253;
		_processor = p_processor_555_line_253;
        int PROBE_START_LINE_254 = 256;
		java.io.Closeable p_processor_555_line_254 = processor;
		boolean json_mapping_exception_1_expr33_line_254 = p_processor_555_line_254 instanceof JsonParser;
		int PROBE_END_LINE_254 = 256;
		if (json_mapping_exception_1_expr33_line_254) {
            _location = ((JsonParser) processor).getTokenLocation();
        }
    }

    /**
     * @since 2.7
     */
    public JsonMappingException(Closeable processor, String msg, JsonLocation loc) {
        super(msg, loc);
        _processor = processor;
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(JsonParser p, String msg) {
        return new JsonMappingException(p, msg);
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(JsonParser p, String msg, Throwable problem) {
        return new JsonMappingException(p, msg, problem);
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(JsonGenerator g, String msg) {
        return new JsonMappingException(g, msg, (Throwable) null);
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(JsonGenerator g, String msg, Throwable problem) {
        return new JsonMappingException(g, msg, problem);
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(DeserializationContext ctxt, String msg) {
        return new JsonMappingException(ctxt.getParser(), msg);
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(DeserializationContext ctxt, String msg, Throwable t) {
        return new JsonMappingException(ctxt.getParser(), msg, t);
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(SerializerProvider ctxt, String msg) {
        return new JsonMappingException(ctxt.getGenerator(), msg);
    }

    /**
     * @since 2.7
     */
    public static JsonMappingException from(SerializerProvider ctxt, String msg, Throwable problem) {
        /* 17-Aug-2015, tatu: As per [databind#903] this is bit problematic as
         *   SerializerProvider instance does not currently hold on to generator...
         */
        return new JsonMappingException(ctxt.getGenerator(), msg, problem);
    }
    
    /**
     * Factory method used when "upgrading" an {@link IOException} into
     * {@link JsonMappingException}: usually only needed to comply with
     * a signature.
     *<p>
     * NOTE: since 2.9 should usually NOT be used on input-side (deserialization)
     *    exceptions; instead use method(s) of <code>InputMismatchException</code>
     * 
     * @since 2.1
     */
    public static JsonMappingException fromUnexpectedIOE(IOException src) {
        return new JsonMappingException(null,
                String.format("Unexpected IOException (of type %s): %s",
                        src.getClass().getName(),
                        ClassUtil.exceptionMessage(src)));
    }

    /**
     * Method that can be called to either create a new JsonMappingException
     * (if underlying exception is not a JsonMappingException), or augment
     * given exception with given path/reference information.
     *
     * This version of method is called when the reference is through a
     * non-indexed object, such as a Map or POJO/bean.
     */
    public static JsonMappingException wrapWithPath(Throwable src, Object refFrom,
            String refFieldName) {
        int PROBE_START_LINE_353 = 353;
				Throwable p_src_583_line_353 = src;
				Object p_ref_from_584_line_353 = refFrom;
				String p_ref_field_name_585_line_353 = refFieldName;
				com.fasterxml.jackson.databind.JsonMappingException json_mapping_exception_1_expr34_line_353 = wrapWithPath(
						p_src_583_line_353, new Reference(p_ref_from_584_line_353, p_ref_field_name_585_line_353));
				int PROBE_END_LINE_353 = 353;
		return json_mapping_exception_1_expr34_line_353;
    }

    /**
     * Method that can be called to either create a new JsonMappingException
     * (if underlying exception is not a JsonMappingException), or augment
     * given exception with given path/reference information.
     *
     * This version of method is called when the reference is through an
     * index, which happens with arrays and Collections.
     */
    public static JsonMappingException wrapWithPath(Throwable src, Object refFrom, int index) {
        int PROBE_START_LINE_365 = 365;
		Throwable p_src_586_line_365 = src;
		Object p_ref_from_587_line_365 = refFrom;
		int p_index_588_line_365 = index;
		com.fasterxml.jackson.databind.JsonMappingException json_mapping_exception_1_expr36_line_365 = wrapWithPath(
				p_src_586_line_365, new Reference(p_ref_from_587_line_365, p_index_588_line_365));
		int PROBE_END_LINE_365 = 365;
		return json_mapping_exception_1_expr36_line_365;
    }

    /**
     * Method that can be called to either create a new JsonMappingException
     * (if underlying exception is not a JsonMappingException), or augment
     * given exception with given path/reference information.
     */
    @SuppressWarnings("resource")
    public static JsonMappingException wrapWithPath(Throwable src, Reference ref)
    {
        JsonMappingException jme = null;
        int PROBE_START_LINE_377 = 395;
		Throwable p_src_589_line_377 = src;
		boolean json_mapping_exception_1_expr38_line_377 = p_src_589_line_377 instanceof JsonMappingException;
		int PROBE_END_LINE_377 = 395;
		if (json_mapping_exception_1_expr38_line_377) {
            int PROBE_START_LINE_378 = 378;
			Throwable p_src_589_line_378 = src;
			int PROBE_END_LINE_378 = 378;
			jme = (JsonMappingException) p_src_589_line_378;
        } else {
            int PROBE_START_LINE_381 = 381;
			Throwable p_src_589_line_381 = src;
			String json_mapping_exception_1_expr41_line_381 = ClassUtil.exceptionMessage(p_src_589_line_381);
			int PROBE_END_LINE_381 = 381;
			// [databind#2128]: try to avoid duplication
            String msg = json_mapping_exception_1_expr41_line_381;
            int PROBE_START_LINE_383 = 385;
			String v_msg_592_line_383 = msg;
			boolean json_mapping_exception_1_expr43_line_383 = v_msg_592_line_383 == null;
			boolean json_mapping_exception_1_expr44_line_383 = false;
			if (!json_mapping_exception_1_expr43_line_383) {
				String v_msg_592_line_383_v1 = msg;
				int json_mapping_exception_1_expr45_line_383 = v_msg_592_line_383_v1.length();
				json_mapping_exception_1_expr44_line_383 = json_mapping_exception_1_expr45_line_383 == 0;
			}
			boolean json_mapping_exception_1_expr42_line_383 = json_mapping_exception_1_expr43_line_383
					|| json_mapping_exception_1_expr44_line_383;
			int PROBE_END_LINE_383 = 385;
			// Let's use a more meaningful placeholder if all we have is null
            if (json_mapping_exception_1_expr42_line_383) {
                msg = "(was "+src.getClass().getName()+")";
            }
            // 17-Aug-2015, tatu: Let's also pass the processor (parser/generator) along
            Closeable proc = null;
            int PROBE_START_LINE_388 = 393;
			Throwable p_src_589_line_388 = src;
			boolean json_mapping_exception_1_expr46_line_388 = p_src_589_line_388 instanceof JsonProcessingException;
			int PROBE_END_LINE_388 = 393;
			if (json_mapping_exception_1_expr46_line_388) {
                Object proc0 = ((JsonProcessingException) src).getProcessor();
                if (proc0 instanceof Closeable) {
                    proc = (Closeable) proc0;
                }
            }
            int PROBE_START_LINE_394 = 394;
			java.io.Closeable v_proc_593_line_394 = proc;
			String v_msg_592_line_394 = msg;
			Throwable p_src_589_line_394 = src;
			int PROBE_END_LINE_394 = 394;
			jme = new JsonMappingException(v_proc_593_line_394, v_msg_592_line_394, p_src_589_line_394);
        }
        int PROBE_START_LINE_396 = 396;
		com.fasterxml.jackson.databind.JsonMappingException v_jme_591_line_396 = jme;
		com.fasterxml.jackson.databind.JsonMappingException.Reference p_ref_590_line_396 = ref;
		int PROBE_END_LINE_396 = 396;
		v_jme_591_line_396.prependPath(p_ref_590_line_396);
        int PROBE_START_LINE_397 = 397;
		com.fasterxml.jackson.databind.JsonMappingException v_jme_591_line_397 = jme;
		int PROBE_END_LINE_397 = 397;
		return v_jme_591_line_397;
    }

    /*
    /**********************************************************
    /* Accessors/mutators
    /**********************************************************
     */

    /**
     * Method for accessing full structural path within type hierarchy
     * down to problematic property.
     */
    public List<Reference> getPath()
    {
        if (_path == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(_path);
    }

    /**
     * Method for accessing description of path that lead to the
     * problem that triggered this exception
     */
    public String getPathReference()
    {
        return getPathReference(new StringBuilder()).toString();
    }

    public StringBuilder getPathReference(StringBuilder sb)
    {
        int PROBE_START_LINE_429 = 429;
		StringBuilder p_sb_594_line_429 = sb;
		int PROBE_END_LINE_429 = 429;
		_appendPathDesc(p_sb_594_line_429);
        int PROBE_START_LINE_430 = 430;
		StringBuilder p_sb_594_line_430 = sb;
		int PROBE_END_LINE_430 = 430;
		return p_sb_594_line_430;
    }
    
    /**
     * Method called to prepend a reference information in front of
     * current path
     */
    public void prependPath(Object referrer, String fieldName)
    {
        Reference ref = new Reference(referrer, fieldName);
        prependPath(ref);
    }
    /**
     * Method called to prepend a reference information in front of
     * current path
     */
    public void prependPath(Object referrer, int index)
    {
        Reference ref = new Reference(referrer, index);
        prependPath(ref);
    }

    public void prependPath(Reference r)
    {
        int PROBE_START_LINE_454 = 456;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_600_line_454 = _path;
		boolean json_mapping_exception_1_expr51_line_454 = f__path_600_line_454 == null;
		int PROBE_END_LINE_454 = 456;
		if (json_mapping_exception_1_expr51_line_454) {
            _path = new LinkedList<Reference>();
        }
        int PROBE_START_LINE_461 = 463;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_600_line_461 = _path;
		int json_mapping_exception_1_expr55_line_461 = f__path_600_line_461.size();
		int f_max_refs_to_list_601_line_461 = MAX_REFS_TO_LIST;
		boolean json_mapping_exception_1_expr54_line_461 = json_mapping_exception_1_expr55_line_461 < f_max_refs_to_list_601_line_461;
		int PROBE_END_LINE_461 = 463;
		/* Also: let's not increase without bounds. Could choose either
         * head or tail; tail is easier (no need to ever remove), as
         * well as potentially more useful so let's use it:
         */
        if (json_mapping_exception_1_expr54_line_461) {
            int PROBE_START_LINE_462 = 462;
			LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_600_line_462 = _path;
			com.fasterxml.jackson.databind.JsonMappingException.Reference p_r_599_line_462 = r;
			int PROBE_END_LINE_462 = 462;
			f__path_600_line_462.addFirst(p_r_599_line_462);
        }
    }
    
    /*
    /**********************************************************
    /* Overridden methods
    /**********************************************************
     */

    @Override // since 2.7.5
    @JsonIgnore // as per [databind#1368]
    public Object getProcessor() { return _processor; }

    @Override
    public String getLocalizedMessage() {
        return _buildMessage();
    }
    
    /**
     * Method is overridden so that we can properly inject description
     * of problem path, if such is defined.
     */
    @Override
    public String getMessage() {
        int PROBE_START_LINE_487 = 487;
		String json_mapping_exception_1_expr57_line_487 = _buildMessage();
		int PROBE_END_LINE_487 = 487;
		return json_mapping_exception_1_expr57_line_487;
    }

    protected String _buildMessage()
    {
        int PROBE_START_LINE_493 = 493;
		String json_mapping_exception_1_expr58_line_493 = super.getMessage();
		int PROBE_END_LINE_493 = 493;
		// First: if we have no path info, let's just use parent's definition as is
        String msg = json_mapping_exception_1_expr58_line_493;
        int PROBE_START_LINE_494 = 496;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_600_line_494 = _path;
		boolean json_mapping_exception_1_expr59_line_494 = f__path_600_line_494 == null;
		int PROBE_END_LINE_494 = 496;
		if (json_mapping_exception_1_expr59_line_494) {
            return msg;
        }
        int PROBE_START_LINE_497 = 497;
		String v_msg_602_line_497 = msg;
		boolean json_mapping_exception_1_expr64_line_497 = v_msg_602_line_497 == null;
		boolean json_mapping_exception_1_expr61_line_497 = (json_mapping_exception_1_expr64_line_497);
		String v_msg_602_line_497_v1 = null;
		if (!json_mapping_exception_1_expr61_line_497) {
			v_msg_602_line_497_v1 = msg;
		}
		StringBuilder json_mapping_exception_1_expr60_line_497 = json_mapping_exception_1_expr61_line_497
				? new StringBuilder()
				: new StringBuilder(v_msg_602_line_497_v1);
		int PROBE_END_LINE_497 = 497;
		StringBuilder sb = json_mapping_exception_1_expr60_line_497;
        int PROBE_START_LINE_503 = 503;
		StringBuilder v_sb_603_line_503 = sb;
		int PROBE_END_LINE_503 = 503;
		/* 18-Feb-2009, tatu: initially there was a linefeed between
         *    message and path reference; but unfortunately many systems
         *   (loggers, junit) seem to assume linefeeds are only added to
         *   separate stack trace.
         */
        v_sb_603_line_503.append(" (through reference chain: ");
        int PROBE_START_LINE_504 = 504;
		StringBuilder v_sb_603_line_504 = sb;
		StringBuilder json_mapping_exception_1_expr67_line_504 = getPathReference(v_sb_603_line_504);
		int PROBE_END_LINE_504 = 504;
		sb = json_mapping_exception_1_expr67_line_504;
        int PROBE_START_LINE_505 = 505;
		StringBuilder v_sb_603_line_505 = sb;
		int PROBE_END_LINE_505 = 505;
		v_sb_603_line_505.append(')');
        int PROBE_START_LINE_506 = 506;
		StringBuilder v_sb_603_line_506 = sb;
		String json_mapping_exception_1_expr69_line_506 = v_sb_603_line_506.toString();
		int PROBE_END_LINE_506 = 506;
		return json_mapping_exception_1_expr69_line_506;
    }

    @Override
    public String toString()
    {
        int PROBE_START_LINE_512 = 512;
		Class<? extends com.fasterxml.jackson.databind.JsonMappingException> json_mapping_exception_1_expr72_line_512 = getClass();
		String json_mapping_exception_1_expr71_line_512 = json_mapping_exception_1_expr72_line_512.getName();
		String json_mapping_exception_1_expr73_line_512 = getMessage();
		String json_mapping_exception_1_expr70_line_512 = json_mapping_exception_1_expr71_line_512 + ": "
				+ json_mapping_exception_1_expr73_line_512;
		int PROBE_END_LINE_512 = 512;
		return json_mapping_exception_1_expr70_line_512;
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    protected void _appendPathDesc(StringBuilder sb)
    {
        int PROBE_START_LINE_523 = 525;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_600_line_523 = _path;
		boolean json_mapping_exception_1_expr74_line_523 = f__path_600_line_523 == null;
		int PROBE_END_LINE_523 = 525;
		if (json_mapping_exception_1_expr74_line_523) {
            return;
        }
        int PROBE_START_LINE_526 = 526;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_600_line_526 = _path;
		Iterator<Reference> json_mapping_exception_1_expr75_line_526 = f__path_600_line_526.iterator();
		int PROBE_END_LINE_526 = 526;
		Iterator<Reference> it = json_mapping_exception_1_expr75_line_526;
        while (true) {
            int PROBE_START_LINE_527 = 527;
			Iterator<com.fasterxml.jackson.databind.JsonMappingException.Reference> v_it_605_line_527 = it;
			boolean json_mapping_exception_1_expr76_line_527 = v_it_605_line_527.hasNext();
			if (!(json_mapping_exception_1_expr76_line_527)) {
				break;
			}
			int PROBE_END_LINE_527 = 527;
			int PROBE_START_LINE_528 = 528;
			StringBuilder p_sb_604_line_528 = sb;
			Iterator<com.fasterxml.jackson.databind.JsonMappingException.Reference> v_it_605_line_528 = it;
			com.fasterxml.jackson.databind.JsonMappingException.Reference json_mapping_exception_1_expr79_line_528 = v_it_605_line_528
					.next();
			String json_mapping_exception_1_expr78_line_528 = json_mapping_exception_1_expr79_line_528.toString();
			int PROBE_END_LINE_528 = 528;
			p_sb_604_line_528.append(json_mapping_exception_1_expr78_line_528);
            int PROBE_START_LINE_529 = 531;
			Iterator<com.fasterxml.jackson.databind.JsonMappingException.Reference> v_it_605_line_529 = it;
			boolean json_mapping_exception_1_expr80_line_529 = v_it_605_line_529.hasNext();
			int PROBE_END_LINE_529 = 531;
			if (json_mapping_exception_1_expr80_line_529) {
                int PROBE_START_LINE_530 = 530;
				StringBuilder p_sb_604_line_530 = sb;
				int PROBE_END_LINE_530 = 530;
				p_sb_604_line_530.append("->");
            }
        }
    }
}
