package servlets;

import db.Dao;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


/**
 * Servlet implementation class adminloginser
 */
@MultipartConfig
@WebServlet("/UploadToDb")
public class UploadToDb extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mid = req.getParameter("mid");
        String mname = req.getParameter("mname");
        String hero = req.getParameter("hero");
        String heroen = req.getParameter("heroen");
        String director = req.getParameter("director");
        String description = req.getParameter("description");
        String synopsis =req.getParameter("synopsis");
        Part p=req.getPart("pnme");
        String pnme=p.getSubmittedFileName();
        Dao dao = new Dao();
        try {
            if (dao.upLoad(mid, mname, hero, heroen, director,description,pnme,synopsis)) {
                System.out.print("success->");
                System.out.print(pnme);
                String path=getServletContext().getRealPath("")+"movies-imgs";//it used to get file location
                File file=new File(path);
                p.write(path+File.separator+pnme);
                req.setAttribute("masg","success");
//                resp.sendRedirect("UploadToDB.jsp");
                req.getRequestDispatcher("UploadToDB.jsp").forward(req,resp);

            } else {
                System.out.print("");
                String path=getServletContext().getRealPath("")+"movies-imgs";//it used to get file location
                System.out.print(path);
                resp.sendRedirect("UploadToDB.jsp");
            }
        }
            catch(Exception e){
            System.out.print(e);
        }
        }
    }
