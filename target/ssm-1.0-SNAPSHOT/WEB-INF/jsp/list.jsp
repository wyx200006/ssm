<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2020/6/7
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>首页</h1>
    <table>
        <tr>
            <td>id</td>
            <td>名称</td>
            <td>类型</td>
            <td>创建时间</td>
        </tr>
    <c:forEach items="${taskStrategys}" var="taskStrategy">
        <tr>
            <td>${taskStrategy.id}</td>
            <td>${taskStrategy.name}</td>
            <td>${taskStrategy.type}</td>
            <td>${taskStrategy.createTime}</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
