<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<script>
function goWrite(){
	location.href='product_write';
}
</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"data-offset="60">
<div class="container-fluid bg-grey">
<c:if test= "${user.user_id == 'admin'}">
<div style = "text-align: right">
<button type="button" class="btn btn-warning" onclick="goWrite();">제품 글쓰기</button>
</div><br>
</c:if>
<div class="container">
    <div class="form-group">
    	<label for="inputdefault">아이디</label>
        <input class="form-control" id="user_id" type="text" name = 'user_id' value="${user.user_id}" readonly="readonly">
    </div>
    <div class="form-group">
      <label for="inputdefault">이름</label>
         <input class="form-control" id="user_name" type="text" name = 'user_name' value="${user.user_name}" readonly="readonly">
    </div>
    <div class="form-group">
      <label for="inputdefault">이메일</label>
        <input class="form-control" id="user_email" type="text" name = 'user_email' value="${user.user_email}" readonly="readonly">
    </div>
    <button>aaaaa</button>
</div>
</div>
</body>
</html>