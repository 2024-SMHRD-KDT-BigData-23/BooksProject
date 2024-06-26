package com.smhrd.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.eventList;
import com.smhrd.controller.joinPwCheck;
import com.smhrd.controller.mainEventlist;
import com.smhrd.controller.myPage;
import com.smhrd.controller.myPageAddList;
import com.smhrd.controller.noticeList;
import com.smhrd.controller.pageNextCheck;
import com.smhrd.controller.pagePrevCheck;
import com.smhrd.controller.progressBar;
import com.smhrd.controller.boardLikeUpdate;
import com.smhrd.controller.boardList;
import com.smhrd.controller.boardLoginCheck;
import com.smhrd.controller.boardRegister;
import com.smhrd.controller.boardRegisterCheck;
import com.smhrd.controller.boardUpdate;
import com.smhrd.controller.bookingCancle;
import com.smhrd.controller.bookingList;
import com.smhrd.controller.bookingUpdate;
import com.smhrd.controller.AFindInfo;
import com.smhrd.controller.Join;
import com.smhrd.controller.Login;
import com.smhrd.controller.shuttRegister;
import com.smhrd.controller.Shuttle;
import com.smhrd.controller.boardDelete;
import com.smhrd.controller.boardDetail;
import com.smhrd.controller.userUpdate;
import com.smhrd.controller.userUpdateUserInfo;
import com.smhrd.controller.command;
import com.smhrd.controller.commentDelete;
import com.smhrd.controller.commentRegister;
import com.smhrd.controller.pwUpdate;
import com.smhrd.controller.pwUpdateCheck;
import com.smhrd.controller.userDelete;
import com.smhrd.controller.userDeletePwCheck;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HashMap<String, command> map = new HashMap<String, command>();

	@Override
	public void init() throws ServletException {
		map.put("Join.do", new Join());
		map.put("eventList.do", new eventList());
		map.put("mainEventlist.do", new mainEventlist());
		map.put("Login.do", new Login());
		map.put("Shuttle.do", new Shuttle());
		map.put("userUpdate.do", new userUpdate());
		map.put("shuttRegister.do", new shuttRegister());
		map.put("userDelete.do", new userDelete());
		map.put("pwUpdate.do", new pwUpdate());
		map.put("boardLikeUpdate.do", new boardLikeUpdate());
		map.put("boardDetail.do", new boardDetail());
		map.put("boardDelete.do", new boardDelete());
		map.put("boardList.do", new boardList());
		map.put("AFindInfo.do", new AFindInfo());
		map.put("boardRegister.do", new boardRegister());
		map.put("boardUpdate.do", new boardUpdate());
		map.put("myPage.do", new myPage());
		map.put("progressBar.do", new progressBar());
		map.put("bookingList.do", new bookingList());
		map.put("myPageAddList.do", new myPageAddList());
		map.put("commentRegister.do", new commentRegister());
		map.put("boardRegisterCheck.do", new boardRegisterCheck());
		map.put("commentDelete.do", new commentDelete());
		map.put("boardLoginCheck.do", new boardLoginCheck());
		map.put("boardLoginCheck.do", new boardLoginCheck());
		map.put("noticeList.do", new noticeList());
		map.put("joinPwCheck.do", new joinPwCheck());
		map.put("userUpdateUserInfo.do", new userUpdateUserInfo());
		map.put("userDeletePwCheck.do", new userDeletePwCheck());
		map.put("pwUpdateCheck.do", new pwUpdateCheck());
		map.put("bookingCancle.do", new bookingCancle());
		map.put("bookingUpdate.do", new bookingUpdate());
		map.put("pagePrevCheck.do", new pagePrevCheck());
		map.put("pageNextCheck.do", new pageNextCheck());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String path = uri.substring(cp.length() + 1);

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charser=UTF-8");

		String finalPath = null;
		command com = map.get(path);

		if ("gomain.do".equals(path)) {
			command eventListCommand = map.get("mainEventlist.do");
			if (eventListCommand != null) {
				eventListCommand.execute(request, response);
			}
		}
		if ("goenroll.do".equals(path)) {
			command eventListCommand = map.get("eventList.do");
			if (eventListCommand != null) {
				eventListCommand.execute(request, response);
			}
		}

		if (path.startsWith("go")) {

			finalPath = path.replace("go", "").replace(".do", "");
		} else {
			finalPath = com.execute(request, response);
		}

		if (finalPath == null) {

		} else if (finalPath.contains("redirect:/")) {

			response.sendRedirect(finalPath.split("/")[1]);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher(finalPath + ".jsp");
			rd.forward(request, response);
		}

	}

}
