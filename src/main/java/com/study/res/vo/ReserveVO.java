package com.study.res.vo;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;

//예약
public class ReserveVO {

    private String resId;

    private String payYn;

    private String productId;

    private String memId;

    private String cancelYn;

    private int resPeople;

    private int resPrice;

    private String reqClaim;

    private String resDate;

    private String account;

    private String accountBank;
    
    
    	//  여행자정보목록변수
    	private List<TouristVO> tourList;
    	// 예약승인용 고유번호 
    	private List<String> reserveIds;
    
    @Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
    	

    public String getResId() {
        return resId;
    }

    public void setResId(String resId) {
        this.resId = resId;
    }

    public String getPayYn() {
        return payYn;
    }

    public void setPayYn(String payYn) {
        this.payYn = payYn;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }

    public String getCancelYn() {
        return cancelYn;
    }

    public void setCancelYn(String cancelYn) {
        this.cancelYn = cancelYn;
    }

    public int getResPeople() {
        return resPeople;
    }

    public void setResPeople(int resPeople) {
        this.resPeople = resPeople;
    }

    public int getResPrice() {
        return resPrice;
    }

    public void setResPrice(int resPrice) {
        this.resPrice = resPrice;
    }


    public String getResDate() {
        return resDate;
    }

    public void setResDate(String resDate) {
        this.resDate = resDate;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getAccountBank() {
        return accountBank;
    }

    public void setAccountBank(String accountBank) {
        this.accountBank = accountBank;
    }


	public String getReqClaim() {
		return reqClaim;
	}


	public void setReqClaim(String reqClaim) {
		this.reqClaim = reqClaim;
	}


	public List<TouristVO> getTourList() {
		return tourList;
	}


	public void setTourList(List<TouristVO> tourList) {
		this.tourList = tourList;
	}


	public List<String> getReserveIds() {
		return reserveIds;
	}


	public void setReserveIds(List<String> reserveIds) {
		this.reserveIds = reserveIds;
	}



	
}
