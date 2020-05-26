package com.study.res.vo;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.study.tour.vo.ProductVO;

public class ReserveDTO {
	private List<String> reserveIds;
	private List<ProductVO> products;
	private boolean isApproved;

	public ReserveDTO() {
	}
	public ReserveDTO(List<String> reserveIds, List<ProductVO> products, boolean isApproved) {
		this.reserveIds = reserveIds;
		this.products = products;
		this.isApproved = isApproved;
	}
	public List<String> getReserveIds() {
		return reserveIds;
	}
	public void setReserveIds(List<String> reserveIds) {
		this.reserveIds = reserveIds;
	}
	public List<ProductVO> getProducts() {
		return products;
	}
	public void setProducts(List<ProductVO> products) {
		this.products = products;
	}
	public boolean isApproved() {
		return isApproved;
	}
	public void setApproved(boolean isApproved) {
		this.isApproved = isApproved;
	}
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
