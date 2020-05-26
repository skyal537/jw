package com.study.member.web;


import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.common.exception.BizException;
import com.study.data.service.IDataService;
import com.study.data.vo.AreaVO;
import com.study.data.vo.ThemeVO;
import com.study.login.vo.UserVO;
import com.study.member.service.IMemberService;
import com.study.member.vo.MemberSearchVO;
import com.study.member.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private IMemberService memberService;
	
	@Autowired
	private IDataService dataService;

	@ModelAttribute("eu")
	public List<AreaVO> getArea() {
		List<AreaVO> eu = dataService.getAreaList();
		return eu;
	}
	
	@ModelAttribute("tm")
	public List<ThemeVO> getTheme() {
		List<ThemeVO> tm = dataService.getThemeList();
		return tm;
	}
	
	
	/**
	 * 회원리스트(관리자)
	 * @param searchVO
	 * @param model
	 * @return
	 * @throws BizException
	 */
	@RequestMapping("/memberMgList.do")
	public String memberMgList(@ModelAttribute("searchVO") MemberSearchVO searchVO, ModelMap model) throws Exception {

		List<MemberVO> list =  memberService.getMemberMgList(searchVO);
		logger.info("list = {}", list);
		
		model.addAttribute("list", list);

		return "member/memberMgList";
	}
	
	
	/**
	 * 회원리스트 팝업(관리자)
	 * @param searchVO
	 * @param model
	 * @return
	 * @throws BizException
	 */
	@RequestMapping("/memberListPopup.do")
	public String memberListPopup(@ModelAttribute("searchVO") MemberSearchVO searchVO, ModelMap model) throws Exception {
		logger.debug("searchVO = {}", searchVO);
		
		List<MemberVO> list =  memberService.getMemberMgList(searchVO);
		logger.debug("list = {}", list);
		
		model.addAttribute("list", list);
		
		return "member/memberListPopup";
	}

	
	/**
	 * 회원가입
	 * @param model
	 * @param session
	 * @return
	 * @throws BizException
	 */
	@RequestMapping(value = "/memberForm.do")
	public String memberForm(ModelMap model, HttpSession session) throws Exception {
		// 중복방지 토큰 생성 
		String dup_key = UUID.randomUUID().toString();
		session.setAttribute("DUP_SUBMIT_PREVENT", dup_key);
		
		model.addAttribute("dup_key", dup_key);
		model.addAttribute("mem", new MemberVO());
		
		return "member/memberForm";
	}

	
	/**
	 * 회원가입 후 처리
	 * @param member
	 * @param errors
	 * @return
	 * @throws BizException
	 */
	@RequestMapping(value = "/memberRegist.do")
	public String memberRegist(@ModelAttribute("mem") @Valid MemberVO member, BindingResult errors) throws Exception {
		logger.debug("member : {}", member);
		
		if (errors.hasErrors()) {
			logger.debug("errors : {}", errors);
			
			return "member/memberForm";
		}
		//성공하면
		memberService.registMember(member);
		
		return "login/login";
	}
	
	
	/**
	 * 회원정보수정
	 * @param memId
	 * @param model
	 * @return
	 * @throws BizException
	 */
	@RequestMapping(value = "/memberEdit.do")
	public String memberEdit(String memId, ModelMap model) throws Exception {
		
		MemberVO mem = memberService.getMember(memId);
	
		model.addAttribute("mem", mem);

		return "member/memberEdit";
	}
	
	
	/**
	 * 회원정보수정 처리
	 * @param member
	 * @param errors
	 * @param req
	 * @param model
	 * @return
	 * @throws BizException
	 */
	@RequestMapping(value = "/memberModify.do", method = RequestMethod.POST)
	public String memberModify(@ModelAttribute("mem") @Valid MemberVO member
								, BindingResult errors, HttpServletRequest req, ModelMap model) throws Exception {
		logger.debug("member : {}", member);
		
		if (errors.hasErrors()) {
			logger.debug("errors : {}", errors);
			
			return "member/memberEdit";
		}
		memberService.modifyMember(member);
		 
		return "redirect:/";
	}

	
	/**
	 * 회원탈퇴
	 * @param session
	 * @return String
	 * @throws BizException
	 */
	@RequestMapping(value = "/memberDelete.do")
	public String memberDelete(HttpSession session ) throws Exception {
		
		UserVO user = (UserVO)session.getAttribute("USER_INFO");
		logger.debug("user : {}", user);
		
		MemberVO member = new MemberVO();
		
		member.setMemId(user.getUserId());
		member.setMemPass(user.getUserPass());
		
		memberService.removeMember(member);
		
		return "forward:/login/logout.do";
	}

	
	/**
	 * 멤버 권한 변경/수정
	 * @param
	 * @return
	 * @throws BizException
	 */
	@RequestMapping(value = "/memberAuthModify.do")
	public String memberAuthModify() throws Exception {
		return null;
	}



}