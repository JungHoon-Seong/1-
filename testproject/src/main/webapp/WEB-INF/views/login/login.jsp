<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
fieldset {
	width: 280px;
	margin: auto;
}

 ul {
 	list-style-type: none;
 	
 }
 div{
 	text-align: center;
 }
 button{
 	
 	
 	width: 120px;
 	border: none;
 	
 	margin:auto;
 	font-size:16px;
	margin: 4px 2px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: #008CBA;
	box-shadow: 3px 3px 0 #5492DB;
	transition: all 0.5s;
 }
 button:hover {
 	
	font-size:16px;
	margin: 4px 2px;
	
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: #008CBA;
	box-shadow: 3px 3px 0 #5492DB;
	transition: all 0.5s;
}


</style>
</head>
<body>
	<form action="login" method="post">
	<fieldset>
		<ul>
			<legend><h2>로그인</h2></legend>
			<li><label for="userId">아이디</label></li>
			<li><input type="text" id="userId" name="userId" maxlength="20" required="required"></li>
			<li><label for="userPwd">비밀번호</label></li>
			<li><input type="password" id="userPwd" name="userPwd" maxlength="20" required="required"></li>
		</ul>
		<div>
			<button type="submit" id="btnLogin">로그인</button>
		</div>
		</fieldset>
	</form>
	
</body>
</html>