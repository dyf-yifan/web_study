package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @author ding
 * @ClassaName IndexServlet
 * @Despription 书的信息
 * @Date 2019/9/28
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     Book[] books = {
        new Book("丽湖集韵","1.jpg","王豪任"),
        new Book("ANNUAL","2.jpg","ANNUAL"),
        new Book("浮生六记","3.jpg","沈复")
};
        List<Book> bookList = Arrays.asList(books);
        req.setAttribute("bookList",bookList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
