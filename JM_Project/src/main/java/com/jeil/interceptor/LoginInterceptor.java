package com.jeil.interceptor;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.jdbc.log.Log;

public class LoginInterceptor extends HandlerInterceptorAdapter {


   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
		   Object handler)
         throws Exception {
      /*String user_id = (String) session.getAttribute("user_id");*/
      request.getSession().getAttribute("logininfo");
     /* if(user_id==null){*/
      if(request.getSession().getAttribute("logininfo")==null){
         response.sendRedirect("../login");
         System.out.println("1번이니");
         return false ; 
         
      }
      
      System.out.println("2번이니");
      return true;
   }

   @Override
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
         ModelAndView modelAndView) throws Exception {
      HttpSession session = request.getSession();

   }

}