/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginAction;

import DatabaseConnectivity.Dbconn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author IBN5
 */
@WebServlet(name = "proxylogin", urlPatterns = {"/proxylogin"})
public class proxylogin extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException
             {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
             HttpSession user = request.getSession(true);
   
            String uname=request.getParameter("name");
           String pass=request.getParameter("pass");
           Connection con=Dbconn.getConnection();
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from proxyreg where email='"+uname+"' AND pass='"+pass+"' and status='"+"Activated"+"'");
                if(rs.next()){
                    String name=rs.getString("fname");
                   
                        user.setAttribute("email", uname);
                        user.setAttribute("pass", pass);
                response.sendRedirect("proxy_page.jsp");
          
        }
                 
                   else{
    out.println("<script>alert('User Not yet Activated..')</script> ");
}
}

catch(Exception e){
            out.println(e);
        }
      }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
