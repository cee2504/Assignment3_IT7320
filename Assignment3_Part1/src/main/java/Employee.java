

public class Employee {

	int weeklySalary;
	int fortnightSalary;
	int computeKiwiSaver;
	
	public Employee(int weeklySalary, int fortnightSalary, int computeKiwiSaver) {
		super();
		this.weeklySalary = weeklySalary;
		this.fortnightSalary = fortnightSalary;
		this.computeKiwiSaver = computeKiwiSaver;
	}

	
	public int getWeeklySalary() {
		return weeklySalary;
	}

	public void setWeeklySalary(int weeklySalary) {
		this.weeklySalary = weeklySalary;
	}

	public int getFortnightSalary() {
		return fortnightSalary;
	}

	public void setFortnightSalary(int fortnightSalary) {
		this.fortnightSalary = fortnightSalary;
	}

	public int getComputeKiwiSaver() {
		return computeKiwiSaver;
	}

	public void setComputeKiwiSaver(int computeKiwiSaver) {
		this.computeKiwiSaver = computeKiwiSaver;
	}
		
	
	
}
