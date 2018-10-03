package assignment3_part1.Assignment3_Part1;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;
import org.mockito.Mockito.*;

public class EmployeeTest {

	EmployeeInterface o; //interface
	EmployeeMain a; //implementation
	
	int amount;
	Employee emp;
		
	
	@Before
	public void setUp() throws Exception {
		a = new EmployeeMain();
		amount = 30; //one day salary
		
		emp = new Employee(210, 420, 3);
		
		//Initialize the mock object
		o = Mockito.mock(EmployeeInterface.class);
		Mockito.when(o.computeTax(amount)).thenReturn(10);	
		
		Mockito.when(o.weeklySalary(emp)).thenReturn(210);
		Mockito.when(o.fortnightSalary(emp)).thenReturn(420);
		Mockito.when(o.computeKiwiSaver(emp)).thenReturn(3);
		
		a.setO(o);
		
		
	}

	@After
	public void tearDown() throws Exception {
		o = null;
		a = null;
		
		
	}

	
	@Test
	public void testComputeTax() {
		int actual = (a.computeTax(amount));
		int expected = amount/3;
//		assertEquals((amount / 3), a.computeTax(amount / 3));
		assertEquals(expected, actual);
	}
		
	@Test
	public void testWeeklySalary() {
		
		assertEquals((amount * 7), a.weeklySalary(emp));
	}
		
	@Test
	public void testFortnightSalary() {
		assertEquals((amount * 14), a.fortnightSalary(emp));
	}
		
	@Test
	public void testComputeKiwiSaver() {
		assertEquals((amount / 10), a.computeKiwiSaver(emp));
	}


}
