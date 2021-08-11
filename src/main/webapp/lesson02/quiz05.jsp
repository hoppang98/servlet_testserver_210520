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
<title>단위 변환</title>
</head>
<body>
	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="quiz05_1.jsp">
			<div class="d-flex">
				<input type="text" class="form-control col-2" name="cm" placeholder="길이를 입력하세요.">
				<span class="mt-3">cm</span> <!-- span태그는 마진 추가하려고 -->
			</div>
		<div>
			<label for="inch">인치</label>
			<input type="checkbox" name="type" id="inch" value="inch">
		
			<label for="yard">야드</label>
			<input type="checkbox" name="type" id="yard" value="yard">
			
			<label for="feet">피트</label>
			<input type="checkbox" name="type" id="feet" value="feet">
		
			<label for="meter">미터</label>
			<input type="checkbox" name="type" id="meter" value="meter">
		</div>
		<input type="submit" class="btn btn-success ml-2" value="변환하기">
		</form>
	</div>
</body>
</html>