package servlets;

import db.Checkingft;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/isTablep")
public class isTablep extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Checkingft chk = new Checkingft();

        resp.setContentType("text/plain"); // Set content type to plain text

        try {
            if (chk.isvalid("BOOKINGDB")) {
                if (chk.inserted("BOOKINGDB", "ramu", "i9")) {
                    resp.getWriter().write("Data inserted successfully");
                } else {
                    resp.getWriter().write("Insertion failed");
                }
            } else {
                resp.getWriter().write("Table does not exist");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("An error occurred");
        }
    }
}
