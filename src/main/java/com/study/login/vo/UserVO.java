package com.study.login.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

public class UserVO {
	private String userId;        /*회원ID*/
	private String userPass;      /*비밀번호*/
	private String userName;      /*회원명*/
	private int authCode;         /*권한코드*/
	private String authNm;        /*권한이름*/

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	public UserVO() {
	}

	public UserVO(String userId, String userPass, String userName, int authCode, String authNm) {
		super();
		this.userId = userId;
		this.userPass = userPass;
		this.userName = userName;
		this.authCode = authCode;
		this.authNm = authNm;
	}
	

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getAuthCode() {
		return authCode;
	}
	public void setAuthCode(int authCode) {
		this.authCode = authCode;
	}

	public String getAuthNm() {
		return authNm;
	}

	public void setAuthNm(String authNm) {
		this.authNm = authNm;
	}
}