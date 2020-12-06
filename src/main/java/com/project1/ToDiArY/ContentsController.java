package com.project1.ToDiArY;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/contents")
public class ContentsController {

	@Autowired
	ContentsServiceImpl contentsService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String contentslist(Model model) {
		model.addAttribute("list", contentsService.getContentsList());
		return "list";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(Contents vo) {
		if(contentsService.insertContents(vo) == 0) {
			System.out.println("데이터 추가 실패");
		}else {
			System.out.println("데이터 추가 성공!");
		}
		return "redirect:list";
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		Contents contentsVO = contentsService.getContents(id);
		model.addAttribute("u", contentsVO);
		return "editform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(Contents vo) {
		if(contentsService.updateContents(vo) == 0) {
			System.out.println("데이터 수정 실패");
		}else {
			System.out.println("데이터 수정 성공!");
		}
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		if(contentsService.deleteContents(id) == 0) {
			System.out.println("데이터 삭제 실패");
		}else {
			System.out.println("데이터 삭제 성공!");
		}
		return "redirect:../list";
	}
	
	
}

