package assignment3_part3.Assignment3_Part3;


import java.util.Scanner;

public class MainCalc {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);

		int num1;
		int num2;
		double degree;
		double amountNum;
		double percentNum;
		
		MainCalc obj = new MainCalc();

		obj.start();

		System.out.println("Operation: ");
		int choice = in.nextInt();

		while ((choice != 0)) {
			
			if ((choice == 1)) {
				System.out.println("Enter the first number: ");
				num1 = in.nextInt();
				System.out.println("Enter the second number: ");
				num2 = in.nextInt();

				System.out.println("The sum is " + obj.add(num1, num2));
				obj.start();
				choice = in.nextInt();
				
			} 
			else if ((choice == 2) ) {
				System.out.println("Enter the first number: ");
				num1 = in.nextInt();
				System.out.println("Enter the second number: ");
				num2 = in.nextInt();

				System.out.println("The sub is " + obj.substract(num1, num2));
				obj.start();
				choice = in.nextInt();
				
			} 
			else if ((choice == 3)) {
				System.out.println("Enter the first number: ");
				num1 = in.nextInt();
				System.out.println("Enter the second number: ");
				num2 = in.nextInt();

				System.out.println("The multiply is " + obj.multiply(num1, num2));
				obj.start();
				choice = in.nextInt();
				
			}
			else if ((choice == 4) ) {
				System.out.println("Enter the first number: ");
				num1 = in.nextInt();
				System.out.println("Enter the second number: ");
				num2 = in.nextInt();

				System.out.println("The division is " + obj.division(num1, num2));
				obj.start();
				choice = in.nextInt();
			}
			else if ((choice == 5) ) {
				System.out.println("Enter degree in radian: ");
				degree = in.nextDouble();
				System.out.println("Sine is: " + obj.sin(degree));
				obj.start();
				choice = in.nextInt();
				
			} 
			else if ((choice == 6) ) {
				System.out.println("Enter degree in radian: ");
				degree = in.nextDouble();
				System.out.println("Cosine is: " + obj.cos(degree));
				obj.start();
				choice = in.nextInt();
							
			} else 				
					System.out.print("Incorrect input.Enter again: ");
				
		}
		
		System.out.print("Goodbye!");

	}
	
	public void start() {
		System.out.println("Basic Calculator");
		System.out.println("[1] - Addition\n[2] - Substraction\n[3] - Multiplication\n[4] - Division\n");
		System.out.println("[5] - Sin\n[6] - Cos\n");
		System.out.println("[0] - Exit");
	}

	public int add(int a, int b) {
		int sum = a + b;
		return sum;
	}

	public int substract(int a, int b) {
		int sub = a - b;
		return sub;
	}

	public int multiply(int a, int b) {
		int multi = a * b;
		return multi;
	}

	public int division(int a, int b) {
		int div = a / b;
		return div;
	}

	public double sin(double angle) {
		return Math.sin(Math.toRadians(angle));

	}

	public double cos(double angle) {
		return Math.cos(Math.toRadians(angle));
	}
}