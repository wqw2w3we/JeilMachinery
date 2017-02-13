<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>회원가입</title>
<style type="text/css">
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"data-offset="60">
   <script>
    
         var formObj = $("form[role='form']");
         console.log(formObj);
         $("#confirm").on("click", function() {
            formObj.submit();
         });
        /*  $("#cancel").on("click", function() {
        	 location.href='../main';
         }); */
    /*   $("#checkid").on("click", function() {
         var user_id = $("#user_id").val();
         $.ajax({
            type : 'POST',
            url : 'checkid',
            data : user_id,
            SUCCESS : function(data) {
               if (data == 1) {
                  alert("사용불가");
               }
               alert("사용가능");
            }

         });

      }); */
      var result = '${msg}';
      if (result == 'SUCCESS') {
         alert("회원가입이 되었습니다.");
      }
      
      /* function goCancle(){
    	  history.go(-1)();
    	}	     */
   </script>
   <br>
   <br>
<form method="post" role="form">

	<div class="container">
	  <h2>회원가입</h2>
	  	<div class="form-group">
	      <label for="email">이름</label>
	      <input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름을 입력해주세요">
	    </div>
	    <div class="form-group">
	      <label for="email">아이디</label>
	      <input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디를 입력해주세요">
	    </div>
	  	<div class="form-group">
	      <label for="pwd">비밀번호</label>
	      <input type="password" class="form-control" id="user_pass" name="user_pass" placeholder="비밀번호를 입력해주세요">
	    </div>
	    <div class="form-group">
	      <label for="email">이메일</label>
	      <input type="email" class="form-control" id="user_email" name="user_email" placeholder="메일주소를 입력해주세요">
	    </div>
	    
	    <!-- <div class="checkbox">
	      <label><input type="checkbox"> Remember me</label>
	    </div> -->
		<br>
		</div>
		
	 <div style="text-align: center;">
	   <button type="submit" class="btn btn-default" id="confirm">확인</button>
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <button type="reset" class="btn btn-default">취소</button>
	 </div>   
</form>
	   
</body>
</html>