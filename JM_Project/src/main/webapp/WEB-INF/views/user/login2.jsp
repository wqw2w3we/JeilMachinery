<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- login -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
input[type=text], input[type=password] {
   width: 70%;
   padding: 5px;
   margin: auto;
   box-sizing: border-box;
}

.aa {
   border: 1px solid gray;
   background-color: white;
   margin: auto;
   width: 35%;
   padding: 15px 35px;
}
</style>
<title>로그인</title>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"data-offset="60">
  <script type="text/javascript">
      $(document).ready(function() {
         var result = '${msg}';
         if (result == 'SUCCESS') {
            alert("아이디와 비밀번호를 확인해주세요.");
         }

         var formObj = $("form[role='form']");
         console.log(formObj);
         $("#login").on("click", function() {
            formObj.submit();
         });
         $("#join").on("click", function() {
            self.location = "/join";
         });
      });
   </script>
   <br>
   <Br>
   <div class="aa">
      <h2>로그인</h2>
      <hr />
      <form method="post" action="loginPost" role="form">
         <label>아이디</label> <br> <input type="text" id="user_id" name="user_id"><br>
         <label for="lname">비밀번호</label><br> <input type="password" id="user_pass" name="user_pass">
      </form>
      <br>
      <button id="login" class="btn btn-primary btn-md">로그인</button>
      <button id="join" class="btn btn-primary btn-md">회원가입</button>
      <hr>
      <font>비밀번호를 잊으셨나요?</font> <br> <a href="/user/findpwd">비밀번호찾기</a>
   </div>

   <br>
   <br>
   <br>
   <br>
</body>
</html>