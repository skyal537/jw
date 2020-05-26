package com.study.tour.service;

import java.util.List;

import com.study.common.exception.BizException;
import com.study.tour.vo.PackSearchVO;
import com.study.tour.vo.PackageVO;
import com.study.tour.vo.ProdSearchVO;
import com.study.tour.vo.ProductVO;

public interface ITourService {
	/**
	 * 패키지 리스트를 리턴
	 * @param searchVO
	 * @return
	 * @throws BizException
	 */
	public List<PackageVO> getPackageList(PackSearchVO searchVO) throws BizException;
	
	/**
	 * 패키지 하나를 리턴
	 * @param packageId
	 * @return
	 * @throws BizException
	 */
	public PackageVO getPackage(String packageId) throws BizException;
	
	/**
	 * 패키지 새로 등록
	 * @param packageVO
	 * @throws BizException
	 */
	public void registPackage(PackageVO packageVO) throws BizException;
	
	/**
	 * 패키지 수정
	 * @param packageVO
	 * @throws BizException
	 */
	public void updatePackage(PackageVO packageVO) throws BizException;
	
	/**
	 * 패키지 삭제
	 * @param packageId
	 * @throws BizException
	 */
	public void removePackage(String packageId) throws BizException;
	
	/**
	 * 상품 리스트 리턴
	 * @param searchVO
	 * @return
	 * @throws BizException
	 */
	public List<ProductVO> getProdList(ProdSearchVO searchVO) throws BizException;
	
	/**
	 * 상품 하나 리턴
	 * @param productId
	 * @return
	 * @throws BizException
	 */
	public ProductVO getProduct(String productId) throws BizException;
	
	/**
	 * 상품 새로 등록
	 * @param product
	 * @throws BizException
	 */
	public void registProduct(ProductVO product) throws BizException;
	
	/**
	 * 상품 수정
	 * @param product
	 * @throws BizException
	 */
	public void updateProduct(ProductVO product) throws BizException;
	
	/**
	 * 상품 삭제
	 * @param productId
	 * @throws BizException
	 */
	public void removeProduct(String productId) throws BizException;
	
	/**
	 * 선택된 여러 상품 한꺼번에 삭제
	 * @param prods
	 * @throws BizException
	 */
	public void removeSelProduct(String[] prods) throws BizException;
	
	
	
	
}
