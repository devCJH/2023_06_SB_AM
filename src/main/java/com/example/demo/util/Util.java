package com.example.demo.util;

public class Util {
	public static boolean empty(Object obj) {
		
		if (obj == null) {
			return true;
		}
		
		String str = (String) obj;
		
		return str.trim().length() == 0;
	}
}
