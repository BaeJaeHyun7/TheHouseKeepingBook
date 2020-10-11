<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>家計簿</title>
<script type="text/javascript">
	function boardWriteForm(){

	location.href = "/board/boardWriteForm";
	}
</script>
</head>
<body>
	<h1>[ 家計簿 ]</h1>
	
	<table border="1">
		<tr>
			<th>番号</th>
			<th>メモ</th>
			<th>種類</th>
			<th>金額</th>
			<th>作成日</th>
			<th></th>
			<th></th>
		</tr>
		
		<c:choose>
			<c:when test="${not empty list }">
				<c:forEach items="${list }" var="board">
					<tr>
					<td>${board.moneybook_no }</td>
					<td>${board.moneybook_memo }</td>
					<td>${board.moneybook_type }</td>
					<td>${board.moneybook_amount }</td>
					<td>${board.moneybook_indate }</td>
					<td><input type="button" value="修整"> </td>
					<td><input type="button" value="削除"> </td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
			<tr>
					<td colspan="7">登録されたデータがありません。<td>
			</tr>	
			</c:otherwise>
		</c:choose>
		
	</table>
	<input type="button" value="家計簿作成" onclick="boardWriteForm()"><br>
	<select id="moneybook_type">
		<option value="all">全体</option>
		<option value="input">収入</option>
		<option value="output">支出</option>
	</select>
	<input type="text" id="searchText" placeholder="検索ワード入力">
	<input type="button" value="検索" onclick="searchBoard()"><br>

	<form action="/board/boardList" method="get" id="searchForm">
		<input type="hidden" name="searchType" id="type">
		<input type="hidden" name="searchText" id="text">
	</form>
	
	<input type="button" value="総収入を求める">
	<input type="button" value="総支出を求める">
	<input type="text" id="sum" placeholder="総収または総支出"><br>
	<input type="button" value="最小金額を求める">
	<input type="button" value="最大金額を求める">
	<input type="text" id="minmax">
	
</body>
</html>