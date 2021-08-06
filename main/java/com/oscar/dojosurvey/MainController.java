package com.oscar.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index() {
		return "home.jsp";
	}
	
	@RequestMapping(value="/result", method=RequestMethod.POST)
	public String result(HttpSession session, @RequestParam(value="name") String name,
			@RequestParam(value="location") String location,
			@RequestParam(value="language") String language,
			@RequestParam(value="comment") String comment) {
		
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		
		if(language != null && language.equals("Java")) {
			return "redirect:/java";
		}
		
		return "redirect:/showResult";
	}
	
	@RequestMapping("/showResult")
	public String showResult(HttpSession session, Model model) {
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("location", session.getAttribute("location"));
		model.addAttribute("language", session.getAttribute("language"));
		model.addAttribute("comment", session.getAttribute("comment"));
		return "result.jsp";
	}
	
	@RequestMapping("/java")
	public String java() {
		return "java.jsp";
	}
}
