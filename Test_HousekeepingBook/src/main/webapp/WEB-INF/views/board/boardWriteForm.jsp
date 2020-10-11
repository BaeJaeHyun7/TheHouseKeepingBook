<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>家計簿入力</title>
<script type="text/javascript">

</script>
</head>
<body>

	<h1>[ 家計簿入力 ]</h1>
	
	<form action="/board/boardWrite" method="post">
		メモ <input type="text" name="moneybook_memo" id="moneybook_memo"><br>
		分類	<select id="moneybook_type" name="moneybook_type">
				<option value="収入">収入</option>
				<option value="支出">支出</option>
			</select><br>
		金額	<input type="text" id="moneybook_amount" name="moneybook_amount"><br>
		<input type="submit" value="入力する">
	
	</form>
	
	
</body>
</html>