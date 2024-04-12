package servlets;
import db.Dao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class signup extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String pno = req.getParameter("pno");
        String password = req.getParameter("password");
        Dao dao = new Dao();
        try (PrintWriter out = res.getWriter()) {
            if (dao.signup(pno, password)) {
                HttpSession userl= req.getSession();
                userl.setAttribute("mobile",pno);
                res.sendRedirect("index.jsp");
            }
            else{
                out.print("failes");
            }
        }
        catch(Exception e){
            System.out.print(e);
        }
    }
}
