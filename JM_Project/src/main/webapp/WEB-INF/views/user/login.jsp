<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
<title>�α���</title>
<script type="text/javascript">
$(document).ready(function() {
    var result = '${msg}';
    if (result == 'SUCCESS') {
       alert("���̵�� ��й�ȣ�� Ȯ�����ּ���.");
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
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"data-offset="60">
 <!-- <div class="aa">
      <h2>�α���</h2>
      <hr />
      <form method="post" action="loginPost" role="form">
         <label>���̵�</label> <br> <input type="text" id="user_id" name="user_id"><br>
         <label for="lname">��й�ȣ</label><br> <input type="password" id="user_pass" name="user_pass">
      </form>
      <br>
      <button id="login" class="btn btn-primary btn-md">�α���</button>
      <button id="join" class="btn btn-primary btn-md">ȸ������</button>
      <hr>
      <font>��й�ȣ�� �����̳���?</font> <br> <a href="/user/findpwd">��й�ȣã��</a>
   </div> -->
   <br>
   <br>
<form method="post" action="loginPost" role="form">

	<div class="container">
		<div class="container">
		  <h2>�α���</h2>
		  	<div class="form-group">
			      <label for="user_id">���̵�</label>
			      <input type="text" class="form-control" id="user_id" name="user_id">
		    </div>
		    <div class="form-group">
			      <label for="user_pass">��й�ȣ</label>
			      <input type="password" class="form-control" id="user_pass" name="user_pass" >
		    </div>
		</div> 
	 </div>
 
 	<div style="text-align: center;">
		<button id="login" class="btn btn-primary btn-md">�α���</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      	<button id="join" class="btn btn-primary btn-md">ȸ������</button>	
	</div>
</form>
</body>
</html>