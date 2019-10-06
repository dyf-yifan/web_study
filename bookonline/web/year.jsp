<%--
  Created by IntelliJ IDEA.
  User: 丁怡凡
  Date: 2019/10/5
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>70周年</title>
<%--    <link>标记用来链接外部CSS文件--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<%--    <style>标记用来在网页头部嵌入CSS代码--%>
    <style type="text/css">
    h1{
        font-size: 40px;
        color: rgb(244,67,54);
        text-align: center;
    }
        .main_view{
            text-align: center;
            display: table-cell;
            vertical-align: middle;
            background-color: #fff;
        }
        img{
            height: 500px;
            width: 1365px;

        }
    </style>
</head>
<body>
<div id="top">
    <jsp:include page="top2.jsp"/>
</div>
<h1>庆祝中华人民共和国成立70周年</h1>
<div class="main_view">
    <img src="image3/70周年.png" alt="">
</div>

</body>
</html>
