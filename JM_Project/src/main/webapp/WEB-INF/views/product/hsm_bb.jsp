<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<%-- <script src="${pageContext.request.contextPath}/resource/ckeditor/ckeditor.js"></script>	 --%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel = "stylesheet" href="/resources/main/css/main/main.css">
<title>소형 불박기계</title>
<style>
  .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">



<div class="container-fluid text-center bg-grey">

  <div class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/image/s4.jpg" style="width: 400px; height: 300px;" >
        <p><strong>소형불박기계</strong></p>
        <!-- <p>Yes, we built Paris</p> -->
      </div>
    </div>
   <%--  <c:forEach items="${ProductList}" var = "ProductVO">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/image/${ProductVO.product_picture}" style="width: 400px; height: 300px;" >
        <p><strong>${ProductVO.product_title}</strong></p>
        <!-- <p>Yes, we built Paris</p> -->
      </div>
    </div>
    </c:forEach>	 --%>
  </div>
</div>



</body>
</body>
</html>