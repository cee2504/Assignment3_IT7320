

public class EmployeeMain implements EmployeeInterface{

	EmployeeInterface o;
	
	public int computeTax(int amount) {
		// TODO Auto-generated method stub
		return o.computeTax(amount);
	}

	public int weeklySalary(Employee emp) {
		// TODO Auto-generated method stub
		return o.weeklySalary(emp);
	}

	public int fortnightSalary(Employee emp) {
		// TODO Auto-generated method stub
		return o.fortnightSalary(emp);
	}

	public int computeKiwiSaver(Employee emp) {
		// TODO Auto-generated method stub
		return o.computeKiwiSaver(emp);
	}

	public void setO(EmployeeInterface o) {
		this.o = o;
	}

	
}
