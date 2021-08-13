<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
	 	//map을 테이블로 표현하기
	 	// {"korean"=85, "english"=72, "math"=90, "science"=100}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("english",85);
		scoreMap.put("korean",72);
		scoreMap.put("math",90);
		scoreMap.put("science",100);
	%>
	
	<table border=1>
		<%
		Iterator<String> iter = scoreMap.keySet().iterator(); //이터레이터가 키 값을 하나씩 가져오게 한다
		while (iter.hasNext()) { //이터가 다음 값이 있으면
			String key = iter.next(); 
			//while문 안에 태그를 포함시킨다 while문에 tr태그도 반복시킨다
		%>
		<tr>
			<th>
				<%-- <%= key %> ctrl+shift+/-한꺼번에 주석 --%>
				<%
					if (key.equals("korean")) {
						out.print("국어");
					} else if (key.equals("english")) {
						out.print("영어");
					} else if (key.equals("math")) {
						out.print("수학");
					} else if (key.equals("science")) {
						out.print("과학");
					}
				%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>