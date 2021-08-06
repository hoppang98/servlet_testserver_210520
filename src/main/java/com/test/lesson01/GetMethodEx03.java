package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		String userId = request.getParameter("user_id"); //ex03_get.html에서 user_id 가져오기
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(request.getParameter("age")); // string으로 받아오기 때문에 숫자로 변환이 필요
		
//		out.println("GET METHOD");
//		out.println("userId : " + userId);
//		out.println("name : " + name);
//		out.println("age : " + age);
		
		// JSON {"user_id":"miga2400", "name":"손지승", "age":24} json은 이런 형식, ""모양이 중복이면 \추가해서 사용, 아니면 ''작은 따옴표 사용하기
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name 
				+ "\", \"age\":" + age + "}"); 
//		{
//			  "user_id": "miga2400",
//			  "name": "jiseung",
//			  "age": 24
//		} - 이렇게 나온다
	}
}
