<%@ page import="com.bo.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 丁怡凡
  Date: 2019/10/4
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .explore{
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(255,235,238);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }

        .nav{
            display: flex;
            align-items: center;
            list-style: none;
        }

        .nav li{
            color: rgb(61,133,73);
            font-size: 18px;
            margin-right: 20px;
        }

        .search-input{
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187,187,202);
            font-size: 16px;
        }

        .info{
            display: flex;
        }

        .profile{
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }

        h2{
            color: rgb(73,73,73);
            margin-left: 15px;
        }

        .info-box{
            padding: 10px 10px 10px 10px;
            width: 90%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            background-color: rgb(237,244,237);
        }

        .info-box .top{
            height: 80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }

        .info-box .top img{
            width: 55%;
            height: 85%;
            margin-right: 5px;
            border-radius: 5px;
        }

        p{
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .item{
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .item img{
            height: 100%;
            width: 20%;
        }
        .read{
            border-bottom: 1px solid #eee;
        }

        .read a{
            color: rgb(51,119,170);
            text-decoration: none;
        }

        .container{
            width: 50%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<%
User user = (User)session.getAttribute("user");
pageContext.setAttribute("user",user);
%>
<%--顶部区域，引入共同的top.jsp页面--%>
<div id="top">
    <jsp:include page="top3.jsp"/>
</div>
<%--浏览区域--%>
    <div class="explore">
        <ul class="nav">
            <li>我就是我，颜色不一样的烟火，比其他的贵五毛左右</li>
        </ul>
        <lable>
            <input type="text" placeholder="请输入标题关键字" class="search-input">
        </lable>
    </div>
<br>
<%--页面主题区域--%>
<div class="container">
    <div class="row">
<%--        左侧2/3区域--%>
        <div class="info">
            <img src="image3/${user.avater}" alt="" class="profile">
            <h2>${user.nickname}</h2>
        </div>
    <br>
        <div class="item">
            <ul class="nav">
                <li>我的收藏</li>
            </ul>
            <p>亚里士多德说“离群索居者，不是野兽，便是神灵。</p>
        </div>
        <div class="item">
            <ul class="nav">
                <li>我的相册</li>
            </ul>
            <img src="image3/user2.jpg" alt="">
            <img src="image3/user3.jpg" alt="">
<%--            <img src="image3/pic_001.jpg" alt="">--%>

        </div>
        <div class="item">
            <ul class="nav">
                <li></li>
            </ul>
            <p></p>
        </div>
        <div class="item">
            <ul class="nav">
                <li>个性签名</li>
            </ul>
            <lable>
                <textarea  cols="80" rows="3"></textarea>
            </lable>
            <div>
                <input type="button" value="留言">
            </div>
        </div>
    </div>
<%--    右侧1/3区域--%>
    <div class="col-4">
        <div class="info-box">
            <div class="top">
                <img src="image3/${user.avater}" alt="">
                <div>
                    <p>长居:${user.address}</p>
                    <p>账号:${user.account}</p>
                    <p>${user.joinDate}加入</p>
                </div>
            </div>
            <br>
            <p>${user.nickname}</p>
        </div>
        <br>
        <div class="item">
            <ul class="nav">
                <li>我的历史记录</li>
            </ul>
            <br>
            <div class="read">
                <p><a href="">${user.nickname}</a>最近常听
                    <a href="http://www.bilibili.com/video/av68964254?share_medium=android&share_source=more&bbid=XYB47CDB6F7C2BE68468777010D7E4C1AEDA5&ts=1570329965111
">【天命轮回，星辰浮光】</a>
                </p>
                <p style="color: #9b9b9b;">2019年10月6日</p>
            </div>
            <div class="read">
                <p><a href="">${user.nickname}</a>最近常听
                    <a href="http://www.bilibili.com/video/av68243612?share_medium=android&share_source=more&bbid=XYB47CDB6F7C2BE68468777010D7E4C1AEDA5&ts=1570330285828">【猫和老鼠】说好不哭</a>
                </p>
                <p style="color: #9b9b9b;">2019年10月5日</p>
            </div>
            <div class="read">
                <p><a href="">${user.nickname}</a>最近常听
                    <a href="http://www.bilibili.com/video/av64751475?share_medium=android&share_source=more&bbid=XYB47CDB6F7C2BE68468777010D7E4C1AEDA5&ts=1570330593935">【她曾活过啊】</a>
                </p>
                <p style="color: #9b9b9b;">2019年10月2日</p>
            </div>
        </div>
        </div>
    </div>
</div>
</body>
</html>
