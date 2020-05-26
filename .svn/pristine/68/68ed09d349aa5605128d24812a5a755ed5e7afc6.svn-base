package com.study.calendar.service;

import java.util.List;

import com.study.calendar.vo.CalendarVO;
import com.study.common.exception.BizException;


public interface ICalendarService {
	/**
	 * 일정 리스트 리턴
	 * @param productId
	 * @return
	 */
	public List<CalendarVO> getCalendarList(String productId);
	
	/**
	 * 일정 하나 가져오기(현재 사용 안하는중)
	 * @param productId
	 * @return
	 * @throws BizException
	 */
	public CalendarVO getCalendar(String productId) throws BizException;
	
	/**
	 * 일정 등록 
	 * @param calendar
	 * @throws BizException
	 */
	public void registCalendar(CalendarVO calendar) throws BizException;
	
	/**
	 * 일정 수정
	 * @param calendar
	 * @throws BizException
	 */
	public void updateCalendar(CalendarVO calendar) throws BizException;
	
	/**
	 * 일정 삭제
	 * @param calendarId
	 * @throws BizException
	 */
	public void removeCalendar(String calendarId) throws BizException;
	
	
	
	/**
	 * 상품 지울때 하위 일정도 다 지워야 한다
	 * TourServiceImp에서 사용중
	 * @param productId
	 * @throws BizException
	 */
	public void removeChildCal(String productId) throws BizException;
}
