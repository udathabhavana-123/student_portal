package com.pst.sp.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import com.pst.sp.service.LeaveService;
import com.pst.sp.vo.LeaveVo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LeaveController
 */
public class LeaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LeaveService leaveService;
	
    
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);
		Date fromDate = null;
		Date toDate = null;
		    String rNum = req.getParameter("rollNumber");
			int rollNumber = Integer.parseInt(rNum);
			String leaveType = req.getParameter("LeaveType");
			String reason = req.getParameter("reason");
			String fDate = req.getParameter("formDate");
			String tDate = req.getParameter("toDate");
			try {
				
				 fromDate = formatter.parse(fDate);
				 toDate = formatter.parse(tDate);
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			
			
			String nod  = req.getParameter("numberOfDays");
			int numberOfDays =Integer.parseInt(nod);
			
			
			LeaveVo vo = new LeaveVo(rollNumber, leaveType, reason, fromDate, toDate, numberOfDays);
			leaveService = new LeaveService();
			leaveService.createNewLeaveRequest(vo);
		}
}
