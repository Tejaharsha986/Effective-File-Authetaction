<%-- 
    Document   : activate_owner
    Created on : 30-May-2018, 12:05:33
    Author     : Techciti Technology
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%


 
    String name = request.getParameter("fname");
    String mail = request.getParameter("email");
    session.setAttribute("fname", name);
    session.setAttribute("semail", mail);
     try {

        Connection con = Dbconn.getConnection();
        Statement st, st1 = null;
        st = con.createStatement();
        int i = st.executeUpdate("update proxyreg set status = '" + "Activated" + "' where email='" + mail + "'");
        if (i != 0) {
          out.println("<script>alert('Activated Successfully')</script>");
           
            response.sendRedirect("active_proxy.jsp?msg=Activated");
        } else {
            response.sendRedirect("active_proxy.jsp?msg=Failed");
        }


    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    </body>
</html>
