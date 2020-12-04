package com.project1.ToDiArY;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project1.ToDiArY.MemberDAO;

@Controller
@RequestMapping (value="")
public class MemberController {
	@Autowired
	MemberInterface memberInterface;
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String contentlist(Model model) {
		model.addAttribute("list",memberInterface.getContentList());
		return "list";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addMember() {
		return "addmember";
	}
	
	@RequestMapping(value ="/addok", method = RequestMethod.POST)
	public String addPostOK(Member vo) {
		if(memberInterface.insertMember(vo)==0)
			System.out.println("데이터 추가 실패");
		else 
			System.out.println("데이터 추가 성공");
		return "redirect:list";
	}

	
	@RequestMapping (value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id")int id) {
		if(memberInterface.deleteMember(id)==0) {
			System.out.println("Failure");
		}
		else {
			System.out.println("Success");
		}
		return "redirect:../list";
	}
	
}
