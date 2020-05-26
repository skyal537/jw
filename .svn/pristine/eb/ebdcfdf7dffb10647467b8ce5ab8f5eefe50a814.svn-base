package com.study.util;

import java.text.DecimalFormat;

public class StudyFileUtils {
	//1024보다 작으면 그냥 Byte만 붙여서 리턴
	//1024*1024 보다 작으<면 size/1024 Kb
	//그외 MB로 리턴			//1048576 보다 작으면 Mb
	//fancySize(7492) -> "7.52Kb"
	//fancySize(390) -> "390Byte"
	
	public static String fancySize(long size) {
		String fancyYou = "";
		double fancy = size*1.0;
		DecimalFormat df = new DecimalFormat("#,###.00");		//포맷 
		if (size<1024) {
			fancyYou = size + "Byte";
		} else if(size<1024*1024) {
			//fancyYou= Double.parseDouble(String.format("%.2f",(double)size/1024)) + "Kb";
			//fancyYou= Math.round(((double)size/1024)*100)/100.0 + "Kb";
			//fancyYou= Math.round((fancy/1024)*100)/100.0 + "Kb";
			fancyYou= df.format(fancy/1024) + "Kb";		//포맷 
			} else {
			fancyYou= Math.round((fancy/1024/1024)*100)/100.0 + "Mb";
		}
		return fancyYou;
	}
}
