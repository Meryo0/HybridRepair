/* ===========================================================
 * JFreeChart : a free chart library for the Java(tm) platform
 * ===========================================================
 *
 * (C) Copyright 2000-2008, by Object Refinery Limited and Contributors.
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
 * ----------------------------------------
 * DefaultIntervalCategoryDatasetTests.java
 * ----------------------------------------
 * (C) Copyright 2007, 2008, by Object Refinery Limited and Contributors.
 *
 * Original Author:  David Gilbert (for Object Refinery Limited);
 * Contributor(s):   -;
 *
 * Changes
 * -------
 * 08-Mar-2007 : Version 1 (DG);
 * 25-Feb-2008 : Added new tests to check behaviour of an empty dataset (DG);
 * 
 */

package org.jfree.data.category.junit;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.util.List;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

import org.jfree.data.UnknownKeyException;
import org.jfree.data.category.DefaultIntervalCategoryDataset;

/**
 * Tests for the {@link DefaultIntervalCategoryDataset} class.
 */
public class DefaultIntervalCategoryDatasetTests extends TestCase {
    
    /**
     * Returns the tests as a test suite.
     *
     * @return The test suite.
     */
    public static Test suite() {
        return new TestSuite(DefaultIntervalCategoryDatasetTests.class);
    }

    /**
     * Constructs a new set of tests.
     *
     * @param name  the name of the tests.
     */
    public DefaultIntervalCategoryDatasetTests(String name) {
        super(name);
    }
    
    /**
     * Some checks for the getValue() method.
     */
    public void testGetValue() {        
        double[] starts_S1 = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2 = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1 = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2 = new double[] {0.7, 0.8, 0.9};
        double[][] starts = new double[][] {starts_S1, starts_S2};
        double[][] ends = new double[][] {ends_S1, ends_S2};
        DefaultIntervalCategoryDataset d 
                = new DefaultIntervalCategoryDataset(starts, ends);        

        assertEquals(new Double(0.1), d.getStartValue("Series 1", 
                "Category 1"));
        assertEquals(new Double(0.2), d.getStartValue("Series 1", 
                "Category 2"));
        assertEquals(new Double(0.3), d.getStartValue("Series 1", 
                "Category 3"));
        assertEquals(new Double(0.3), d.getStartValue("Series 2", 
                "Category 1"));
        assertEquals(new Double(0.4), d.getStartValue("Series 2", 
                "Category 2"));
        assertEquals(new Double(0.5), d.getStartValue("Series 2", 
                "Category 3"));
        
        assertEquals(new Double(0.5), d.getEndValue("Series 1", 
                "Category 1"));
        assertEquals(new Double(0.6), d.getEndValue("Series 1", 
                "Category 2"));
        assertEquals(new Double(0.7), d.getEndValue("Series 1", 
                "Category 3"));
        assertEquals(new Double(0.7), d.getEndValue("Series 2", 
                "Category 1"));
        assertEquals(new Double(0.8), d.getEndValue("Series 2", 
                "Category 2"));
        assertEquals(new Double(0.9), d.getEndValue("Series 2", 
                "Category 3"));

        boolean pass = false;
        try {
            d.getValue("XX", "Category 1");
        }
        catch (UnknownKeyException e) {
            pass = true;   
        }
        assertTrue(pass);
        
        pass = false;
        try {
            d.getValue("Series 1", "XX");
        }
        catch (UnknownKeyException e) {
            pass = true;   
        }
        assertTrue(pass);
    }
    
   
    /**
     * Some tests for the getRowCount() method.
     */
    public void testGetRowAndColumnCount() {
        double[] starts_S1 = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2 = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1 = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2 = new double[] {0.7, 0.8, 0.9};
        double[][] starts = new double[][] {starts_S1, starts_S2};
        double[][] ends = new double[][] {ends_S1, ends_S2};
        DefaultIntervalCategoryDataset d 
                = new DefaultIntervalCategoryDataset(starts, ends);        

        assertEquals(2, d.getRowCount());
        assertEquals(3, d.getColumnCount());
    }

    /**
     * Confirm that the equals method can distinguish all the required fields.
     */
    public void testEquals() {
        double[] starts_S1A = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2A = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1A = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2A = new double[] {0.7, 0.8, 0.9};
        double[][] startsA = new double[][] {starts_S1A, starts_S2A};
        double[][] endsA = new double[][] {ends_S1A, ends_S2A};
        DefaultIntervalCategoryDataset dA 
                = new DefaultIntervalCategoryDataset(startsA, endsA);        

        double[] starts_S1B = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2B = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1B = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2B = new double[] {0.7, 0.8, 0.9};
        double[][] startsB = new double[][] {starts_S1B, starts_S2B};
        double[][] endsB = new double[][] {ends_S1B, ends_S2B};
        DefaultIntervalCategoryDataset dB 
                = new DefaultIntervalCategoryDataset(startsB, endsB);        
            
        assertTrue(dA.equals(dB));
        assertTrue(dB.equals(dA));
        
        // check that two empty datasets are equal
    	DefaultIntervalCategoryDataset empty1 
                = new DefaultIntervalCategoryDataset(new double[0][0], 
        		        new double[0][0]);
    	DefaultIntervalCategoryDataset empty2 
                = new DefaultIntervalCategoryDataset(new double[0][0], 
		                new double[0][0]);
    	assertTrue(empty1.equals(empty2));
    }

    /**
     * Serialize an instance, restore it, and check for equality.
     */
    public void testSerialization() {

        double[] starts_S1 = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2 = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1 = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2 = new double[] {0.7, 0.8, 0.9};
        double[][] starts = new double[][] {starts_S1, starts_S2};
        double[][] ends = new double[][] {ends_S1, ends_S2};
        DefaultIntervalCategoryDataset d1
                = new DefaultIntervalCategoryDataset(starts, ends);        
        DefaultIntervalCategoryDataset d2 = null;

        try {
            ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            ObjectOutput out = new ObjectOutputStream(buffer);
            out.writeObject(d1);
            out.close();

            ObjectInput in = new ObjectInputStream(
                    new ByteArrayInputStream(buffer.toByteArray()));
            d2 = (DefaultIntervalCategoryDataset) in.readObject();
            in.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        assertEquals(d1, d2);

    }
    
    /**
     * Confirm that cloning works.
     */
    public void testCloning() {
        double[] starts_S1 = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2 = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1 = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2 = new double[] {0.7, 0.8, 0.9};
        double[][] starts = new double[][] {starts_S1, starts_S2};
        double[][] ends = new double[][] {ends_S1, ends_S2};
        DefaultIntervalCategoryDataset d1 = new DefaultIntervalCategoryDataset(
                starts, ends);
        DefaultIntervalCategoryDataset d2 = null;
        try {
            d2 = (DefaultIntervalCategoryDataset) d1.clone();
        }
        catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
        assertTrue(d1 != d2);
        assertTrue(d1.getClass() == d2.getClass());
        assertTrue(d1.equals(d2));
        
        // check that the clone doesn't share the same underlying arrays.
        d1.setStartValue(0, "Category 1", new Double(0.99));
        assertFalse(d1.equals(d2));
        d2.setStartValue(0, "Category 1", new Double(0.99));
        assertTrue(d1.equals(d2));
    }
    
    /**
     * A check to ensure that an empty dataset can be cloned.
     */
    public void testCloning2() {
    	DefaultIntervalCategoryDataset d1 
                = new DefaultIntervalCategoryDataset(new double[0][0], 
        		    new double[0][0]);
        DefaultIntervalCategoryDataset d2 = null;
        try {
            int PROBE_START_LINE_265 = 265;
			org.jfree.data.category.DefaultIntervalCategoryDataset v_d_1_69_line_265 = d1;
			Object default_interval_category_dataset_tests_1_expr7_line_265 = v_d_1_69_line_265.clone();
			int PROBE_END_LINE_265 = 265;
			d2 = (DefaultIntervalCategoryDataset) default_interval_category_dataset_tests_1_expr7_line_265;
        }
        catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
        assertTrue(d1 != d2);
        assertTrue(d1.getClass() == d2.getClass());
        assertTrue(d1.equals(d2));	
    }

    /**
     * Some basic checks for the setStartValue() method.
     */
    public void testSetStartValue() {
        double[] starts_S1 = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2 = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1 = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2 = new double[] {0.7, 0.8, 0.9};
        double[][] starts = new double[][] {starts_S1, starts_S2};
        double[][] ends = new double[][] {ends_S1, ends_S2};
        DefaultIntervalCategoryDataset d1 = new DefaultIntervalCategoryDataset(
                starts, ends);
        d1.setStartValue(0, "Category 2", new Double(99.9));
        assertEquals(new Double(99.9), d1.getStartValue("Series 1", 
                "Category 2"));
        
        boolean pass = false;
        try {
            d1.setStartValue(-1, "Category 2", new Double(99.9));
        }
        catch (IllegalArgumentException e) {
            pass = true;
        }
        assertTrue(pass);
        
        pass = false;
        try {
            d1.setStartValue(2, "Category 2", new Double(99.9));
        }
        catch (IllegalArgumentException e) {
            pass = true;
        }
        assertTrue(pass);
    }
   
    /**
     * Some basic checks for the setEndValue() method.
     */
    public void testSetEndValue() {
        double[] starts_S1 = new double[] {0.1, 0.2, 0.3};
        double[] starts_S2 = new double[] {0.3, 0.4, 0.5};
        double[] ends_S1 = new double[] {0.5, 0.6, 0.7};
        double[] ends_S2 = new double[] {0.7, 0.8, 0.9};
        double[][] starts = new double[][] {starts_S1, starts_S2};
        double[][] ends = new double[][] {ends_S1, ends_S2};
        DefaultIntervalCategoryDataset d1 = new DefaultIntervalCategoryDataset(
                starts, ends);
        d1.setEndValue(0, "Category 2", new Double(99.9));
        assertEquals(new Double(99.9), d1.getEndValue("Series 1", 
                "Category 2"));
        
        boolean pass = false;
        try {
            d1.setEndValue(-1, "Category 2", new Double(99.9));
        }
        catch (IllegalArgumentException e) {
            pass = true;
        }
        assertTrue(pass);
        
        pass = false;
        try {
            d1.setEndValue(2, "Category 2", new Double(99.9));
        }
        catch (IllegalArgumentException e) {
            pass = true;
        }
        assertTrue(pass);
    }
    
    /**
     * Some checks for the getSeriesCount() method.
     */
    public void testGetSeriesCount() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	assertEquals(0, empty.getSeriesCount());
    }

    /**
     * Some checks for the getCategoryCount() method.
     */
    public void testGetCategoryCount() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	assertEquals(0, empty.getCategoryCount());
    }
    
    /**
     * Some checks for the getSeriesIndex() method.
     */
    public void testGetSeriesIndex() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	int PROBE_START_LINE_375 = 375;
		int default_interval_category_dataset_tests_1_expr10_line_375 = -1;
		org.jfree.data.category.DefaultIntervalCategoryDataset v_empty_71_line_375 = empty;
		int default_interval_category_dataset_tests_1_expr11_line_375 = v_empty_71_line_375.getSeriesIndex("ABC");
		int PROBE_END_LINE_375 = 375;
		assertEquals(default_interval_category_dataset_tests_1_expr10_line_375, default_interval_category_dataset_tests_1_expr11_line_375);
    }
    
    /**
     * Some checks for the getRowIndex() method.
     */
    public void testGetRowIndex() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	int PROBE_START_LINE_386 = 386;
		int default_interval_category_dataset_tests_1_expr14_line_386 = -1;
		org.jfree.data.category.DefaultIntervalCategoryDataset v_empty_72_line_386 = empty;
		int default_interval_category_dataset_tests_1_expr15_line_386 = v_empty_72_line_386.getRowIndex("ABC");
		int PROBE_END_LINE_386 = 386;
		assertEquals(default_interval_category_dataset_tests_1_expr14_line_386, default_interval_category_dataset_tests_1_expr15_line_386);
    }

    /**
     * Some checks for the setSeriesKeys() method.
     */
    public void testSetSeriesKeys() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	boolean pass = true;
    	try {
    		empty.setSeriesKeys(new String[0]);
    	}
    	catch (RuntimeException e) {
    		pass = false;
    	}
    	assertTrue(pass);
    }
    
    /**
     * Some checks for the getCategoryIndex() method.
     */
    public void testGetCategoryIndex() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	int PROBE_START_LINE_415 = 415;
		int default_interval_category_dataset_tests_1_expr18_line_415 = -1;
		org.jfree.data.category.DefaultIntervalCategoryDataset v_empty_73_line_415 = empty;
		int default_interval_category_dataset_tests_1_expr19_line_415 = v_empty_73_line_415.getCategoryIndex("ABC");
		int PROBE_END_LINE_415 = 415;
		assertEquals(default_interval_category_dataset_tests_1_expr18_line_415, default_interval_category_dataset_tests_1_expr19_line_415);
    }
    
    /**
     * Some checks for the getColumnIndex() method.
     */
    public void testGetColumnIndex() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	int PROBE_START_LINE_426 = 426;
		int default_interval_category_dataset_tests_1_expr22_line_426 = -1;
		org.jfree.data.category.DefaultIntervalCategoryDataset v_empty_74_line_426 = empty;
		int default_interval_category_dataset_tests_1_expr23_line_426 = v_empty_74_line_426.getColumnIndex("ABC");
		int PROBE_END_LINE_426 = 426;
		assertEquals(default_interval_category_dataset_tests_1_expr22_line_426, default_interval_category_dataset_tests_1_expr23_line_426);
    }

    /**
     * Some checks for the setCategoryKeys() method.
     */
    public void testSetCategoryKeys() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
    	boolean pass = true;
    	try {
    		empty.setCategoryKeys(new String[0]);
    	}
    	catch (RuntimeException e) {
    		pass = false;
    	}
    	assertTrue(pass);
    }

    /**
     * Some checks for the getColumnKeys() method.
     */
    public void testGetColumnKeys() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
        List keys = empty.getColumnKeys();
        assertEquals(0, keys.size());
    }
    
    /**
     * Some checks for the getRowKeys() method.
     */
    public void testGetRowKeys() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
        List keys = empty.getRowKeys();
        assertEquals(0, keys.size());
    }
    
    /**
     * Some checks for the getColumnCount() method.
     */
    public void testGetColumnCount() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
        int PROBE_START_LINE_479 = 479;
		org.jfree.data.category.DefaultIntervalCategoryDataset v_empty_75_line_479 = empty;
		int default_interval_category_dataset_tests_1_expr26_line_479 = v_empty_75_line_479.getColumnCount();
		int PROBE_END_LINE_479 = 479;
		assertEquals(0, default_interval_category_dataset_tests_1_expr26_line_479);
    }
    
    /**
     * Some checks for the getRowCount() method.
     */
    public void testGetRowCount() {
    	// check an empty dataset
    	DefaultIntervalCategoryDataset empty 
    	        = new DefaultIntervalCategoryDataset(new double[0][0], 
    	        		new double[0][0]);
        int PROBE_START_LINE_490 = 490;
		org.jfree.data.category.DefaultIntervalCategoryDataset v_empty_76_line_490 = empty;
		int default_interval_category_dataset_tests_1_expr29_line_490 = v_empty_76_line_490.getColumnCount();
		int PROBE_END_LINE_490 = 490;
		assertEquals(0, default_interval_category_dataset_tests_1_expr29_line_490);
    }
    
}
