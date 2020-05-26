package com.study.main.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.main.service.IMainService;
import com.study.tour.vo.PackageVO;
import com.study.tour.vo.ProductVO;

@Controller
public class MainController {
	
	@Autowired
	IMainService mainService;
	
	@RequestMapping("/main/main.do")
	public String mainPage(ModelMap model) {
		System.out.println("밀키스~~");
		List<PackageVO> prod = mainService.getProdRecommand();	
		model.addAttribute("list", prod);
		return "main/main";
	}
	
}
