<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<title>게시판 리스트</title>
<script>
function goWrite(){
	location.href='write';
}
var result = '${deleteOK}';

if (result == 'deleteSuccess') {
	alert("삭제가 완료되었습니다.");
}

</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"data-offset="60">
	<br>
	
	<div class="container">
	<div class="alert alert-info">
		
		<strong>기계 관련 Q&A</strong>
		<div style="text-align: right;">
		<button type="button" class="btn btn-success" onclick="goWrite();">글쓰기</button>
		</div>
	</div>
	
  <table class="table">
    <thead>
      <tr>
        <th style="width: 10%; text-align: center;">분류</th>
        <th style="width: 65%; text-align: left;">제목</th>
        <th style="width: 10%; text-align: center;">이름</th>
        <th style="width: 15%; text-align: center;">날짜</th>
      </tr>
    </thead>
    <tbody>
    
    <c:forEach items="${list}" var = "boardVO">
      <c:if test="${boardVO.board_category=='hsm00'}"><tr class="active"></c:if>
      <c:if test="${boardVO.board_category=='hsm11'}"><tr class="success"></c:if>
      <c:if test="${boardVO.board_category=='hsm22'}"><tr class="info"></c:if>
      <c:if test="${boardVO.board_category=='hsm33'}"><tr class="warning"></c:if>
      
        <td style="text-align: center;">
        <c:if test="${boardVO.board_category=='hsm00'}">전체</c:if>
        <c:if test="${boardVO.board_category=='hsm11'}">금박기계</c:if>
        <c:if test="${boardVO.board_category=='hsm22'}">불박기계</c:if>
        <c:if test="${boardVO.board_category=='hsm33'}">기타</c:if>
        </td>
        <td style="text-align: left;"><a href="read?board_no=${boardVO.board_no}">${boardVO.board_title}</a></td>
        <td style="text-align: center;">${boardVO.board_name}</td>
        <td style="text-align: center;"><fmt:formatDate value="${boardVO.board_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
      </c:forEach>	
    </tbody>
    <!--       <tr class="success">
        <td>Success</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr class="danger">
        <td>Danger</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr class="info">
        <td>Info</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      <tr class="warning">
        <td>Warning</td>
        <td>Refs</td>
        <td>bo@example.com</td>
      </tr>
      <tr class="active">
        <td>Active</td>
        <td>Activeson</td>
        <td>act@example.com</td>
      </tr> -->
  </table>
  

</div>
	
	
</body>
</html>