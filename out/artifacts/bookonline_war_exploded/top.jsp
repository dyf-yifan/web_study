<%@page import="com.bo.entity.User" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User)session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/index">首页</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/year.jsp">70周年</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/yinpin.jsp">音频</a>
    </li>
    <li>
        <a href="#">漫画</a>
    </li>
    <li>
        <a href="#">游戏</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/wall.jsp">更多</a>
    </li>
</ul>
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

