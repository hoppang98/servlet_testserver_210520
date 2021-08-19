package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")

public class Lesson04Quiz01Servlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		//DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		//쿼리 수행
		String insertQuery = "insert into `real_estate` (realtorId, address, area, type, price)"
				+ " values (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000)";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		String selectQuery = "select address, area, type from `real_estate` order by id desc limit 10;";
		try {
			ResultSet result = mysqlService.select(selectQuery);
			while(result.next()) {
				String address = result.getString("address");
				int area = result.getInt("area");
				String type = result.getString("type");
				out.println("매물 주소 : " + address + ", 면적:" + area + ", 타입 : " + type);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//DB 연결 해제
		mysqlService.disconnect();
	}
}
