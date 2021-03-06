package com.study.tour.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.study.common.vo.PagingVO;

//여행패키지
public class PackageVO extends PagingVO {

    private String packageId;

    private String packageName;

    private String packageRegion;

    private int packagePrice;

    private String packagePic;

    private int packageGrade;

    private String packageDepPeriod1;

    private int totalPeople;

    private String notice;

    private int adultPrice;

    private int childPrice;

    private int babyPrice;

    private String accountBank;

    private String account;

    private String packagePeriod;

    private String airStart;

    private String airEnd;

    private String packageDepPeriod2;

    private String viewYn;

    @Override
   	public String toString() {
   		return ToStringBuilder.reflectionToString(this);
   	}
    
		public String getPackageId() {
			return packageId;
		}
	
		public void setPackageId(String packageId) {
			this.packageId = packageId;
		}
	
		public String getPackageName() {
			return packageName;
		}
	
		public void setPackageName(String packageName) {
			this.packageName = packageName;
		}
	
		public String getPackageRegion() {
			return packageRegion;
		}
	
		public void setPackageRegion(String packageRegion) {
			this.packageRegion = packageRegion;
		}
	
		public int getPackagePrice() {
			return packagePrice;
		}
	
		public void setPackagePrice(int packagePrice) {
			this.packagePrice = packagePrice;
		}
	
		public String getPackagePic() {
			return packagePic;
		}
	
		public void setPackagePic(String packagePic) {
			this.packagePic = packagePic;
		}
	
		public int getPackageGrade() {
			return packageGrade;
		}
	
		public void setPackageGrade(int packageGrade) {
			this.packageGrade = packageGrade;
		}
	
		public String getPackageDepPeriod1() {
			return packageDepPeriod1;
		}
	
		public void setPackageDepPeriod1(String packageDepPeriod1) {
			this.packageDepPeriod1 = packageDepPeriod1;
		}
	
		public int getTotalPeople() {
			return totalPeople;
		}
	
		public void setTotalPeople(int totalPeople) {
			this.totalPeople = totalPeople;
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
	
		public String getAccountBank() {
			return accountBank;
		}
	
		public void setAccountBank(String accountBank) {
			this.accountBank = accountBank;
		}
	
		public String getAccount() {
			return account;
		}
	
		public void setAccount(String account) {
			this.account = account;
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
	
		public String getPackageDepPeriod2() {
			return packageDepPeriod2;
		}
	
		public void setPackageDepPeriod2(String packageDepPeriod2) {
			this.packageDepPeriod2 = packageDepPeriod2;
		}

		public String getViewYn() {
			return viewYn;
		}

		public void setViewYn(String viewYn) {
			this.viewYn = viewYn;
		}
	
	    
    

}
