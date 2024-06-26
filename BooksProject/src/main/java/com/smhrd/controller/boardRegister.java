package com.smhrd.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.smhrd.database.DAO;
import com.smhrd.model.BoardVO;
import com.smhrd.model.UserVO;

public class boardRegister implements command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		UserVO sessionVo = (UserVO) session.getAttribute("member");
		String email = sessionVo.getEmail();
		
		String b_title = request.getParameter("title");
		String b_content = request.getParameter("text");
		String b_category = request.getParameter("value");
		String page = request.getParameter("page");
		
		//현재 시간 b_date변수에 저장(2024-03-26 11:27:42.979 형식)
		Timestamp b_date=new Timestamp(System.currentTimeMillis());
		//yyyy/MM/dd HH:mm:ss형식으로 변환
		String b_date2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(b_date);
		
		BoardVO vo = new BoardVO();
		vo.setEmail(email);
		vo.setB_title(b_title);
		vo.setB_content(b_content);
		vo.setB_category(b_category);
		vo.setB_date(b_date2);
		
		DAO dao = new DAO();
		dao.boardRegister(vo);
		
		request.setAttribute("b_category", b_category);
		
		String nextPageURL = "boardList.do?value=" + b_category + "&page=" + page;
		try {
			response.sendRedirect(nextPageURL);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
}
