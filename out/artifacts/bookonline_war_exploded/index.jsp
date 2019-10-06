<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%--
  Created by IntelliJ IDEA.
  User: 丁怡凡
  Date: 2019/9/27
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
          <style type="text/css">
              .container{
                    background-image: url("image3/pursue.jpg") ;
                    /*background-repeat: repeat;*/
                  /*background-attachment: scroll;*/
                  /*background-position: 0% 0%;*/
                  background-size: contain;
              }
              h2,h3{
                color: rgb(0,105,92);
              }
            #search{
              height: 80px;
              background-color: rgb(255,235,238);
              display: flex;
              align-items: center;
              padding-left: 8%;
              margin-bottom: 10px;
            }
            .search-input{
              flex: 0 0 40px;
              height: 35px;
              background-color: #ffebee;
              border: none;
              border-radius: 3px;
              margin-left: 50px;
            }
            .search-btn{
              width: 35px;
              height: 35px;
              background-color: rgb(135,154,143);
              display: flex;
              align-items: center;
              justify-content: center;
            }
            .search-btn img{
              width: 35px;
              height: 35px;
            }
            .card{
              height: 180px;
              margin: 20px 5px 20px 5px;
            }
            .card img{
              width: 100%;
              height: 90%;
            }
            .card p{
              font-size: 13px;
              color: #9b9b9b;
            }
            .col-3 img{
                width: 200px;
                height: 200px;
              margin: 10px 5px 20px 5px;
            }

            hr{
              width: 90%;
              color: #eee;
              margin-top: 10px;
            }
          </style>
  </head>
  <body>
  <%
    List<Book> bookList = (List<Book>)request.getAttribute("bookList");
  %>
    <%--使用jsp的include动作，将top.jsp页面包含进来，这个顶部导航可以给各个页面共享--%>
  <div id="top">
    <jsp:include page="top.jsp"/>
  </div>

  <div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="请输入书名、作者、ISBN或关键字" class="search-input">
    <div class="search-btn">
      <img src="image3/sousuo.png" alt="">
    </div>
  </div>


<%--  内容主体区--%>
  <div class="container">
    <div class="row">
<%--      左侧2/3主体部分--%>
      <div class="col-8">
        <h3>我的收藏</h3>
        <hr>
        <div class="row">

        <%--          遍历图书数据集合，将每个图书对象放入页面对象--%>
          <%
          for (Book book : bookList){
            pageContext.setAttribute("book",book);

          %>
<%--          引用col-2表示每行显示5本，再追加card细节样式--%>
    <div class="col-2 card">
        <%--            点击每本图书封面图，地址栏跳转为/detail/id,进入图书详情Servlet--%>
        <a href="${pageContext.request.contextPath}/detail/${book.id}">
            <img src="image3/${book.cover}" alt="">
        </a>
        <p style="color:rgb(51,119,178)">${book.name}</p>
        <p>${book.author}</p>
          </div>
          <%
            }
          %>
        </div>
      </div>

      <div class="col-2">
        <h3>历史记录</h3>
        <hr>
        <img src="image3/book3.jpg" alt="">
      </div>

    <footer>
      <ul>
        <li>关于我们</li>
        <li>联系我们</li>
        <li>友情链接</li>
        <li>帮助中心</li>
      </ul>
      <ul>
        <li>非法举报</li>
        <li>156734631</li>
        <li>法律声明</li>
        <li>合作事项</li>
      </ul>
    </footer>


  </body>
</html>
