package com.tzy.secondemo;

import java.util.Arrays;
import java.util.Scanner;

public class Seconddemo {
	public static void main(String[] args) {
		String[] stuName=new String[10];
		Scanner sc=new Scanner(System.in);
		for(int i=0;i<10;i++){
			stuName[i]=sc.nextLine();
		}
		Arrays.sort(stuName);
		System.out.println(Arrays.toString(stuName));
	}
	
	
	
}
