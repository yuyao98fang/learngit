package com.tzy.thirddemo;

import java.util.ArrayList;

public class Banji {
	private String claName;
	private ArrayList<Student> stuList;
	public String getClaName() {
		return claName;
	}
	public Banji(String claName, ArrayList<Student> stuList) {
		super();
		this.claName = claName;
		this.stuList = stuList;
	}
	public ArrayList<Student> getStuList() {
		return stuList;
	}
	public void setStuList(ArrayList<Student> stuList) {
		this.stuList = stuList;
	}
	public void setClaName(String claName) {
		this.claName = claName;
	}
	@Override
	public String toString() {
		return "Banji [claName=" + claName + ", stuList=" + stuList + "]";
	}
	
	
}
