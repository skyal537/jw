package com.study.tour.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

//여행상품
public class ProductVO  {

    private String productId;

    private String productName;

    private String startDate;

    private String endDate;

    private String resYn;

    private int totalPeople;

    private int applyPeople;

    private String packageId;

    private String notice;

    private int adultPrice;

    private int childPrice;

    private int babyPrice;

    private String account;

    private String accountBank;

    private String packagePeriod;

    private String airStart;

    private String airEnd;

    private String viewYn;
    
    private String airLineNm;

    public ProductVO() {
	}
    
    public ProductVO(String productId, int totalPeople) {
		this.productId = productId;
		this.totalPeople = totalPeople;
	}

	@Override
   	public String toString() {
   		return ToStringBuilder.reflectionToString(this);
   	}
    
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getResYn() {
        return resYn;
    }

    public void setResYn(String resYn) {
        this.resYn = resYn;
    }

    public int getTotalPeople() {
        return totalPeople;
    }

    public void setTotalPeople(int totalPeople) {
        this.totalPeople = totalPeople;
    }

    public int getApplyPeople() {
        return applyPeople;
    }

    public void setApplyPeople(int applyPeople) {
        this.applyPeople = applyPeople;
    }

    public String getPackageId() {
        return packageId;
    }

    public void setPackageId(String packageId) {
        this.packageId = packageId;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public int getAdultPrice() {
        return adultPrice;
    }

    public void setAdultPrice(int adultPrice) {
        this.adultPrice = adultPrice;
    }

    public int getChildPrice() {
        return childPrice;
    }

    public void setChildPrice(int childPrice) {
        this.childPrice = childPrice;
    }

    public int getBabyPrice() {
        return babyPrice;
    }

    public void setBabyPrice(int babyPrice) {
        this.babyPrice = babyPrice;
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

    public String getPackagePeriod() {
        return packagePeriod;
    }

    public void setPackagePeriod(String packagePeriod) {
        this.packagePeriod = packagePeriod;
    }

    public String getAirStart() {
        return airStart;
    }

    public void setAirStart(String airStart) {
        this.airStart = airStart;
    }

    public String getAirEnd() {
        return airEnd;
    }

    public void setAirEnd(String airEnd) {
        this.airEnd = airEnd;
    }

    public String getViewYn() {
        return viewYn;
    }

    public void setViewYn(String viewYn) {
        this.viewYn = viewYn;
    }

	public String getAirLineNm() {
		return airLineNm;
	}

	public void setAirLineNm(String airLineNm) {
		this.airLineNm = airLineNm;
	}

}
