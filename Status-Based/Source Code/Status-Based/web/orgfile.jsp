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
                          <a href="proxy_page.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Proxies Home</a><br><br>
                       
                        <a href="fileupload1.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">File Upload</a><br><br>
                        <a href="orgfile.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Original File</a><br><br>
                        
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
                                    <th style="color:#660066; font-size:23px;font:bolder">Send Request</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Download File</th>
                                </tr>
                                <br></br>
                                <tr>
                                   <%
                                       HttpSession user=request.getSession();
String email=user.getAttribute("email").toString(); 
                                        try {
                                            String owner=null,mail=null;
                                            Connection con;
                                            Statement st;
                                            ResultSet rs;
                                             ResultSet rs1;
                                            con = Dbconn.getConnection();
                                            st = con.createStatement();
                                            rs = st.executeQuery("select * from ownerreg");
                                            while(rs.next())
                                            {
                                              owner=rs.getString("fname");
                                              mail=rs.getString("email");
                                            }
                                            rs1=st.executeQuery("select * from files");
                                            while (rs1.next()) {

                                    %>
                                     
                                    <td style="font-size:18px;font:bolder" ><%=rs1.getString("file_name")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs1.getString("size")%></td>
                                    <td style="font-size:18px;font:bolder"><%=owner%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs1.getString("date")%></td>
                                    <td style="font-size:18px;font:bolder;"><a href="key_request.jsp?fname=<%=rs1.getString("file_name")%>&email=<%=mail%>& size=<%=rs1.getInt("size")%>" >Request</a> </td>
                                     <td style="font-size:18px;font:bolder;"><a href="f_verify.jsp?fname=<%=rs1.getString("file_name")%>&email=<%=mail%>& size=<%=rs1.getInt("size")%>" >Download</a> </td>
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
