package com.study.common.vo;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.ToStringBuilder;

//회원
public class CMemberVO implements Serializable{

	private static final long serialVersionUID = 1L;

	private String memId;       /*회원아이디*/
	private String memPass;     /*비밀번호*/
	
	@NotEmpty(message = "회원이름은 필수입니다.")
	@Size(min = 2, message = "회원이름은 두글자 이상입니다.")
	private String memName;     /*회원이름*/
	
	@NotEmpty(message = "생년월일은 필수입니다.")
	@Pattern(regexp = "^[0-9]{6,8}$", message = "번호만 입력해 주세요.")
	private String memBir;  	 /*생년월일*/
	
	@NotEmpty(message = "핸드폰번호는 필수입니다.")
	@Pattern(regexp = "^[0-9]{10,12}$", message = "번호만 입력해 주세요.")
	private String memHp;        /*핸드폰번호*/
	
	@NotEmpty(message = "E-mail은 필수입니다. E-mail형식으로 입력해 주세요.")
//	@Pattern(regexp = "^[a-z][A-Z]$", message = "E-mail형식으로 입력해 주세요.")
	private String memMail;     /*이메일*/
	
	@NotEmpty(message = "주소는 필수입니다.")
	private String memAddr;     /*주소1*/
	private String memAddr2;	 /*주소2*/
	
	private String memSex;      /*성별*/
	private int authCode;	     /*권한코드*/
	private String areaCode;    /*지역코드*/
	private String countryId;	 /*나라아이디*/
	private String themeCode;	 /*테마코드*/
	private String memDelYn;	 /*탈퇴여부*/
	private String memRegDate;	 /*등록일*/
	


	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPass() {
		return memPass;
	}
	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemBir() {
		return memBir;
	}
	public void setMemBir(String memBir) {
		this.memBir = memBir;
	}

	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	public String getMemAddr() {
		return memAddr;
	}
	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}
	public String getMemAddr2() {
		return memAddr2;
	}
	public void setMemAddr2(String memAddr2) {
		this.memAddr2 = memAddr2;
	}
	public String getMemSex() {
		return memSex;
	}
	public void setMemSex(String memSex) {
		this.memSex = memSex;
	}
	public int getAuthCode() {
		return authCode;
	}
	public void setAuthCode(int authCode) {
		this.authCode = authCode;
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getCountryId() {
		return countryId;
	}
	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}
	public String getThemeCode() {
		return themeCode;
	}
	public void setThemeCode(String themeCode) {
		this.themeCode = themeCode;
	}
	public String getMemDelYn() {
		return memDelYn;
	}
	public void setMemDelYn(String memDelYn) {
		this.memDelYn = memDelYn;
	}

	public String getMemHp() {
		return memHp;
	}

	public void setMemHp(String memHp) {
		this.memHp = memHp;
	}

	public String getMemRegDate() {
		return memRegDate;
	}

	public void setMemRegDate(String memRegDate) {
		this.memRegDate = memRegDate;
	}

	


}
