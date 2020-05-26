package com.study.calendar.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.calendar.dao.ICalendarDao;
import com.study.calendar.vo.CalendarVO;
import com.study.common.exception.BizException;

@Service
public class CalendarServiceImp implements ICalendarService{

	@Autowired
	ICalendarDao calDao;
	
	@Override
	public List<CalendarVO> getCalendarList(String productId)  throws BizException{
		
		return calDao.getCalendarList(productId);
	}

	@Override
	public CalendarVO getCalendar(String productId) throws BizException {
		return null;
	}

	@Override
	public void registCalendar(CalendarVO calendar) throws BizException {
		calDao.registCalendar(calendar);
		
	}

	@Override
	public void updateCalendar(CalendarVO calendar) throws BizException {
		calDao.updateCalendar(calendar);
	}

	@Override
	public void removeCalendar(String calendarId) throws BizException {
		calDao.removeCalendar(calendarId);
	}

	@Override
	public void removeChildCal(String productId) throws BizException {
		calDao.removeChildCal(productId);
	}

}
