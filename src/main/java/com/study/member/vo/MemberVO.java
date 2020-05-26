package com.study.member.vo;

import java.io.Serializable;

import com.study.common.vo.CMemberVO;

//회원
public class MemberVO extends CMemberVO implements Serializable{

	private static final long serialVersionUID = 1L;

	private String authNm;  /*권한이름*/


	public String getAuthNm() {
		return authNm;
	}

	public void setAuthNm(String authNm) {
		this.authNm = authNm;
	}

}