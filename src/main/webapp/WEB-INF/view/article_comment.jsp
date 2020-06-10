<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="关键词字段的值"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="/libs/jquery/jquery.min.js"></script>
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>垃圾</title>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"
	href="/libs/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/cms.css" />
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- 横幅 -->
	<div class="container">
		<div>
			<h3>${article.title }</h3>
			<span>作者:&nbsp;${article.author.nickname}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span>发布时间:&nbsp; <fmt:formatDate value="${article.created}"
					pattern="yyyy-MM-dd HH:mm:ss" /></span> <span>访问量:&nbsp;${article.hits}</span>
			<div>
				<form action="vote" method="post">
					<input type="hidden" name="blog_id" value="${article.id}" />
					<div>
						<input type="radio" checked name="vote_count" id="A" /><span></span>
						<input type="radio" name="vote_count" id="B" /><span></span> <input
							type="radio" name="vote_count" id="C" /><span></span> <input
							type="radio" name="vote_count" id="D" /><span></span>
					</div>
					<p>
						<input type="submit" class="btn btn-success" value="投票" />
					</p>
				</form>
				<img class="media-object" src="${article.picture}"
					alt="${article.title }">
			</div>
		</div>
		<h2>投票结果</h2>
		<div class="progress">
			<span id="optionA"></span><div class="progress-bar progress-bar-success" role="progressbar"
				aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
				style="width: ${vote.a_count/vote.count*100}%">
			</div>
		</div><br />
		
		<div class="progress">
			<span id="optionB"></span><div class="progress-bar progress-bar-info" role="progressbar"
				aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
				style="width: ${vote.b_count/vote.count*100}%">
			</div>
		</div>
		<br />
		<div class="progress">
		<br />
			<span id="optionC"></span><div class="progress-bar progress-bar-warning" role="progressbar"
				aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
				style="width: ${vote.c_count/vote.count*100}%">
			</div>
		</div><br />
		<div class="progress">
			<span id="optionD"></span><div class="progress-bar progress-bar-danger" role="progressbar"
				aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
				style="width: ${vote.d_count/vote.count*100}%">
			</div>
		</div>


		<%-- -------------所有评论----------------
		
			<c:forEach items="${comments}" var="comment">
				<div style="border:1px solid pink">
				<p>${comment.content}</p>
				<p>
					评论时间: <fmt:formatDate value="${comment.diplaytime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</p>
				<p>评论人: ${comment.nickname}</p>
				</div>
			</c:forEach>
			 --%>
		<%-- <c:choose>
			<c:when test="${_LOGIN_USER_ == null}">
				<div style="background:gray;border:1px solid silver;width:800px;height:400px">
					<a href="/login" class="btn btn-warning">登录</a>
				</div>
			</c:when>
			<c:otherwise>
				<form action="save" method="post">
				
					<input type="hidden" name="blog_id" value="${article.id }" />
					评论内容:<br />
						<textarea name="content" rows="10" cols="50"></textarea><br />
						<input type="submit" class="btn btn-success" value="发表" />
					</form>
			</c:otherwise>
		</c:choose> --%>

	</div>
	<input type="hidden" id="content" value="${article.content}" />
	<script type="text/javascript">
		//var title = '${article.title}';
		var content = '${article.content}';
		var json = eval('(' + content + ')');

		$('#A').val("A");
		$('#B').val("B");
		$('#C').val("C");
		$('#D').val("D");

		$('#A').next().text(json.A);
		$('#B').next().text(json.B);
		$('#C').next().text(json.C);
		$('#D').next().text(json.D);

		//进度条
		$('#optionA').text(json.A);
		$('#optionB').text(json.B);
		$('#optionC').text(json.C);
		$('#optionD').text(json.D);
	</script>
	<jsp:include page="/WEB-INF/inc/footer.jsp" />

	<script type="text/javascript">
		
	</script>
</body>
</html>