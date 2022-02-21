<%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <table border="0" width="100%" bgcolor="3498db" cellspacing="0" cellpadding="0" style="color:white;text-align: center;">
            <tr height="50px">
                <td><h2>Status- Based Data source with complete Review in cloud storage

</h2></td>
            </tr>
             <%
                 String fdet=null;
                                        try {
                                            
                                            Connection con;
                                            Statement st;
                                            ResultSet rs;
                                             ResultSet rs1;
                                            con = Dbconn.getConnection();
                                            st = con.createStatement();
                                         
                                            rs=st.executeQuery("select * from files");
                                            while (rs.next()) {
                                               // java.sql.Blob ablob=rs.getBlob("data");
                                                //fdet=new String(ablob.getBytes(1, (int) ablob.length()));
                                                //System.out.println(fdet);
                                                Blob b=rs.getBlob("data");
                                                byte[] by=b.getBytes(1, (int) b.length());
                                                fdet=new String(by);
                                                System.out.println(fdet);
                                              
                                            }
                                        }
                                            catch(Exception e)
                                                    {
                                                    e.printStackTrace();
                                                    }
                                        %>
                                          
            <table border="0" width="100%" cellspacing="0" cellpadding="0"  style="font-size: 20px;line-height: 1.5">
                <tr height="550px">
                    <td width="20%">
                        <a href="auditor_page.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Auditor Home</a><br><br>
                       
                        <a href="fileaudit.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">File Auditing</a><br><br>
                       
                        <a href="request.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Request of Proxies</a><br><br>
                        <a href="index.html" style="font-size: 26px;text-decoration: none;color: #95a5a6">Logout</a><br><br><br><br><br><br>
                    </td>
               
                    <td width="80%" bgcolor='#bdc3c7' align="center">
                        <img src="img/a1.jpg" height="300px" width="100%">
                        
                        <h2>File View</h2>
                        
                        
                         This is the encrypted file and decrypt using cryptographic methods.
                            
                            
            
                           
                    </td>
                </tr>
              
            </table>
        </table>
    </body>
</html>
