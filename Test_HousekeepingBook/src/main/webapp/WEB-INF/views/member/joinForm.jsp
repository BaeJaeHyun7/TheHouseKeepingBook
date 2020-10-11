<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員加入</title>
<script type="text/javascript">
	function formCheck(){
			var acc_id = document.getElementById("acc_id").value;
			var acc_pw = document.getElementById("acc_pw").value;
			var acc_pw_check = document.getElementById("acc_pw_check").value;
			var acc_nm = document.getElementById("acc_nm").value;

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

			if(acc_pw != acc_pw_check){
				alert("同じパスワードを入力してください。");
				return false;
				}

			if(acc_nm == '' || acc_nm.length ==0){
				alert("名前を入力してください。");
				return false;
				}

			return true;
	}


</script>
</head>

<body>
	<h1>[  会員加入フォーム ]</h1>
	
	<form action="/member/join" method="post" onsubmit="return formCheck();">
		アイディ : <input type="text" name="acc_id" id="acc_id"><br>
		パスワード : <input type="password" name="acc_pw" id="acc_pw"><br>
		パスワード確認 : <input type="password" id="acc_pw_check"><br>
		名前 : <input type="text" name="acc_nm" id="acc_nm"><br>
		<input type="submit" value="会員加入">
	</form>
</body>
</html>