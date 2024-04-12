package servlets;

import db.Checkingft;
import db.FetchingData;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ShowChecked")
public class ShowChecked extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            Checkingft ck = new Checkingft();
                String tableName= request.getParameter("chk");
                if (ck.isvalid(tableName)) {
                    response.sendRedirect("seatbooking.jsp");
                    out.println("<p>The table already exists.</p>"+tableName+ck.isvalid(tableName));

                } else {

                    out.println("<p>The table does not exist.</p>"+tableName+ck.isvalid(tableName));
                }

    }
}
