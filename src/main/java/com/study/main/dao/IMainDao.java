package com.study.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.tour.vo.PackageVO;

@Mapper
public interface IMainDao {
		public List<PackageVO> getProdRecommand();
}
