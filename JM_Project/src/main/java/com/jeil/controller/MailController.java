package com.jeil.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MailController {
	
	 @Autowired
	  private JavaMailSender mailSender;
	 
	  // mailSending 코드
	  @RequestMapping(value = "/ssss")
	  public String mailSending(HttpServletRequest request, RedirectAttributes attr) {
	   
	    String setfrom =  "jeilhsm@naver.com";		//보내는사람 메일 주소
	    String tomail  = "jeilhsm@naver.com";       // 받는 사람 이메일
	    String title   = request.getParameter("email");      // 제목
	    String content = request.getParameter("content");    // 내용
	    String phone = request.getParameter("phone");
	    
	    try {
	      MimeMessage message = mailSender.createMimeMessage();
	      MimeMessageHelper messageHelper 
	                        = new MimeMessageHelper(message, true, "UTF-8");
	 
	      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
	      messageHelper.setTo(tomail);     // 받는사람 이메일
	      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	      messageHelper.setText("<html><head></head><body>"+ 
	      "<table><tr><td>"+content+"</tr></td>"+
	      "<br><br><br>"+phone+"</table></body></html>", true);  // 메일 내용
	      mailSender.send(message);
	      attr.addFlashAttribute("mailMsg", "mailSuccess");
	      System.out.println("메일전송완료");
	      
	    } catch(Exception e){
	      System.out.println(e);
	    }
	   
	    return "redirect:/main";
	  }

}
