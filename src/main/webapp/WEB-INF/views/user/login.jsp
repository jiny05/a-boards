<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>501호 친목 게시판</title>
<link rel="stylesheet" href="/resource/css/style.css?${millis }">
</head>
<body>

	<div class="nav">
		<div class="nav_ad">
			<div class="ad">
				<a href="#">접속하기<img class="ad_img"
					src="resource/image/img2.png"></a>
				<ul class="submenu">
					<li><a href="#">로그인</a></li>
					<li><a href="#">가입하기</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- nav -->

	<div class="layer_bg" style="display: block">
		<div class="layer">
			<h4 class="layer_h4">친목 게시판 로그인</h4>
			<div class="layer_login">
			<form action="/user/login-task">
				<div class="join-input">
					<input type="text" placeholder="아이디" name="id" />
				</div>
				<div class="join-input">
					<input type="password" placeholder="비밀번호" name="pass"/>
				</div>
				<p>
					<c:if test="${param.cause eq 'error' }">
					아이디 또는 비밀번호가 일치하지 않습니다.
					</c:if>
				</p>
				<button class="button_1">로그인</button>
			</form>
			</div>
			<a href="/" class="layer_close">닫기</a>
		</div>
	</div>
	<!-- login popup -->

	<div>
		<h1>게시판</h1>
		<div align="right">
			<a href="/board/create">글쓰기</a>
		</div>
		<div align="left">
			<a href="/index?arr=writed">등록순</a> | <a href="/index?arr=views">조회순</a>
			| <a href="/index?arr=likes">추천순</a>
		</div>
		<div class="root">
			<table>
				<tr>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회</th>
					<th>추천</th>
				</tr>
				<c:forEach items="${list }" var="li">
					<tr>
						<td><a href="/board/detail?boardId=${li.boardId }">${li.title }</a></td>
						<td width="15%">${li.writer }</td>
						<td width="15%">${li.writed }</td>
						<td width="10%">${li.views }</td>
						<td width="10%">${li.likes }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="/resource/js/custom.js"></script>
</body>
</html>