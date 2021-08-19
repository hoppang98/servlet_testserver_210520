<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>템플릿 구성</title>

  <style>
  	#wrap {width:100%; height:900px;}
  	header {height:50px;}
  	menu {width:15%; height:900px; margin:0;}
  	.right {width:85%;}
  	.content {height:90%;}
  	footer {height:10%;}
  </style>
</head>
<body>
	<div id="wrap">
		<header class="bg-success">
			<jsp:include page="header.jsp" />
		</header>
		<div class="d-flex">
			<nav class="bg-info">
				<jsp:include page="menu.jsp" />
			</nav>
			<div class="right">
				<section class="content bg-warning">
					<%
					 	String contentName = "content1.jsp";
					%>
					<jsp:include page="<%= contentName %>" />
				</section>
				<footer class="bg-danger">
					<jsp:include page="footer.jsp" />
				</footer>
			</div>
		</div>
	</div>
</body>
</html>