<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST METHOD 폼태그</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food"); // 선택항목이 여러개일 때 getParameterValues를 사용한다.
		String fruit = request.getParameter("fruit");
	%>
	
	<table border=1> <!-- 부트스트랩을 안써서 일단 못생긴 테두리 사용 -->
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td><%-- <%= foodArr > --%>
				<%
					if (foodArr != null) {
						String result = "";
						for (String food : foodArr) {
							result += food + ","; //OOOO, OOOO, OOOO 이런식으로 만들기
						}
						
						
						// 맨 뒤에 붙은 , 제거하기
						// ex) abc에서 ab만 가져오는 방법 - substring(0, 2)
						result = result.substring(0, result.length() - 1);
						out.print(result);
					}
				%>
			</td>
		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%= fruit %></td>
		</tr>
	</table>
</body>
</html>