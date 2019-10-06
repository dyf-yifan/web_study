<%--
  Created by IntelliJ IDEA.
  User: 丁怡凡
  Date: 2019/10/5
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Titlecentre</title>
</head>
<body>
<li>
    <a href="${pageContext.request.contextPath}/index">返回首页</a>
</li>
<li>
    <a href="${pageContext.request.contextPath}/user.jsp.jsp">个人中心</a>
</li>
<ul>
    <%--    根据user是否为空，显示不同的内容--%>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/image3/${user.avater}"  alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出</a>
    </li>
</ul>

</body>
</html>
