package com.fasterxml.jackson.databind;

import java.io.IOException;
import java.io.Serializable;
import java.util.*;

import com.fasterxml.jackson.core.*;
import java.util.Iterator;
import java.util.LinkedList;

/**
 * Checked exception used to signal fatal problems with mapping of
 * content.
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
        private static final long serialVersionUID = 1L;

        /**
         * Object through which reference was resolved. Can be either
         * actual instance (usually the case for serialization), or
         * Class (usually the case for deserialization).
         */
        protected Object _from;

        /**
         * Name of field (for beans) or key (for Maps) that is part
         * of the reference. May be null for Collection types (which
         * generally have {@link #_index} defined), or when resolving
         * Map classes without (yet) having an instance to operate on.
         */
        protected String _fieldName;

        int PROBE_START_LINE_59 = 65;

		protected int json_mapping_exception_1_expr1_line_65 = -1;

		int PROBE_END_LINE_59 = 65;

		/**
         * Index within a {@link Collection} instance that contained
         * the reference; used if index is relevant and available.
         * If either not applicable, or not available, -1 is used to
         * denote "not known".
         */
        protected int _index = json_mapping_exception_1_expr1_line_65;

        /**
         * Default constructor for deserialization/sub-classing purposes
         */
        protected Reference() { }

        public Reference(Object from) { _from = from; }

        public Reference(Object from, String fieldName) {
            int PROBE_START_LINE_75 = 75;
			Object p_from_412_line_75 = from;
			int PROBE_END_LINE_75 = 75;
			_from = p_from_412_line_75;
            int PROBE_START_LINE_76 = 78;
			String p_field_name_413_line_76 = fieldName;
			boolean json_mapping_exception_1_expr3_line_76 = p_field_name_413_line_76 == null;
			int PROBE_END_LINE_76 = 78;
			if (json_mapping_exception_1_expr3_line_76) {
                throw new NullPointerException("Can not pass null fieldName");
            }
            int PROBE_START_LINE_79 = 79;
			String p_field_name_413_line_79 = fieldName;
			int PROBE_END_LINE_79 = 79;
			_fieldName = p_field_name_413_line_79;
        }

        public Reference(Object from, int index) {
            _from = from;
            _index = index;
        }

        public void setFrom(Object o) { _from = o; }
        public void setFieldName(String n) { _fieldName = n; }
        public void setIndex(int ix) { _index = ix; }

        public Object getFrom() { return _from; }
        public String getFieldName() { return _fieldName; }
        public int getIndex() { return _index; }

        @Override public String toString() {
            StringBuilder sb = new StringBuilder();
            int PROBE_START_LINE_97 = 98;
			Object f__from_414_line_97 = _from;
			boolean json_mapping_exception_1_expr10_line_97 = f__from_414_line_97 instanceof Class<?>;
			boolean json_mapping_exception_1_expr7_line_97 = (json_mapping_exception_1_expr10_line_97);
			Class<?> json_mapping_exception_1_expr6_line_97 = json_mapping_exception_1_expr7_line_97
					? ((Class<?>) _from)
					: _from.getClass();
			int PROBE_END_LINE_97 = 98;
			Class<?> cls = json_mapping_exception_1_expr6_line_97;
            int PROBE_START_LINE_103 = 103;
			Class<?> v_cls_422_line_103 = cls;
			Package json_mapping_exception_1_expr11_line_103 = v_cls_422_line_103.getPackage();
			int PROBE_END_LINE_103 = 103;
			/* Hmmh. Although Class.getName() is mostly ok, it does look
             * butt-ugly for arrays. So let's use getSimpleName() instead;
             * but have to prepend package name too.
             */
            Package pkg = json_mapping_exception_1_expr11_line_103;
            int PROBE_START_LINE_104 = 107;
			Package v_pkg_423_line_104 = pkg;
			boolean json_mapping_exception_1_expr12_line_104 = v_pkg_423_line_104 != null;
			int PROBE_END_LINE_104 = 107;
			if (json_mapping_exception_1_expr12_line_104) {
                int PROBE_START_LINE_105 = 105;
				StringBuilder v_sb_421_line_105 = sb;
				Package v_pkg_423_line_105 = pkg;
				String json_mapping_exception_1_expr14_line_105 = v_pkg_423_line_105.getName();
				int PROBE_END_LINE_105 = 105;
				v_sb_421_line_105.append(json_mapping_exception_1_expr14_line_105);
                int PROBE_START_LINE_106 = 106;
				StringBuilder v_sb_421_line_106 = sb;
				int PROBE_END_LINE_106 = 106;
				v_sb_421_line_106.append('.');
            }
            int PROBE_START_LINE_108 = 108;
			StringBuilder v_sb_421_line_108 = sb;
			Class<?> v_cls_422_line_108 = cls;
			String json_mapping_exception_1_expr17_line_108 = v_cls_422_line_108.getSimpleName();
			int PROBE_END_LINE_108 = 108;
			v_sb_421_line_108.append(json_mapping_exception_1_expr17_line_108);
            int PROBE_START_LINE_109 = 109;
			StringBuilder v_sb_421_line_109 = sb;
			int PROBE_END_LINE_109 = 109;
			v_sb_421_line_109.append('[');
            int PROBE_START_LINE_110 = 118;
			String f__field_name_415_line_110 = _fieldName;
			boolean json_mapping_exception_1_expr19_line_110 = f__field_name_415_line_110 != null;
			int PROBE_END_LINE_110 = 118;
			if (json_mapping_exception_1_expr19_line_110) {
                int PROBE_START_LINE_111 = 111;
				StringBuilder v_sb_421_line_111 = sb;
				int PROBE_END_LINE_111 = 111;
				v_sb_421_line_111.append('"');
                int PROBE_START_LINE_112 = 112;
				StringBuilder v_sb_421_line_112 = sb;
				String f__field_name_415_line_112 = _fieldName;
				int PROBE_END_LINE_112 = 112;
				v_sb_421_line_112.append(f__field_name_415_line_112);
                int PROBE_START_LINE_113 = 113;
				StringBuilder v_sb_421_line_113 = sb;
				int PROBE_END_LINE_113 = 113;
				v_sb_421_line_113.append('"');
            } else if (_index >= 0) {
                sb.append(_index);
            } else {
                sb.append('?');
            }
            int PROBE_START_LINE_119 = 119;
			StringBuilder v_sb_421_line_119 = sb;
			int PROBE_END_LINE_119 = 119;
			v_sb_421_line_119.append(']');
            int PROBE_START_LINE_120 = 120;
			StringBuilder v_sb_421_line_120 = sb;
			String json_mapping_exception_1_expr24_line_120 = v_sb_421_line_120.toString();
			int PROBE_END_LINE_120 = 120;
			return json_mapping_exception_1_expr24_line_120;
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

    /*
    /**********************************************************
    /* Life-cycle
    /**********************************************************
     */

    public JsonMappingException(String msg) { super(msg); }
    public JsonMappingException(String msg, Throwable rootCause) { super(msg, rootCause); }
    public JsonMappingException(String msg, JsonLocation loc) { super(msg, loc); }
    public JsonMappingException(String msg, JsonLocation loc, Throwable rootCause) { super(msg, loc, rootCause); }

    public static JsonMappingException from(JsonParser jp, String msg) {
        return new JsonMappingException(msg, ((jp == null) ? null : jp.getTokenLocation()));
    }

    public static JsonMappingException from(JsonParser jp, String msg, Throwable problem) {
        return new JsonMappingException(msg, ((jp == null) ? null : jp.getTokenLocation()), problem);
    }
    
    /**
     * Factory method used when "upgrading" an {@link IOException} into
     * {@link JsonMappingException}: usually only needed to comply with
     * a signature.
     * 
     * @since 2.1
     */
    public static JsonMappingException fromUnexpectedIOE(IOException src) {
        return new JsonMappingException("Unexpected IOException (of type "
                +src.getClass().getName()+"): "+src.getMessage(), (JsonLocation)null, src);
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
        int PROBE_START_LINE_177 = 177;
				Throwable p_src_438_line_177 = src;
				Object p_ref_from_439_line_177 = refFrom;
				String p_ref_field_name_440_line_177 = refFieldName;
				com.fasterxml.jackson.databind.JsonMappingException json_mapping_exception_1_expr26_line_177 = wrapWithPath(
						p_src_438_line_177, new Reference(p_ref_from_439_line_177, p_ref_field_name_440_line_177));
				int PROBE_END_LINE_177 = 177;
		return json_mapping_exception_1_expr26_line_177;
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
        return wrapWithPath(src, new Reference(refFrom, index));
    }

    /**
     * Method that can be called to either create a new JsonMappingException
     * (if underlying exception is not a JsonMappingException), or augment
     * given exception with given path/reference information.
     */
    public static JsonMappingException wrapWithPath(Throwable src, Reference ref)
    {
        JsonMappingException jme = null;
        int PROBE_START_LINE_200 = 211;
		Throwable p_src_444_line_200 = src;
		boolean json_mapping_exception_1_expr28_line_200 = p_src_444_line_200 instanceof JsonMappingException;
		int PROBE_END_LINE_200 = 211;
		if (json_mapping_exception_1_expr28_line_200) {
            jme = (JsonMappingException) src;
        } else {
            int PROBE_START_LINE_203 = 203;
			Throwable p_src_444_line_203 = src;
			String json_mapping_exception_1_expr29_line_203 = p_src_444_line_203.getMessage();
			int PROBE_END_LINE_203 = 203;
			String msg = json_mapping_exception_1_expr29_line_203;
            int PROBE_START_LINE_207 = 209;
			String v_msg_446_line_207 = msg;
			boolean json_mapping_exception_1_expr31_line_207 = v_msg_446_line_207 == null;
			boolean json_mapping_exception_1_expr32_line_207 = false;
			if (!json_mapping_exception_1_expr31_line_207) {
				String v_msg_446_line_207_v1 = msg;
				int json_mapping_exception_1_expr33_line_207 = v_msg_446_line_207_v1.length();
				json_mapping_exception_1_expr32_line_207 = json_mapping_exception_1_expr33_line_207 == 0;
			}
			boolean json_mapping_exception_1_expr30_line_207 = json_mapping_exception_1_expr31_line_207
					|| json_mapping_exception_1_expr32_line_207;
			int PROBE_END_LINE_207 = 209;
			/* Related to [JACKSON-62], let's use a more meaningful placeholder
             * if all we have is null
             */
            if (json_mapping_exception_1_expr30_line_207) {
                msg = "(was "+src.getClass().getName()+")";
            }
            int PROBE_START_LINE_210 = 210;
			String v_msg_446_line_210 = msg;
			Throwable p_src_444_line_210 = src;
			int PROBE_END_LINE_210 = 210;
			jme = new JsonMappingException(v_msg_446_line_210, null, p_src_444_line_210);
        }
        int PROBE_START_LINE_212 = 212;
		com.fasterxml.jackson.databind.JsonMappingException v_jme_447_line_212 = jme;
		com.fasterxml.jackson.databind.JsonMappingException.Reference p_ref_445_line_212 = ref;
		int PROBE_END_LINE_212 = 212;
		v_jme_447_line_212.prependPath(p_ref_445_line_212);
        int PROBE_START_LINE_213 = 213;
		com.fasterxml.jackson.databind.JsonMappingException v_jme_447_line_213 = jme;
		int PROBE_END_LINE_213 = 213;
		return v_jme_447_line_213;
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
     * Method for accesing description of path that lead to the
     * problem that triggered this exception
     */
    public String getPathReference()
    {
        return getPathReference(new StringBuilder()).toString();
    }

    public StringBuilder getPathReference(StringBuilder sb)
    {
        int PROBE_START_LINE_245 = 245;
		StringBuilder p_sb_448_line_245 = sb;
		int PROBE_END_LINE_245 = 245;
		_appendPathDesc(p_sb_448_line_245);
        int PROBE_START_LINE_246 = 246;
		StringBuilder p_sb_448_line_246 = sb;
		int PROBE_END_LINE_246 = 246;
		return p_sb_448_line_246;
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
        int PROBE_START_LINE_270 = 272;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_454_line_270 = _path;
		boolean json_mapping_exception_1_expr38_line_270 = f__path_454_line_270 == null;
		int PROBE_END_LINE_270 = 272;
		if (json_mapping_exception_1_expr38_line_270) {
            _path = new LinkedList<Reference>();
        }
        int PROBE_START_LINE_277 = 279;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_454_line_277 = _path;
		int json_mapping_exception_1_expr42_line_277 = f__path_454_line_277.size();
		int f_max_refs_to_list_455_line_277 = MAX_REFS_TO_LIST;
		boolean json_mapping_exception_1_expr41_line_277 = json_mapping_exception_1_expr42_line_277 < f_max_refs_to_list_455_line_277;
		int PROBE_END_LINE_277 = 279;
		/* Also: let's not increase without bounds. Could choose either
         * head or tail; tail is easier (no need to ever remove), as
         * well as potentially more useful so let's use it:
         */
        if (json_mapping_exception_1_expr41_line_277) {
            int PROBE_START_LINE_278 = 278;
			LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_454_line_278 = _path;
			com.fasterxml.jackson.databind.JsonMappingException.Reference p_r_453_line_278 = r;
			int PROBE_END_LINE_278 = 278;
			f__path_454_line_278.addFirst(p_r_453_line_278);
        }
    }
    
    /*
    /**********************************************************
    /* Overridden methods
    /**********************************************************
     */

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
        int PROBE_START_LINE_299 = 299;
		String json_mapping_exception_1_expr44_line_299 = _buildMessage();
		int PROBE_END_LINE_299 = 299;
		return json_mapping_exception_1_expr44_line_299;
    }

    protected String _buildMessage()
    {
        int PROBE_START_LINE_307 = 307;
		String json_mapping_exception_1_expr45_line_307 = super.getMessage();
		int PROBE_END_LINE_307 = 307;
		/* First: if we have no path info, let's just use parent's
         * definition as is
         */
        String msg = json_mapping_exception_1_expr45_line_307;
        int PROBE_START_LINE_308 = 310;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_454_line_308 = _path;
		boolean json_mapping_exception_1_expr46_line_308 = f__path_454_line_308 == null;
		int PROBE_END_LINE_308 = 310;
		if (json_mapping_exception_1_expr46_line_308) {
            return msg;
        }
        int PROBE_START_LINE_311 = 311;
		String v_msg_456_line_311 = msg;
		boolean json_mapping_exception_1_expr51_line_311 = v_msg_456_line_311 == null;
		boolean json_mapping_exception_1_expr48_line_311 = (json_mapping_exception_1_expr51_line_311);
		String v_msg_456_line_311_v1 = null;
		if (!json_mapping_exception_1_expr48_line_311) {
			v_msg_456_line_311_v1 = msg;
		}
		StringBuilder json_mapping_exception_1_expr47_line_311 = json_mapping_exception_1_expr48_line_311
				? new StringBuilder()
				: new StringBuilder(v_msg_456_line_311_v1);
		int PROBE_END_LINE_311 = 311;
		StringBuilder sb = json_mapping_exception_1_expr47_line_311;
        int PROBE_START_LINE_317 = 317;
		StringBuilder v_sb_457_line_317 = sb;
		int PROBE_END_LINE_317 = 317;
		/* 18-Feb-2009, tatu: initially there was a linefeed between
         *    message and path reference; but unfortunately many systems
         *   (loggers, junit) seem to assume linefeeds are only added to
         *   separate stack trace.
         */
        v_sb_457_line_317.append(" (through reference chain: ");
        int PROBE_START_LINE_318 = 318;
		StringBuilder v_sb_457_line_318 = sb;
		StringBuilder json_mapping_exception_1_expr54_line_318 = getPathReference(v_sb_457_line_318);
		int PROBE_END_LINE_318 = 318;
		sb = json_mapping_exception_1_expr54_line_318;
        int PROBE_START_LINE_319 = 319;
		StringBuilder v_sb_457_line_319 = sb;
		int PROBE_END_LINE_319 = 319;
		v_sb_457_line_319.append(')');
        int PROBE_START_LINE_320 = 320;
		StringBuilder v_sb_457_line_320 = sb;
		String json_mapping_exception_1_expr56_line_320 = v_sb_457_line_320.toString();
		int PROBE_END_LINE_320 = 320;
		return json_mapping_exception_1_expr56_line_320;
    }

    @Override
    public String toString()
    {
        int PROBE_START_LINE_326 = 326;
		Class<? extends com.fasterxml.jackson.databind.JsonMappingException> json_mapping_exception_1_expr59_line_326 = getClass();
		String json_mapping_exception_1_expr58_line_326 = json_mapping_exception_1_expr59_line_326.getName();
		String json_mapping_exception_1_expr60_line_326 = getMessage();
		String json_mapping_exception_1_expr57_line_326 = json_mapping_exception_1_expr58_line_326 + ": "
				+ json_mapping_exception_1_expr60_line_326;
		int PROBE_END_LINE_326 = 326;
		return json_mapping_exception_1_expr57_line_326;
    }

    /*
    /**********************************************************
    /* Internal methods
    /**********************************************************
     */

    protected void _appendPathDesc(StringBuilder sb)
    {
        int PROBE_START_LINE_337 = 339;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_454_line_337 = _path;
		boolean json_mapping_exception_1_expr61_line_337 = f__path_454_line_337 == null;
		int PROBE_END_LINE_337 = 339;
		if (json_mapping_exception_1_expr61_line_337) {
            return;
        }
        int PROBE_START_LINE_340 = 340;
		LinkedList<com.fasterxml.jackson.databind.JsonMappingException.Reference> f__path_454_line_340 = _path;
		Iterator<Reference> json_mapping_exception_1_expr62_line_340 = f__path_454_line_340.iterator();
		int PROBE_END_LINE_340 = 340;
		Iterator<Reference> it = json_mapping_exception_1_expr62_line_340;
        while (true) {
            int PROBE_START_LINE_341 = 341;
			Iterator<com.fasterxml.jackson.databind.JsonMappingException.Reference> v_it_459_line_341 = it;
			boolean json_mapping_exception_1_expr63_line_341 = v_it_459_line_341.hasNext();
			if (!(json_mapping_exception_1_expr63_line_341)) {
				break;
			}
			int PROBE_END_LINE_341 = 341;
			int PROBE_START_LINE_342 = 342;
			StringBuilder p_sb_458_line_342 = sb;
			Iterator<com.fasterxml.jackson.databind.JsonMappingException.Reference> v_it_459_line_342 = it;
			com.fasterxml.jackson.databind.JsonMappingException.Reference json_mapping_exception_1_expr66_line_342 = v_it_459_line_342
					.next();
			String json_mapping_exception_1_expr65_line_342 = json_mapping_exception_1_expr66_line_342.toString();
			int PROBE_END_LINE_342 = 342;
			p_sb_458_line_342.append(json_mapping_exception_1_expr65_line_342);
            int PROBE_START_LINE_343 = 345;
			Iterator<com.fasterxml.jackson.databind.JsonMappingException.Reference> v_it_459_line_343 = it;
			boolean json_mapping_exception_1_expr67_line_343 = v_it_459_line_343.hasNext();
			int PROBE_END_LINE_343 = 345;
			if (json_mapping_exception_1_expr67_line_343) {
                sb.append("->");
            }
        }
    }
}
