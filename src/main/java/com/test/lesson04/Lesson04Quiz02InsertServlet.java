package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Lesson04Quiz02InsertServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//request parameter => 변수에 저장
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// 쿼리 -> insert
		String insertquery  = "insert into `favorite` (`name`, `url`)"
				+ "value ('" + name + "', '" + url + "')";
		
		try {
			mysqlService.update(insertquery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB연결 해제
		mysqlService.disconnect();
		
		//리다이렉트 => 목록 화면으로 이동
		response.sendRedirect("/lesson04/quiz02.jsp");
		
	}

}
