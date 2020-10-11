<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ログイン </title>
<script type="text/javascript">
	function formCheck(){
			var acc_id = document.getElementById("acc_id").value;
			var acc_pw = document.getElementById("acc_pw").value;

			if(acc_id == '' || acc_id.length ==0){
				alert("アイディを入力してください。");
				return false;

				}else if(acc_id.length<3 || acc_id.length>8){
					alert("アイディは3~8文字で入力してください。");
					return false;
					}

			if(acc_pw == '' || acc_pw.length ==0){
				alert("パスワードをご入力ください。");
				return false;

				}else if(acc_pw.length<5 || acc_pw.length>10){
					alert("パスワードは5~10文字で入力してください。");
					return false;
					}

			return true;
	}


</script>
</head>
<body>
	<h1>[  ログイン ]</h1>
	
	<form action="/member/login" method="post" onsubmit="return loginCheck();">
		アイディ : <input type="text" name="acc_id"><br>
		パスワード : <input type="password" name="acc_pw"><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>