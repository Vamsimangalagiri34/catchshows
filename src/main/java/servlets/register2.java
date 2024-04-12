package servlets;

import db.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/register2")
public class register2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String pno=req.getParameter("pno");
        String name=req.getParameter("name");
        String password=req.getParameter("password");
        String address=req.getParameter("address");
        Dao dao=new Dao();
        PrintWriter out=res.getWriter();
        try {
            if (dao.register(pno, name, password, address)) {
                out.print("success");
            }
            else{
                out.println("failed");
            }
        }
        catch (Exception e){
            out.println(e);
        }
    }
}
