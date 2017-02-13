package com.jeil.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jeil.domain.BoardVO;
import com.jeil.service.BoardService;


@Controller
public class BoardController {

	@Inject
	private BoardService service;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String listAll(Model model) throws Exception{
		model.addAttribute("list", service.listAll());
		System.out.println("리스트 출력");
		return "board/list.tiles";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("board_no") int board_no, Model model) throws Exception{
		model.addAttribute(service.read(board_no));
		System.out.println("글 읽기");
		return "board/read.tiles";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String listWriteG() throws Exception{
		System.out.println("글쓰기 버튼 클릭됨");
		return "board/write.tiles";
	}
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String listWriteP(BoardVO bvo, RedirectAttributes attr) throws Exception{
		System.out.println("글쓰기 내용 처리중");
		 attr.addFlashAttribute("WriteP", "SuccessP");
		 System.out.println(bvo.getBoard_title());
		 System.out.println(bvo.getBoard_content());
		 service.create(bvo);
		 System.out.println("글 저장 완료");
		return "redirect:/list";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String ModifyGET(@RequestParam("board_no") int board_no, Model model) throws Exception{
		System.out.println("글수정하자POST");
		model.addAttribute(service.read(board_no));
		return "board/modify.tiles";
	}
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String ModifyPOST(BoardVO bvo, RedirectAttributes attr) throws Exception{
		 service.modify(bvo);
		 System.out.println("글 수정 완료");
		return "redirect:/list";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String DeleteGET(@RequestParam("board_no") int board_no, Model model, RedirectAttributes attr) throws Exception{
		attr.addFlashAttribute("deleteOK", "deleteSuccess");
		model.addAttribute(service.delete(board_no));
		return "redirect:/list";
	}
	
	/*@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String DeletePOST(@RequestParam("board_no") int board_no, Model model) throws Exception{
		service.delete(vo);
	}
	*/
	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public String createIntro() throws Exception {
		return "board/intro.tiles";
	}
}
