package com.study.tour.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.tour.vo.PackSearchVO;
import com.study.tour.vo.PackageVO;
import com.study.tour.vo.ProdSearchVO;
import com.study.tour.vo.ProductVO;

@Mapper
public interface ITourDao {
	/**
	 * 패키리 리스트를 리턴
	 * @param searchVO
	 * @return
	 */
	public List<PackageVO> getPackageList(PackSearchVO searchVO);
	
	/**
	 * 패키지 하나를 가져옴
	 * @param packageId
	 * @return
	 */
	public PackageVO getPackage(String packageId);
	
	/**
	 * 패키지 등록
	 * @param packageVO
	 * @return
	 */
	public int registPackage(PackageVO packageVO);
	
	/**
	 * 패키지 수정
	 * @param packageVO
	 * @return
	 */
	public int updatePackage(PackageVO packageVO);
	
	/**
	 * 패키지 삭제
	 * @param packageId
	 * @return
	 */
	public int removePackage(String packageId);
	
	/**
	 * 상품 리스트를 리턴
	 * @param searchVO
	 * @return
	 */
	public List<ProductVO> getProdList(ProdSearchVO searchVO);
	
	/**
	 * 상품 하나를 리턴
	 * @param productId
	 * @return
	 */
	public ProductVO getProduct(String productId);
	
	/**
	 * 상품 등록 
	 * 일정 등록은 안하며 수정에서 추가함
	 * @param product
	 * @return
	 */
	public int registProduct(ProductVO product);
	
	/**
	 * 하나의 상품을 수정
	 * 일정 수정은 다른 calendar의 서비스와 다오를 참고
	 * @param product
	 * @return
	 */
	public int updateProduct(ProductVO product);
	
	/**
	 * 하나의 상품을 삭제
	 * @param productId
	 * @return
	 */
	public int removeProduct(String productId);
	
	/**
	 * 선택된 여러개의 상품을 삭제
	 * @param prods
	 * @return
	 */
	public int removeSelProduct(String[] prods);
	
	/**
	 * 상품 수를 세는 메소드. 
	 * 현재는 여행패키지 삭제 여부 위해 존재함
	 * @param packageId
	 * @return
	 */
	public int getProdCount(String packageId);
	
	/**
	 * 패키지 수를 세는 메소드
	 * 페이징을 할 때 필요함
	 * @param searchVO
	 * @return
	 */
	public int getPackCount(PackSearchVO searchVO);
	
	/**
	 * 여행패키지의 여행기간을 수정
	 * 패키지 내에 가장 빠른 출발일 ~ 가장 나중의 도착일로 수정 
	 * @param packageId
	 * @return
	 */
	public int updatePackPeriod(String packageId);
	
	
}
