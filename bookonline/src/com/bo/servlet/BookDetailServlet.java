package com.bo.servlet;

import com.bo.entity.Book;

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
 * @ClassaName BookDetailServlet
 * @Despription 图书详情页面
 * @Date 2019/10/1
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/detail/*")
public class BookDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的URL,并去除空格，返回主机名到请求参数之间部份的字符串形式，为HttpServletRequest接口中的常用方法
        String requestPath = req.getRequestURI().trim();
        //嗨哟去最后一个/的位置
//      HttpServletRequest接口的常用方法及说明：public String getContextPath()返回请求的上下文路径，此路径由/开头
        int position = requestPath.lastIndexOf("/");
        //从该位置到最后取子串，也就是“/detail/3”中的3，有了这个id，就可以取集合中找到匹配的图书对象
        String id = requestPath.substring(position+1);
        //从全局变量中取出图书列表，.getServletContext()用于获取Servlet上下文对象
        ServletContext sc = this.getServletContext();
        List<Book> bookList = (List<Book>) sc.getAttribute("bookList");
        //遍历，查找指定id的图书
        for (Book book : bookList){
            if (Integer.parseInt(id) == book.getId()){
                //找到匹配的id，存入request，页面转发到图书详情页，地址栏不变
                req.setAttribute("book",book);
                //设置resquest字符编码
               // resp.setContentType("text/plain;charset=utf-8");
              //  resp.getWriter().print(book);
                //<dispatcher>的可选值及说明：FORWARD 当客户端通过RequestDispatcher对象的forward()方法请求时，通过过滤器进行处理
             req.getRequestDispatcher("/book_detail.jsp").forward(req,resp);
//                HttpServletResponse接口的常用方法及说明
                //public void sendRedirect(String location)  使客户端重定向到新的URL，参数location新的地址
            }
        }
    }
}
