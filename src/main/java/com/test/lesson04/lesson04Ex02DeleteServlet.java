package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_delete")
public class lesson04Ex02DeleteServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//request에서 삭제할 아이디를 꺼냄
		int id = Integer.valueOf(request.getParameter("id")); //string값인 id를 integer로 변환해서 가져오기
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// delete 쿼리 수행
		String deleteQuery = "delete from new_user where id = " + id;
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		mysqlService.disconnect();
		
		// 목록 화면으로 이동(리다이렉트)
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
