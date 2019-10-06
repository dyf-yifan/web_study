<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%--
  Created by IntelliJ IDEA.
  User: 丁怡凡
  Date: 2019/10/4
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        h2,h3{
            color: rgb(25,118,210);
        }


        #search{
            height: 80px;
            background-color: rgb(246,246,241);
            display: flex;
            align-items: center;
            padding-left: 8px;
            margin-bottom: 10px;
        }

        .search-input{
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }

        .search-btn{
            width: 35px;
            height: 35px;
            background-color: rgb(155,154,143);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-btn img{
            width: 35px;
            height: 35px;
        }

        .col-4 img{
            margin: 10px 5px 20px 5px;
            width: 80%;
        }

        hr{
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }

        .col-6{
            height: 400px;
            padding-right: 10px;
        }

        .col-6 img{
            width: 100%;
            height: 100%;
            border-radius:20px
        }

        table{
            width: 400px;
            border: 0;
            margin: 10px auto 0;
            text-align: center;
            border-collapse: collapse;
            border-spacing: 0;
        }

        th{
            background: #ffcdd2;
            line-height: 30px;
            font-size: 14px;
            color: #FFF;
        }
        /*设置奇数行的背景色*/
        tr:nth-child(odd){
            background: #FFF;
        }
        /*设置偶数列的文字颜色*/
        td:nth-child(even){
            color: #00695c;
        }
        /*鼠标指针划过变色*/
        tr:hover{
            background: #ffebee;
            color: #006064;
        }

        td,table th{
            border: 1px solid#EEE;
        }
    </style>
</head>
<body>
<%
    Book book = (Book)request.getAttribute("book");
    pageContext.setAttribute("book",book);
%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="书名、作者、ISBN" class="search-input">
    <div class="search-btn">
        <img src="${pageContext.request.contextPath}/image3/sousuo.png" alt="">
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/image3/${book.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${book.author}</p>
                    <p>${book.briefintroduction}</p>
                </div>
            </div>
        </div>
        <div class="col-4">
            <h3>热门评论</h3>
            <hr>
<%--            <img src="${pageContext.request.contextPath}/image3/book4.jpg" alt="">--%>
            <table border="1" cellspacing="0" cellpadding="6">
                <tr>
                    <th>书名</th>
                    <th>热门评论</th>
                    <th>书友</th>
                </tr>

                <tr>
                    <td>我是猫</td>
                    <td>从前言提到的东北大雪纷飞，知道译者于雷是东北人。要将《我是猫》这样的才子书译好，需要点中国古典文学的功力。结果没想到译者在其中夹杂了好多亲切的家乡俚语，有的即便不算是家乡独有，但也确是东北人民乃至北方人民的常用表达。看来觉得有趣，就随手摘录了一下，供诸君一乐。
                        （当然也可以想象这种夹带方言的译法给一些读者带来的困扰。但是读名著感觉那些生于民国的前辈译者还是南方人居多，于雷先生这是东北话的回击哈哈……）
                        我曾一度和黄鼠狼较量，倒血霉啦！（血=加强修饰）
                        “所谓教师，就是每天早晨吱哇乱叫的那一位吗？”（zi儿哇乱叫=妈妈评价熊孩子的话）
                        “是呀，简直不像话！内人一问他什么，他就横扒拉竖挡地穷对付……”（横扒拉竖挡地穷对付……我不解释了。）
                        他总爱捉弄人，我常和他干架。
                        用海藻和生鸡蛋，将一尺多长黑油油的乌发好一顿搓洗。（好一顿）
                        线裤（至少北京人叫秋裤）
                        长方型火炉本应擦得锃亮才是上乘。（zeng亮原来有汉字对应）
                        万一出点什么事，可就抓瞎喽！（约等于完蛋）
                        “那就泡在碱水里，咔咔搓它一通总行吧？”（常用拟声词）
                        太愁人啦。那么，你放在哪儿啦？（你可真愁人……）
                        大家听了他的话，都说：‘白猫黑猫，抓住耗子是好猫。’</td>
                    <td>北楼鬼</td>
                </tr>

                <tr>
                    <td>如何阅读一本书
                    </td>

                    <td>
                        有史以来看的最费劲、最用力的书，那笔记做得自己看都感动哇，结果是收货颇丰，干货不仅到了笔记里，还时不时出现在生活的角角落落。赞！
                    </td>

                    <td>
                        阖昔
                    </td>
                </tr>

                <tr>
                    <td>
                        百年孤独
                    </td>

                    <td>
                        回忆没有归路，春天总是一去不返。车窗外瞬间闪过世间万象，如同将一首飞逝的长诗撕成碎片向着遗忘之乡一路抛洒。                    </td>

                    <td>
                        丹朱AI
                    </td>
                </tr>

                <tr>
                    <td>
                        梦的解析
                    </td>

                    <td>
                        梦即意欲之满足，这个观点很富有启发性，我认为是正确的，原因是我在得知这个理论后试着分析了自己十多余梦，基本上可以得出让我恍然大悟而又十分信赖的结论,正如弗洛依德在分析完他那个“想做教授”的梦以后的心情——两与他背景相似的同事没能当上教授，他的梦中模拟出一个人，这个人实际上是两个人的柔和，两个人都各有一个缺点，这个梦实际上是想要说服他自己两个同事各有缺点，但他没有，与他们有所不同，所以他可以当上教授。                    </td>

                    <td>
                       已注销
                    </td>
                </tr>
            </table>

        </div>
    </div>
</div>
</body>
</html>

