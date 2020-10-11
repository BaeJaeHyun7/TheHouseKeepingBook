<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>メイン画面</title>
</head>
<body>
	<h1>[  家計簿 ]</h1>
	
	
	<ul>

	<c:choose>
		<c:when test="${not empty sessionScope.loginId }">
	${sessionScope.loginId } 様、ようこそ。
	<li>
		<a href="/board/goboardList">私の家計簿</a>
	</li>
	<li>
		<a href="/member/logout">ログアウト</a>
	</li>
	</c:when>
	<c:otherwise>
	<li> 
		<a href="/member/joinForm">会員加入</a>
	</li>
	<li> 
		<a href="/member/loginForm">ログイン</a>
	</li>
	</c:otherwise>
	</c:choose>
	

</ul>
	
</body>
</html>
