<%@page import="com.bo.entity.User" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User)session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<%--
  Created by IntelliJ IDEA.
  User: 丁怡凡
  Date: 2019/10/5
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title70</title>
</head>
<body>
<li>
    <a href="${pageContext.request.contextPath}/index">返回首页</a>
</li>
<li>
    <a href="${pageContext.request.contextPath}/year.jsp">70周年</a>
</li>
<ul>
    <%--    根据user是否为空，显示不同的内容--%>
    <%
        if (user != null){
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/image3/${user.avater}"  alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出</a>
    </li>
    <%
    }else{
    %>
    <a href="${pageContext.request.contextPath}/login">登录|注册</a>
    <%
        }
    %>
</ul>

</body>
</html>
