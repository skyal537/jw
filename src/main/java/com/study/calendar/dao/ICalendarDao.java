package com.study.calendar.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.calendar.vo.CalendarVO;
import com.study.tour.vo.ProductVO;

@Mapper
public interface ICalendarDao {
	public List<CalendarVO> getCalendarList(String productId) ;
	public CalendarVO getCalendar(String packageId);
	public void registCalendar(CalendarVO calendar);
	public void updateCalendar(CalendarVO calendar);
	public void removeCalendar(String calendarId);
	public void removeChildCal(String productId);
}
