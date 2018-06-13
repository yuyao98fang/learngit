package com.tzy.firstdemo;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;

public class Firstdemo {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String str=sc.nextLine();
		String tmp=null;
		HashMap<String, Integer> hm=new HashMap<String, Integer>();
		for(int i=0;i<str.length();i++){
			for(int j=1;j<=str.length();j++){
				if(i+j<=str.length()){
					tmp=str.substring(i, i+j);
					if(hm.containsKey(tmp)){
						int count=hm.get(tmp);
						count++;
						hm.put(tmp, count);
					}
					else{
						hm.put(tmp, 1);
					}
				}
			}
		}
		Set<String> ks = hm.keySet();
		Iterator<String> iter = ks.iterator();
		while(iter.hasNext()) {
			String tmp1 = iter.next();
			System.out.println(tmp1+"=" + hm.get(tmp1));
		}
		
	}

}
