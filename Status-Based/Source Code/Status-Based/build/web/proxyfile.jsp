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
            <table border="0" width="100%" cellspacing="0" cellpadding="0"  style="font-size: 20px;line-height: 1.5">
                <tr height="550px">
                    <td width="20%">
                        <a href="storage_page.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Storage Home</a><br><br>
                        <a href="ownerfile.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6" >Owner File Details</a><br><br>
                        <a href="proxyfile.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Proxies File Details</a><br><br>
                        
                        <a href="index.html" style="font-size: 26px;text-decoration: none;color: #95a5a6">Logout</a><br><br><br><br><br><br>
                    </td>
               
                    <td width="80%" bgcolor='#bdc3c7'>
                            <img src="img/a1.jpg" height="300px" width="100%">
                        <br><br>
                
                <table border="0" align='center' width="1000px" hieght="1200px" style="text-align: center;background-color:#ffff00">
                 
                                <tr>

                                    <th style="color:#660066; font-size:23px;font:bolder" >File Name</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">File Size</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">File Owner</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Date</th>
                                  
                                </tr>
                                <br></br>
                                <tr>
                                   <%
                                        try {
                                            String owner=null;
                                            Connection con;
                                            Statement st;
                                            ResultSet rs;
                                             ResultSet rs1;
                                            con = Dbconn.getConnection();
                                            st = con.createStatement();
                                            rs = st.executeQuery("select * from proxyreg");
                                            while(rs.next())
                                            {
                                              owner=rs.getString("fname");
                                            }
                                            rs1=st.executeQuery("select * from pro");
                                            while (rs1.next()) {

                                    %>
                                     
                                    <td style="font-size:18px;font:bolder" ><%=rs1.getString("filename")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs1.getString("size")%></td>
                                    <td style="font-size:18px;font:bolder"><%=owner%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs1.getString("date")%></td>
                                   
                                </tr>
                                <%}
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                %>
                   
                    </td>
                </tr>
            </table>
        </table>
    </body>
</html>
