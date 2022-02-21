<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DatabaseConnectivity.Dbconn"%>

<%
    Connection con = null;
    Statement st = null;
   
    
    String fname = request.getParameter("fname");
     String mail = request.getParameter("email");
    try {
       // con = Dbconn.getConnection();
      //  st = con.createStatement();
       
          //   int i= st.executeUpdate("insert into f_download (file_name, down)values('"+fname+"','"+mail+"')");
        //if(i!=0){
              byte a[] = fname.getBytes();
        response.setContentType("text/plain");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fname + "\"");
        OutputStream os = response.getOutputStream();
        os.write(a);
        os.close();
        a = null;
       
 
        }
    catch(Exception e)
    {
        e.printStackTrace();
    }
       // else
       // {
            out.println("error");
       // }
            
   
    
  //  }
    

%>
