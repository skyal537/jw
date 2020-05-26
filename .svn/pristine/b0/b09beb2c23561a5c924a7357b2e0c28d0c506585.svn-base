package com.study.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.calendar.dao.ICalendarDao;
import com.study.common.exception.BizException;
import com.study.common.exception.BizRegistFailException;
import com.study.tour.dao.ITourDao;
import com.study.tour.vo.PackSearchVO;
import com.study.tour.vo.PackageVO;
import com.study.tour.vo.ProdSearchVO;
import com.study.tour.vo.ProductVO;

@Service
public class TourServiceImp implements ITourService {

	@Autowired
	ITourDao tourDao;
	
	@Autowired
	ICalendarDao calDao;
	
	@Override
	public List<PackageVO> getPackageList(PackSearchVO searchVO) throws BizException {
		int rowCount = tourDao.getPackCount(searchVO);
		searchVO.setTotalRowCount(rowCount);
		searchVO.setting();	//페이징을 위한 세팅
		return tourDao.getPackageList(searchVO);
	}

	@Override
	public PackageVO getPackage(String packageId) throws BizException {
		PackageVO packageVO = tourDao.getPackage(packageId);
		return packageVO;
		
	}

	@Override
	public void registPackage(PackageVO packageVO) throws BizException {
		int res =	tourDao.registPackage(packageVO);
		if(res<1) {
			throw new BizRegistFailException();
		}
		
	}

	@Override
	public void updatePackage(PackageVO packageVO) throws BizException {
		int res = tourDao.updatePackage(packageVO);
		
		if(res<1) {
			throw new BizRegistFailException();
		}
	}

	@Override
	public void removePackage(String packageId) throws BizException {
		int count = tourDao.getProdCount(packageId);
		if(count>0) {	//상품이 하나도 없어야 패키지 삭제가능
			return;
		}
		tourDao.removePackage(packageId);
	}

	@Override
	public List<ProductVO> getProdList(ProdSearchVO searchVO) throws BizException {
		return tourDao.getProdList(searchVO);
		
	}

	@Override
	public ProductVO getProduct(String productId) throws BizException {
		ProductVO product = tourDao.getProduct(productId);
		return product;
		
	}

	@Override
	public void registProduct(ProductVO product) throws BizException {
		int res =	tourDao.registProduct(product);
		tourDao.updatePackPeriod(product.getPackageId());	//상품 등록할때 패키지의 여행기간도 바뀜
		if(res<1) {
			throw new BizRegistFailException();
		}
	}

	@Override
	public void updateProduct(ProductVO product) throws BizException {
		int res = tourDao.updateProduct(product);
		tourDao.updatePackPeriod(product.getPackageId()); //상품 수정할때 패키지의 여행기간도 바뀜
		if(res<1) {
			throw new BizRegistFailException();
		}
	}

	@Override
	public void removeProduct(String productId) throws BizException {
		String packageId = tourDao.getProduct(productId).getPackageId();
		int res = tourDao.removeProduct(productId);
		calDao.removeChildCal(productId);
		tourDao.updatePackPeriod(packageId); //상품 삭제할때 패키지의 여행기간도 바뀜
		if(res<1) {
			throw new BizRegistFailException();
		}
	}

	@Override
	public void removeSelProduct(String[] prods) throws BizException {
		String packageId = tourDao.getProduct(prods[0]).getPackageId();
		tourDao.removeSelProduct(prods);
		for (String prodId : prods) {
			calDao.removeChildCal(prodId);	//여러 상품을 삭제하면 그에 속한 일정들도 다 삭제
		}
		tourDao.updatePackPeriod(packageId); //상품 삭제할때 패키지의 여행기간도 바뀜
	}



}
