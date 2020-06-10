<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="howsun">

    <title>CMS后台管理系统</title>

    <!-- Bootstrap core CSS-->
    <link href="/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/libs/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/libs/sb-admin/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

	<!-- 后台管理系统顶部 -->
 	<jsp:include page="_inc_top.jsp"/>

    <div id="wrapper">

 		<!-- 后台管理系统左部菜单 -->
 		<jsp:include page="_inc_left.jsp"/>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">后台首页</a>
            </li>
            <li class="breadcrumb-item active">文章管理</li>
          </ol>

          <br/>
          <div class="row">
           <table class="table table-striped table-bordered table-hover">
				    		<thead>
				    			<tr class="info">
				    				<th>标题</th>
				    				<th>分类</th>
				    				<th>时间</th>
				    				<th>操作</th>
				    			</tr>
				    		</thead>
				    		<tbody class="">
				    		<c:forEach items="${blogs}" var="blog">
				    			<tr id="item_${blog.id}">
				    				<td>${blog.title}</td>
				    				<td>${blog.category.name}</td>
				    				<td><fmt:formatDate value="${blog.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				    				<!-- /my/blog/edit?id=${blog.id} -->
				    				<td>
				    					<c:choose>
				    						<c:when test="${blog.status == 0 }">
				    							<a href="audit?id=${blog.id}" class="btn btn-info">未审核</a>&nbsp;&nbsp;
				    						</c:when>
				    						<c:otherwise>
				    							<button type="button" class="btn btn-success" disabled="disabled">已审核</button>&nbsp;&nbsp;
				    						</c:otherwise>
				    					</c:choose>
				    				
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
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright Â© Your Website 2019</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="/libs/jquery/jquery.min.js"></script>
    <script src="/libs/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/libs/sb-admin/sb-admin.min.js"></script>
  </body>

</html>
