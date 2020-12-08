package com.project1.ToDiArY;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/login")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(String t, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, Member vo) {
		String returnURL = "";
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		Member loginvo = service.getUser1(vo);
		if(loginvo != null) {
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			returnURL="redirect:/contents/list";
		}else {
			System.out.println("로그인 실패!");
			returnURL="redirect:/login/login";
		}
		return returnURL;
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinNew() {
		return "joinform";
	}
	
	@RequestMapping(value = "/joinok", method = RequestMethod.POST)
	public String joinNewOk(Member vo) {
		if(service.insertMember(vo) == 0) {
			System.out.println("데이터 추가 실패");
		}else {
			System.out.println("데이터 추가 성공!");
		}
		return "redirect:/login/login";
	}
	
}
