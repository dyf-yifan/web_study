package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author ding
 * @ClassaName LoginServlet
 * @Despription 登录
 * @Date 2019/9/28
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if("admin".equals(username)&&"111".equals(password)){
            System.out.println(1);
            HttpSession session = req.getSession();
            session.setAttribute("username",username);
            System.out.println(2);
            resp.sendRedirect("index");
            System.out.println(3);
        }else{
            resp.setCharacterEncoding("UTF-8");
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            writer.print("登陆失败");
            resp.sendRedirect("/");
        }
    }
}
