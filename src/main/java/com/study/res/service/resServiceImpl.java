package com.study.res.service;



import java.util.List;
import java.util.function.Consumer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.exception.BizException;
import com.study.login.vo.UserVO;
import com.study.res.dao.IResDao;
import com.study.res.dao.ITouristInfoDao;
import com.study.res.vo.ResSearchVO;
import com.study.res.vo.ReserveDTO;
import com.study.res.vo.ReserveVO;
import com.study.res.vo.TouristVO;
import com.study.tour.vo.ProductVO;

@Service
public class resServiceImpl implements IResService {
	
	@Autowired
	private IResDao resDao;
	
	@Autowired
	private ITouristInfoDao touristInfoDao;
	private final Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public List<ReserveVO> getResList(ResSearchVO searchVO) throws BizException {
		int rowCount = resDao.getResCount(searchVO);
		searchVO.setTotalRowCount(rowCount);
		searchVO.setting();
		System.out.println(searchVO.getFirstRow());
		System.out.println(searchVO.getLastRow());
		logger.debug("searchVO = {}",searchVO);

		return resDao.getResList(searchVO);
	}

	
	@Override
	public void registReserve(ReserveVO reserve) throws BizException {
		resDao.insertReserve(reserve);
		
		List<TouristVO> touristes =  reserve.getTourList();
		for(TouristVO vo : touristes) {
			vo.setResId(reserve.getResId());
			touristInfoDao.insertTouristInfo(vo);
		}
		
	}


	@Override
	public void insertTourist(TouristVO tourist) throws BizException {
		resDao.insertTourist(tourist);
		
	}


	@Override
	public List<TouristVO> getTourist(TouristVO tourist) throws BizException {
		return resDao.getTourist(tourist);
	}



	@Override
	public ReserveVO getRes(String resId) throws BizException {
		ReserveVO reserveVO = resDao.getRes(resId);
		return reserveVO;
	}


	@Override
	public int updateReserveAndProduct(ReserveDTO dto) throws BizException {
		/*
		 * dto의 ProductVO 객체의 갯수만큼 반복문을 실행: 메소드 참조(method reference)
		 */
		/*
		// 고전
		for (int i = 0; i < dto.getProducts().size(); i++) {
			touristInfoDao.updatePeopleCnt(dto.getProducts().get(i));
		}
		// 중세
		for (ProductVO vo : dto.getProducts()) {
			touristInfoDao.updatePeopleCnt(vo);
		}
		// 현대
		dto.getProducts().forEach(new Consumer<ProductVO>() {
			@Override
			public void accept(ProductVO vo) {
				touristInfoDao.updatePeopleCnt(vo);
			}
		});
		// 신세대(람다lambda)
		dto.getProducts().forEach(vo -> touristInfoDao.updatePeopleCnt(vo));
		*/
		// 미래세대 (메소드 참조: method reference)
		dto.getProducts().forEach(touristInfoDao::updatePeopleCnt);
		
		return resDao.updateReserveState(dto);
	}


	@Override
	public int updateReserveCancel(ReserveVO reserve) throws BizException {
		return resDao.updateReserveCancel(reserve);
	}

	//삭제(취소)관련
	@Override
	public void removeBoard(ReserveVO reserve) throws BizException {

		int res = resDao.deleteBoard(reserve);
	}


	@Override
	public void removeCheckedBoard(String[] reserveIds) throws BizException {

		resDao.deleteCheckedBoard(reserveIds);
	}



	//수정 관련 
	@Override
	public void updateReserve(ReserveVO reserve) throws BizException {
		
		
		List<TouristVO> touristes =  reserve.getTourList();
		for(TouristVO vo : touristes) {
			vo.setResId(reserve.getResId());
			resDao.updateTourist(vo);
		}
		resDao.updateReserve(reserve);
	}


	
	
	

}
