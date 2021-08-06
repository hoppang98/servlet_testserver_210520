package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02") //어노테이션 - 간단한 매핑 방법(web.xml대신 사용 가능)

public class UrlMappingEx02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		// 1~10 까지의 합계
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		// 자바 안에 html문법으로 작성 - 안좋은 구조
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>합계</title></head><body>");
		out.print("합계:" + "<strong>" + sum + "</strong>");
		out.print("</body></html>");
	}

}
