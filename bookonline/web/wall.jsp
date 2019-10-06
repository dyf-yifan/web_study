<%--
  Created by IntelliJ IDEA.
  User: 丁怡凡
  Date: 2019/10/6
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>照片墙</title>
    <style type="text/css">
        body{
            background: url("image3/pursue.jpg") no-repeat top center fixed;
            background-size: 100%auto;
        }
        .content{
            width: 900px;
            height: 1000px;
            overflow: hidden;
            margin: 100px auto;
            position: relative;
        }
        img{
            z-index: 1;
            height: auto;
            position: absolute;
            padding: 10px 10px 15px 10px;
            background: #ffffff;
            border: 1px solid #cccccc;
            -moz-transition: 0.5s;
            transition: 0.5s;
        }
        img:hover{
            z-index: 2;
            transform: scale(1.5);
            -moz-transform: scale(1.5);
            -webkit-transform: scale(1.5);
            box-shadow: -10px 10px 20px#000;
            -moz-box-shadow: -10px 10px 20px#000;
            -webkit-box-shadow: -10px 10px 20px#000;
        }
        /*.pic1{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(20deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic2{*/
        /*    left: 280px;*/
        /*    top: 60px;*/
        /*    -webkit-transform: rotate(-10deg);*/
        /*    -moz-transform: rotate(-10deg);*/
        /*    transform: rotate(-10deg);*/
        /*}*/
        /*.pic3{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(30deg);*/
        /*    -moz-transform: rotate(20deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic4{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(20deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic5{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(60deg);*/
        /*    -moz-transform: rotate(20deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic6{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(90deg);*/
        /*    -moz-transform: rotate(5deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic7{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(60deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic8{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(80deg);*/
        /*    transform: rotate(80deg);*/
        /*}*/
        /*.pic9{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(90deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic10{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(60deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic11{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(70deg);*/
        /*    transform: rotate(20deg);*/
        /*}*/
        /*.pic12{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(20deg);*/
        /*    transform: rotate(50deg);*/
        /*}*/
        /*.pic13{*/
        /*    left: 100px;*/
        /*    top: 50px;*/
        /*    -webkit-transform: rotate(20deg);*/
        /*    -moz-transform: rotate(80deg);*/
        /*    transform: rotate(30deg);*/
        /*}*/
        .pic1{
            top:0px;
            left:400px;
            -webkit-transform:rotate(-5deg);
            -moz-transform:rotate(-5deg);
            transform:rotate(-5deg);
        }
        .pic2{
            top:0px;
            left:600px;
            -webkit-transform:rotate(-20deg);
            -moz-transform:rotate(-20deg);
            transform:rotate(-20deg);
        }
        .pic3{
            bottom:0;
            right:0;
            -webkit-transform:rotate(5deg);
            -moz-transform:rotate(5deg);
            transform:rotate(5deg);
        }
        .pic4{
            bottom:0;
            left:300px;
            -webkit-transform:rotate(-10deg);
            -moz-transform:rotate(-10deg);
            transform:rotate(-10deg);
        }
        .pic5{
            bottom:0;
            left:0;
            -webkit-transform:rotate(-10deg);
            -moz-transform:rotate(-10deg);
            transform:rotate(-10deg);}
        .pic6{
            top:0;
            left:0;
            -webkit-transform:rotate(10deg);
            -moz-transform:rotate(10deg);
            transform:rotate(10deg);
        }
        .pic7{
            top:0;
            left:850px;
            -webkit-transform:rotate(20deg);
            -moz-transform:rotate(20deg);
            transform:rotate(20deg);
        }
        .pic8{
            bottom:-20px;
            right:630px;
            -webkit-transform:rotate(5deg);
            -moz-transform:rotate(5deg);
            transform:rotate(5deg);
        }
        .pic9{
            top:90px;left:550px;
            -webkit-transform:rotate(15deg);
            -moz-transform:rotate(15deg);
            transform:rotate(15deg);
        }
        .pic10{
            left:180px;
            top:20px;
            -webkit-transform:rotate(-10deg);
            -moz-transform:rotate(-10deg);
            transform:rotate(-10deg);}
    </style>
</head>
<body>
<div class="content">
    <img class="pic1" src="image3/book1.jpg" alt="">
    <img class="pic2" src="image3/book2.jpg" alt="">
    <img class="pic3" src="image3/book3.jpg" alt="">
    <img class="pic4" src="image3/book4.jpg" alt="">
    <img class="pic5" src="image3/book5.jpg" alt="">
    <img class="pic6" src="image3/book6.jpg" alt="">
    <img class="pic7" src="image3/book7.jpg" alt="">
    <img class="pic8" src="image3/book8.jpg" alt="">
    <img class="pic9" src="image3/book9.jpg" alt="">
    <img class="pic10" src="image3/book10.jpg" alt="">
<%--    <img class="pic11" src="image3/book11.jpg" alt="">--%>
<%--    <img class="pic12" src="image3/book12.jpg" alt="">--%>
<%--    <img class="pic13" src="image3/user2.jpg" alt="">--%>
</div>
</body>
</html>
