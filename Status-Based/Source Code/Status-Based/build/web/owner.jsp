<%-- 
    Document   : owner.jsp
    Created on : 30-May-2018, 10:02:00
    Author     : Techciti Technology
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2" width="100%" style="font-weight: bold;text-align: center">
            <tr height="590px">
                <td width="70%">
                    <img src="img/a3.jpg" height="590px" width="100%">
                </td>
                <td width="30%">
                    <h2>File Owner Login Here</h2>
                    <br><br>
                   <form action="ownerlogin">
   
    <input type="email" id="name" name="name" placeholder="OWNER EMAIL ID" size="30" style="padding:10px;border-radius: 10px">
    <br><br><br>

    <input type="password" id="pass" name="pass" placeholder="PASSWORD" size="30" style="padding:10px;border-radius: 10px">
    <br><br><br>
   
    <input type="submit" value="Submit">
    <br><br>
    Don't Have an account? <a href='ownerreg.jsp' style='text-decoration: none'>Sign Up</a>
    <br><br><a href='index.html'>Back to Home</a>
  </form>
                
                </td>
            </tr>
        </table>
    </body>
</html>
