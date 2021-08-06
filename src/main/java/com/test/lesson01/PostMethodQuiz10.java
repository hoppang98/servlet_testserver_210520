package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("Id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		response.setContentType("text/html");
		
		String Id = request.getParameter("Id");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>로그인</title></head><body>");
		if(userMap.get("Id").equals(Id) == false) {
			out.print("ID가 일치하지 않습니다.");
		} else if(!userMap.get("password").equals(password)) {
			out.print("비밀번호가 일치하지 않습니다.");
		} else {
			out.print(userMap.get("name") + "님 환영 합니다.");
		}
		
		out.print("</body></html>");
		
		
	}

}