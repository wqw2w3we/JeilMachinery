package com.jeil.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jeil.domain.UserVO;
import com.jeil.dto.LoginDTO;
import com.jeil.service.UserService;

@Controller
public class UserContorller {

   @Inject
   private UserService service;
   private static final Logger logger = LoggerFactory.getLogger(InquiryController.class);

   @RequestMapping(value = "/join", method = RequestMethod.GET) // 회원가입
   public String createGET() {

      return "user/join.tiles";
}
   @RequestMapping(value = "/join", method = RequestMethod.POST) // 회원가입
   public String createPOST(HttpServletRequest request, UserVO vo, RedirectAttributes attr, HttpSession session) throws Exception {
      service.create(vo);
      attr.addFlashAttribute("msg", "SUCCESS");
      System.out.println("회원가입완료");
      session.invalidate();
      return "redirect:main";
   }

   @RequestMapping(value = "/login", method = RequestMethod.GET) // 로그인
   public String loginGET(@ModelAttribute("dto") LoginDTO dto) {   
	   return "user/login.tiles";
   }

   @RequestMapping(value = "/loginPost", method = RequestMethod.POST) // 로그인
   public String loginPOST(HttpSession session, HttpServletRequest request, LoginDTO dto, Model model,
         RedirectAttributes attr, HttpServletResponse response) throws Exception {
      UserVO vo = service.login(dto);
      session = request.getSession();
      session.setAttribute("user", vo);
      System.out.println("vo먼데::::" + vo);
     
      request.getSession().setAttribute("logininfo", true);
     System.out.println("널이야" + request.getSession().getAttribute("logininfo"));
      

      if (vo == null)// 로그인성공
      {
         System.out.println("로그인실패");
         attr.addFlashAttribute("msg", "SUCCESS");
         return "redirect:login";

      } else {
         System.out.println("로그인성공");
       //  return "main/main.tiles";
         return "redirect:main";
      }

   }

   @RequestMapping(value = "/logout", method = RequestMethod.GET)
   public String logout(HttpSession session, HttpServletRequest request) throws Exception {
      session.getAttribute("user");
      session.invalidate();
      System.out.println("로그아웃 : " + request.getSession().getAttribute("logininfo"));
     // return "main/main.tiles";
      return "redirect:main";
   }
   
   @RequestMapping(value = "/mypage", method = RequestMethod.GET)
   public String MypageGet(Model model, HttpSession session)throws Exception {
	   session.getAttribute("user");
	   String user_id = (String) session.getAttribute("user_id");
	   
	   System.out.println("값 :::::::::::::::::::::::::::::::::::::::::: " + user_id);
	   if (user_id != null) {
	         model.addAttribute(service.read(user_id));
	      }
	   return "user/mypage.tiles";
   }

   /*@RequestMapping(value = "/read", method = RequestMethod.GET) //
   public String read(Model model, HttpSession session) throws Exception {
      String user_id = (String) session.getAttribute("user_id");
      if (user_id != null) {
         model.addAttribute(service.read(user_id));
      }
      return "user/read.tiles";
   }

   @RequestMapping(value = "/read", method = RequestMethod.POST) // 
   public String modify(UserVO vo, Model model, RedirectAttributes attr) throws Exception {
      service.modify(vo);
      attr.addFlashAttribute("msg", "SUCCESS");
      return "redirect:main";
   }
*/
   @RequestMapping(value = "findpw", method = RequestMethod.GET) // 
   public String findpw() {
      return "user/findpw.tiles";
   }
   
   @RequestMapping(value = "checkid", method = RequestMethod.POST)
   public int checkid(@RequestParam("user_id") String user_id, Model model) throws Exception {
      int check = service.check_id(user_id);
      if (check == 0) {
         return 0;
      }
      return 1;

   }
   
   
}