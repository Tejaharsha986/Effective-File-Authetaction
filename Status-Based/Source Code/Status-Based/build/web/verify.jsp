<%-- 
    Document   : verify
    Created on : 31-May-2018, 12:44:23
    Author     : Techciti Technology
--%>

<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
            String fname=request.getParameter("fname");
            String mail=request.getParameter("email");
             session.setAttribute("fname", fname);
    session.setAttribute("semail", mail);
            String key=request.getParameter("skey");
            System.out.println(key);
            try {

                                            Connection con;
                                            Statement st;
                                            ResultSet rs;
                                            con = Dbconn.getConnection();
                                            st = con.createStatement();
                                            rs = st.executeQuery("select * from files where skey='"+key+"'");
                                            if (rs.next()) {
                                                response.sendRedirect("downloads.jsp?msg=verified successfully");
                                                //out.println("<script>alert('verified')</script>");
                                            }
                                            else
                                                out.println("<script>alert('Secret Key Mismatch')</script>");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            %>
    </body>
</html>
