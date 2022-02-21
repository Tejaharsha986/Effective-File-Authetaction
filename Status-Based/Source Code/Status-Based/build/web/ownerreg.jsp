<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
          <style>
body {font-family: Arial, Helvetica, sans-serif;}

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


</style>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action='ownerregister' method="post">
        <table border="0" width="100%" bgcolor="3498db" cellspacing="0" cellpadding="0" style="color:white;text-align: center;">
            <tr height="50px">
                <td><h2>Status- Based Data source with complete Review in cloud storage

</h2></td>
            </tr>
            <table border="0" width="100%"  cellspacing="0" cellpadding="0"  style="font-size: 20px;line-height: 1.5;text-align: center">
                <tr height="550px">
                    <td width="20%">
                        <a href="owner.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">File Owner</a><br><br>
                        <a href="proxy.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6" >Proxies</a><br><br>
                        <a href="registry.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Registry Server</a><br><br>
                        <a href="storage.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Storage Server</a><br><br>
                        <a href="auditor.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Auditor</a><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    </td>
               
                    <td width="80%" bgcolor='#bdc3c7'>
                        <img src="img/a1.jpg" height="300px" width="100%">
                        <br><br>
                        <h2>Owner Registration</h2>
                      <input type="text" id="fname" name="fname" placeholder="FIRST NAME" size="30" style="padding:10px;border-radius: 5px">
                      <br><br>

    <input type="text" id="lname" name="lname" placeholder="LAST NAME" size="30" style="padding:10px;border-radius: 5px">
    <br><br>
    <input type="email" id="email" name="email" placeholder="EMAIL" size="30" style="padding:10px;border-radius: 5px">
    <br><br>
    <input type="text" id="uname" name="uname" placeholder="USER NAME" size="30" style="padding:10px;border-radius: 5px">
    <br><br>
    <input type="password" id="pass" name="pass" placeholder="PASSWORD" size="30" style="padding:10px;border-radius: 5px">
    <br><br> 
   
    <input type="text" id="state" name="state" placeholder="STATE" size="30" style="padding:10px;border-radius: 5px">
    <br><br>
     <input type="text" id="dob" name="dob" placeholder="DATE OF BIRTH (dd-mm-yy)" size="30" style="padding:10px;border-radius: 5px">
    <br><br>
    <input type="submit" value="Submit">
                    </td>
                </tr>
            </table>
        </table>
        </form>
    </body>
</html>
