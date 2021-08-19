<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%-- 
		1) 사용자 추가 : ex02.jsp(회원가입 인풋 폼 화면) -> 서블릿(insert 쿼리로 저장) -> redircet ex02_1.jsp(사용자 목록)
		만드는 순서 = ex02.jsp -> Lesson04Ex02Servlet.java -> ex02_1.jsp -> 삭제 버튼(Lesson04Ex02DeleteServlet.java
	 --%>
	 <form method="post" action="/lesson04/ex02_insert">
	 	<p>
	 		<strong>이름</strong>
	 		<input type="text" name="name">
	 	</p>
	 	<p>
	 		<strong>생년월일</strong>
	 		<input type="text" name="yyyymmdd">
	 	</p>
	 	<p>
	 		<strong>이메일</strong>
	 		<input type="text" name="email">
	 	</p>
	 	<p>
	 		<strong>자기소개</strong><br>
	 		<textarea rows="5" cols="50" name="introduce"></textarea>
	 	</p>
	 	<p>
	 		<input type="submit" value="추가">
	 	</p>
	 </form>
</body>
</html>