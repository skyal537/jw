package com.study.common.vo;

import java.io.Serializable;

//권한
public class CAuthVO implements Serializable{

	private static final long serialVersionUID = 1L;

    private int authCode;	/*권한코드*/
    private String authNm;  /*권한이름*/

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
