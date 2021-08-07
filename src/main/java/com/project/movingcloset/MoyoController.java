package com.project.movingcloset;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MoyoController {

	// 모여
	@RequestMapping(value="/movingcloset/moyo.do", method=RequestMethod.GET)
	public String moyo() {
		
		return "body/moyo/moyo";
	}
		
	// 모여신청폼
	@RequestMapping(value="/movingcloset/moyoForm.do", method=RequestMethod.GET)
	public String moyoForm() {
		
		return "body/moyo/moyoForm";
	}
	
	
	
}
