package com.study.data.service;

import java.util.List;

import com.study.common.exception.BizException;
import com.study.data.vo.AreaVO;
import com.study.data.vo.CityVO;
import com.study.data.vo.PackPeriodVO;
import com.study.data.vo.ThemeVO;

public interface IDataService {
	
	List<CityVO> getCityListByTour(String code) throws BizException;
	List<AreaVO> getAreaList() throws BizException;
	List<ThemeVO> getThemeList() throws BizException;
	List<PackPeriodVO> getPackPeriod() throws BizException;
}
