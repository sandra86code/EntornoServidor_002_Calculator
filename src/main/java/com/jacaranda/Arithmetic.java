package com.jacaranda;

public class Arithmetic {
	
	private double operand1;
	private double operand2;
	
	
	public Arithmetic(double operand1, double operand2) {
		super();
		this.operand1 = operand1;
		this.operand2 = operand2;
	}


	public double getOperand1() {
		return operand1;
	}


	public double getOperand2() {
		return operand2;
	}
	
	public double addition() {
		return this.getOperand1()+this.getOperand2();
	}
	
	public double substraction() {
		return this.getOperand1()-this.getOperand2();
	}
	
	public double multiplication() {
		return Math.round((this.getOperand1()*this.getOperand2())*100.0)/100.0;
	}
	
	public double division() throws ArithmeticException {
		if(this.getOperand2()==0) {
			throw new ArithmeticException("Error.");
		}
		return Math.round((this.getOperand1()/this.getOperand2())*100.0)/100.0;
	}
	
	
}
