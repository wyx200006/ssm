<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="/libs/bootstrap/css/bootstrap.min.css"/>
 <link rel="stylesheet" type="text/css" href="/libs/font-awesome/css/font-awesome.min.css"/>
 <link rel="stylesheet" type="text/css" href="/css/form-elements.css"/>
 <link rel="stylesheet" type="text/css" href="/css/style.css"/>
 <script src="/libs/jquery/jquery.min.js"></script>
 <script src="/libs/bootstrap/js/bootstrap.min.js"></script>
 <script src="/libs/bootstrap/js/jquery.backstretch.js"></script>
 <script src="/libs/bootstrap/js/scripts.js"></script>
<title>CMS后台登录</title>
</head>
<body>
<!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
                    <div class="row" style="padding-left:260px">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>CMS </strong>后台登录</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box" style="margin: 0 auto">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-car" style="font-size:100px;color:red"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="username" placeholder="用户名" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="password" placeholder="密   码" class="form-password form-control" id="form-password">
			                        </div>
			                        <input type="submit" class="btn btn-success btn-lg btn-block" />
			                    </form>
		                    </div>
                        </div>
                    </div>
        </div>
</body>
</html>