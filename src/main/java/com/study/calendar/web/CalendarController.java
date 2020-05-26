package com.study.calendar.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.calendar.service.ICalendarService;
import com.study.calendar.vo.CalendarVO;

@Controller
@RequestMapping("/calendar")
public class CalendarController {
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ICalendarService calendarService;
	
	//일정 리스트 화면에 보여주기
	@RequestMapping(value = "/calList.do" , produces = "application/json; charset=UTF-8")
	public Map<String, Object> calList(ModelMap model,String productId) {
		
		List<CalendarVO> calendar = calendarService.getCalendarList(productId);
		model.addAttribute("cal", calendar);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", true);
		//map.put("data", calendar);
		//map.put("count", calendar.size());
		return map;	
	}
	
	//일정 등록
	@RequestMapping("/calRegist.do")
	public Map<String, Object> calRegist(CalendarVO calendar) {
		logger.debug("calendar : {}", calendar);

		calendarService.registCalendar(calendar);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", true);
		map.put("msg", "정상 등록 되었습니다");
		
		System.out.println(map.toString());

		return map;
	}
	
	//일정삭제 
	@RequestMapping("/calRemove.do")
	public Map<String, Object> calRemove(String calendarId) {
		calendarService.removeCalendar(calendarId);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", true);
		map.put("msg", "정상 등록 되었습니다");
		return map;
	}
	
	//일정 수정
	@RequestMapping("/calModify.do")
	public Map<String, Object> calModify(CalendarVO calendar) {
		logger.debug("calendar : {}", calendar);

		
		calendarService.updateCalendar(calendar);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", true);
		map.put("msg", "정상 등록 되었습니다");
		
		System.out.println(map.toString());

		return map;
	}
}
