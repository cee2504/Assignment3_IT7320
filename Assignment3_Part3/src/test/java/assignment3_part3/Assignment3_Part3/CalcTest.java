package assignment3_part3.Assignment3_Part3;

import static org.junit.Assert.*;

import org.junit.Test;

public class CalcTest {

	MainCalc obj = new MainCalc();
	
	@Test
	public void testAdd() {
		int a = 3;
		int b = 4;
		
		int sum = obj.add(a, b);
		
		assertEquals(7, sum);
	}
	
	@Test
	public void testSub() {
		int a = 4;
		int b = 3;
		
		int sub = obj.substract(a, b);
		
		assertEquals(1, sub);
	}
	
	@Test
	public void testMulti() {
		
		int a = 4;
		int b = 3;
		
		int multi = obj.multiply(a, b);
		
		assertEquals(12, multi);
	}
	
	@Test
	public void testDiv() {
		
		int a = 6;
		int b = 3;
		
		int div = obj.division(a, b);
		
		assertEquals(2, div);
	}
	
	@Test
	public void testSin() {
		
		double a = 90;
		
		double sinA = obj.sin(a);
		
		assertEquals(1, sinA, 0.2);
	}
	
	@Test
	public void testCos() {
		
		double a = 0;
		
		double cosA = obj.cos(a);
		
		assertEquals(1, cosA,0.2);
	}
	


}
