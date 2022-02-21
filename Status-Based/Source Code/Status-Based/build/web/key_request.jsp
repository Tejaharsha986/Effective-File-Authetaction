<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%

    String fname = request.getParameter("fname");
    String mail = request.getParameter("email");
   // String size = request.getParameter("size");
    System.err.println(fname + mail);
    try {
        Connection con;
        Statement st;
        con = Dbconn.getConnection();
        st = con.createStatement();
        int j = st.executeUpdate("update files set req='"+"Active"+"' where file_name='"+fname+"'");
        if (j != 0) {

            //response.sendRedirect("a_request.jsp?msg=Secret_key_request_send_to_Authority");
            out.println("<script>alert('Request Send to the Auditor')</script>");
        } else {
            response.sendRedirect("orgfile.jsp?msg=Request_failed");
        }



    } catch (Exception ex) {
        response.sendRedirect("orgfile.jsp?msg=You_hava_already_send_key_request");
        ex.printStackTrace();
    }
%>