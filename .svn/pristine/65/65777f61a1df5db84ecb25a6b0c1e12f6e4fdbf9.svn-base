package com.study.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.exception.BizException;
import com.study.main.dao.IMainDao;
import com.study.tour.vo.PackageVO;
import com.study.tour.vo.ProductVO;

@Service
public class MainServiceImpl implements IMainService{

	@Autowired
	IMainDao mainDao;
	
	@Override
	public List<PackageVO> getProdRecommand() throws BizException {
		return mainDao.getProdRecommand();
	}

}
