package servlets;

import db.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;




@WebServlet("/SearchBar")
public class SearchBar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String mname=req.getParameter("data");
        Dao dao=new Dao();
        String mid=dao.searchBar(mname);
        HttpSession sed= req.getSession();
        sed.setAttribute("mid",mid);
        if(mid!=null) {
            resp.sendRedirect("searchbar.jsp?mid="+mid);
        }
        else{
            resp.sendRedirect("index.jsp");
        }

    }
}
