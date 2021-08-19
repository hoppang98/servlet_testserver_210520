<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<div class="logo">
		<a href="quiz02.jsp"><h3 class="text-success">Melong</h3></a>
	</div>
	<div class="search">				
		
		<div class="searchbar">
			<form action="template.jsp" method="POST">
			<div class="input-group">
				<input type="text" class="form-control" name="search">
				<div class="input-group-append">
					<input type="submit" class="btn btn-info" value="검색">
				</div>
			</div>
                  </form>
		</div>
		
	</div>
</header>