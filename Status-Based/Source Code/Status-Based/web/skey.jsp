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
                         <a href="owner_page.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Owner Home</a><br><br>
                        <a href="fileshare.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6" >File Share to Proxies</a><br><br>
                        <a href="fileupload.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">FIle Upload to Cloud</a><br><br>
                        <a href="add_proxy.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Activate Proxies</a><br><br>
                        <a href="auth_proxy.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Authorized proxies</a><br><br>
                        <a href="index.html" style="font-size: 26px;text-decoration: none;color: #95a5a6">Logout</a><br><br><br><br><br><br>  </td>
               
                    <td width="80%" bgcolor='#bdc3c7'>
                        <img src="img/a1.jpg" height="300px" width="100%">
                        <br><br><br><br>
                
                <table border="0" align='center' width="1000px"  style="text-align: center;background-color:#ffff00">
                 
                                <tr>
                                    <th style="color:#660066; font-size:23px;font:bolder" >Proxy ID</th>
                                    <th style="color:#660066; font-size:23px;font:bolder" >Secret Key</th>
                                    <th style="color:#660066; font-size:23px;font:bolder" >First Name</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Last Name</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Email</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">UserName</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Password</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">DOB</th>
                                     <th style="color:#660066; font-size:23px;font:bolder">State</th>
                                           
                                </tr>
                                <br></br>
                                <tr>
                                   <%
                                        try {

                                            Connection con;
                                            Statement st;
                                            ResultSet rs;
                                            con = Dbconn.getConnection();
                                            st = con.createStatement();
                                            rs = st.executeQuery("select * from proxyreg where issued='"+"Not Added"+"'");
                                            while (rs.next()) {

                                    %>
                                    
                                     <td style="font-size:18px;font:bolder"><%=rs.getString("fname")%></td>
                                    <td style="font-size:18px;font:bolder" ><%=rs.getString("lname")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("email")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("uname")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("pass")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("dob")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("state")%></td>
                                    
                                </tr>
                                <%}
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                %>
                            </table>
                    </td>
                </tr>
            </table>
        </table>
    </body>
</html>
