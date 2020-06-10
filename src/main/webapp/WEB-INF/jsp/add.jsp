<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2020/6/7
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="add">
        <table>
            <tr>
                <td>名称</td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>
            <tr>
                <td>类型</td>
                <td>
                    <input type="text" name="type">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="添加">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
