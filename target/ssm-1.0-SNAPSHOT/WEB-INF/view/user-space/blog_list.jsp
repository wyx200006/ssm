<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>我的博客</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="/libs/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/libs/bootstrap/js/bootstrap.js" />
    
    <link rel="stylesheet" type="text/css" href="/css/cms.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    </style>
  </head>
  <body>
    <jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	
	<!-- 横幅 -->
	<div class="container">
		<div class="row">
			<div class="col-xs-12 my_banner">
			</div>
		</div>
	</div>
	<br/>
	<!-- 主体内容区 -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<jsp:include page="/WEB-INF/inc/my_left.jsp">
					<jsp:param value="blogs" name="module"/>
				</jsp:include>
			</div>
			<div class="col-md-9">
				<div class="panel panel-default">
				  <div class="panel-body">
				    	<h1>我的博客</h1>
				    	<hr/>
				    	<table class="table table-striped table-bordered table-hover">
				    		<thead>
				    			<tr class="info">
				    				<th>标题</th>
				    				<th>分类</th>
				    				<th>点击量</th>
				    				<th>时间</th>
				    				<th>操作</th>
				    			</tr>
				    		</thead>
				    		<tbody class="">
				    		<c:forEach items="${blogs}" var="blog">
				    			<tr id="item_${blog.id}">
				    				<td>${blog.title}</td>
				    				<td>${blog.category.name}</td>
				    				<td>${blog.hits}</td>
				    				<td><fmt:formatDate value="${blog.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				    				<!-- /my/blog/edit?id=${blog.id} -->
				    				<td><a href="javascript:void(0)" onclick="edit(${blog.id})" class="btn btn-success" 
				    				data-toggle="modal" data-target="#edit">编辑</a>&nbsp;&nbsp;
				    				<a href="remove?id=${blog.id}" class="btn btn-danger">删除</a></td>
				    			</tr>
				    		</c:forEach>
				    		<tr>
				    				<td colspan="6">
				    					${pInfo}
				    				</td>
				    			</tr>
				    		</tbody>
				    	</table>
				  </div>
				</div>
				
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/inc/footer.jsp"/>
   	<!-- 编辑 -->
	<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <form action="update" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id" />
  <div class="form-group">
    <label for="exampleInputEmail1">标题</label>
    <input type="text" name="title"  class="form-control" id="title" placeholder="标题">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">摘要</label>
    <input type="text" name="summary"  class="form-control" id="summary" placeholder="摘要">
  </div>
  <div class="form-group">
    内容<textarea class="form-control" rows="3" name="content" id="content"></textarea>
  </div>
  <div class="form-group">
  	<img src="" id="picture" style="width:200px;height:200px" /><br />
    <label for="exampleInputFile">图片上传</label>
    <input type="file" id="exampleInputFile" name="file" />
  </div>
  <button type="submit" class="btn btn-success">提交</button>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">返回</button>
      </div>
    </div>
  </div>
</div>
<script>
	function edit(id){
		$.ajax({
			url : '/my/blog/edit',
			data : {id:id},
			dataType : 'json',
			type : 'post',
			success : function(data){
				$("#title").val(data.title);
				$("#summary").val(data.summary);
				$("#content").val(data.content);
				$("#picture").prop("src",data.picture);
				$("#id").val(data.id);
			}
		});
	}
</script>
  </body>
</html>