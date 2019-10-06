package com.bo.servlet;

import com.bo.entity.Book;
import com.bo.service.BookService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author ding
 * @ClassaName IndexServlet
 * @Despription 拦截/index请求，获取所有图书信息，并通过服务器端转发跳转到主页
 * @Date 2019/10/1
 * @Version 1.0
 **/
//通过注解来配置Servlet的代码。通过该局代码进行配置以后，就不需要在web.xml文件中进行配置了
//    例如 @WebServlet("/FirstServlet")
@WebServlet(urlPatterns = "/index")
//在Java中，通常所说的Servlet是指HttpServlet对象，在声明一个对象为Servlet对象时，需要继承HttpServlet类。
// HttpServlet类是Servlet接口的一个实现类，继承此类后，可以重写HttpServlet类中的方法对HTTP请求进行处理
//IndexServlet类通过继承HttpServlet类被声明为一个Servlet对象。此类中包含一个方法，为Servlet针对处理不同的HTTP请求类型所提供的方法
//doGet()方法用来处理HTTP的Get请求
//例如，<form>表单对象所声明的method属性为“post”,提交到Servlet对象处理时，Servlet对象将调用doPost方法进行处理
public class IndexServlet extends HttpServlet {
    @Override
//    处理HTTP Get请求
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取各个Servlet共享的对象
//        public ServletContext getServletContext()用于获取Servlet上下文对象
        ServletContext sc = this.getServletContext();
        //获取全局应用对象中的变量
        List<Book> bookList = (List<Book>)sc.getAttribute("bookList");
        //存入request
        req.setAttribute("bookList",bookList);
      //  resp.setContentType("text/plain;charset=utf-8");
       // resp.getWriter().print(bookList.toString());
        //通过服务器端转发。将数据带过去，并保持地址栏不变
       req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }
}

