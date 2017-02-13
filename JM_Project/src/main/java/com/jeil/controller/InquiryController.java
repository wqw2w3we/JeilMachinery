package com.jeil.controller;

import java.net.URLEncoder;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jeil.domain.InquiryVO;
import com.jeil.service.InquiryService;

@Controller
public class InquiryController {

   @Inject
   private InquiryService service;
   // private static final Logger logger =
   // LoggerFactory.getLogger(HomeController.class);
   /*@RequestMapping(value = "/main", method = RequestMethod.GET)
   public void createGET() throws Exception {
      System.out.println("info....");
   }*/
   
  /* @RequestMapping(value = "/main", method = RequestMethod.POST)
   public String createPOST(InquiryVO vo,RedirectAttributes attr) throws Exception {
      attr.addFlashAttribute("msg","SUCCESS");
      service.create(vo);
      return "redirect:main";
   }*/
   @RequestMapping(value = "/main", method = RequestMethod.GET)
   public String createGET2() throws Exception {
      System.out.println("zzzzz");
     return "main/main.tiles";
   }
   
   public InquiryController() {
      // TODO Auto-generated constructor stub
   }
}