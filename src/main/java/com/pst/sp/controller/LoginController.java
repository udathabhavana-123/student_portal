package com.pst.sp.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.pst.sp.dto.UserDto;
import com.pst.sp.service.LoginService;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginService loginService;
  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    UserDto dto = null;
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		loginService = new LoginService();
		
		try {
	    dto = loginService.doLogin(userName, password);
		}catch(SQLException sql) {
			System.out.println("SQL query execution failed."+sql);
			
		}catch(Exception e) {
			System.out.println("Internal server error"+e);
		}
		if(dto != null) {
			resp.sendRedirect("./student_home.jsp");
			
		}else {
			String message = "Login failed. please check your credential";
			String result = "danger";
			req.setAttribute("msg", message);
			req.setAttribute("result", result);
			RequestDispatcher dispatcher =req.getRequestDispatcher("./student_portal.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
