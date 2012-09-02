package com.vinspin.helpers;

public class Util {
	public static boolean nullOrEmptyOrBlank (String toValidate){
		if (toValidate == null || toValidate.equalsIgnoreCase("")) {
			return true;
		}

		return false;
	}
}
