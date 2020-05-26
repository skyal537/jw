package com.study.common.sql;

public class CommonSQL {
	public final static String PRE_PAGING_QRY = "SELECT b.* from( SELECT a.*, ROWNUM rnum from( ";
	public final static String POST_PAGING_QRY = " ) a  where rownum <= ? ) b "
			+ "WHERE rnum BETWEEN ? AND ?  ";
}
