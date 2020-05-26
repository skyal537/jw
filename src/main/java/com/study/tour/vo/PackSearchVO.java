package com.study.tour.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.study.common.vo.PagingVO;

@SuppressWarnings("serial")
public class PackSearchVO extends PagingVO{

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	private String searchCategory ; // 여행지역
	private String searchPeriod ;     // 여행기간
	private String searchType ;     // 검색구분 
	private String searchWord ;     // 검색어 
	private String searchAuth ;     // 검색권한 Y or N 
	
		
	public String getSearchCategory() {
		return searchCategory;
	}
	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public String getSearchPeriod() {
		return searchPeriod;
	}
	public void setSearchPeriod(String searchPeriod) {
		this.searchPeriod = searchPeriod;
	}
	public String getSearchAuth() {
		return searchAuth;
	}
	public void setSearchAuth(String searchAuth) {
		this.searchAuth = searchAuth;
	}
	
}
