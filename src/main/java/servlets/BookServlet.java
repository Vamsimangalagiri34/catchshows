package servlets;

import db.Dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminloginser
 */
@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String mno=req.getParameter("mno");
        String password=req.getParameter("password");
        Dao dao=new Dao();
        PrintWriter out=res.getWriter();
        try {
            if (dao.signup(mno, password)) {
                HttpSession mobi= req.getSession();
                mobi.setAttribute("mobile",mno);
                req.setAttribute("islogin", "true");
                req.getRequestDispatcher("index.jsp").forward(req, res);
               // res.sendRedirect("index.jsp");
            }
            else if(dao.admins(mno,password)){
                System.out.print(mno);
                System.out.print(password);

              res.sendRedirect("UploadToDB.jsp");
            }
            else{
                req.setAttribute("msg","Failed Enter Valid Crendentials");
                req.getRequestDispatcher("signup.jsp").forward(req,res);
            }
        }
        catch (Exception e){
            out.println(e);
        }
    }
}
