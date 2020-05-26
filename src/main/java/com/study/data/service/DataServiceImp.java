package com.study.data.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.exception.BizException;
import com.study.data.dao.IDataDao;
import com.study.data.vo.AreaVO;
import com.study.data.vo.CityVO;
import com.study.data.vo.PackPeriodVO;
import com.study.data.vo.ThemeVO;

@Service
public class DataServiceImp implements IDataService{
	
	@Autowired
	private IDataDao dataDao; 

	@Override
	public List<CityVO> getCityListByTour(String code) throws BizException {
		return dataDao.getCityListByTour(code);
	}

	@Override
	public List<AreaVO> getAreaList() throws BizException {
		return dataDao.getAreaList();
	}

	@Override
	public List<ThemeVO> getThemeList() throws BizException {
		return dataDao.getThemeList();
	}

	@Override
	public List<PackPeriodVO> getPackPeriod() throws BizException {
		return dataDao.getPackPeriod();
	}

}
