package com.gaon.cinema.login;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	private LoginDAO dao;
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/login.do")
	public ModelAndView login(HttpServletResponse response,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		logger.info("login.do Start");
		try {
			String id = request.getParameter("loginID");
			String pw = request.getParameter("loginPW");
			int count = dao.loginSerch(id, pw);
			System.out.println(" count : " + count);
			if(count == 1){
				session.setAttribute("NowUser", id); 
<<<<<<< HEAD
			}else{
				session.setAttribute("msgbox", "아이디와 비밀번호를 확인해주세요.");
=======
				System.out.println(session);
				sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
				sb.append("<item><login>true</login><name>"+id+"</name></item>");
			}else {
>>>>>>> b899949bd370a9f052dcdd735d4e6c50513cc4dc
			}//else end
			}catch(Exception ex){	ex.printStackTrace();	}
<<<<<<< HEAD
			mav.setViewName("redirect:/main.do");
=======
			/////////////////
			mav.setViewName("login");
>>>>>>> b899949bd370a9f052dcdd735d4e6c50513cc4dc
			return mav;
	}
	@RequestMapping("/logout.do")	
	public ModelAndView logout(HttpServletResponse response,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		session.invalidate();
		HttpSession session2 = request.getSession();
		session2.setAttribute("msgbox", "로그아웃 되었습니다. 이용해 주셔서 감사합니다.");
		mav.setViewName("redirect:/main.do");
		return mav;
	}
	
}
