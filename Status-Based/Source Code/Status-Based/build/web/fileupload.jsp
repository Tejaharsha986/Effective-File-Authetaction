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
       
        <table border="0" width="100%" bgcolor="3498db" cellspacing="0" cellpadding="0" style="color:white;text-align: center;">
            <tr height="50px">
                <td><h2>Status- Based Data source with complete Review in cloud storage

</h2></td>
            </tr>
            <table border="0" width="100%"  cellspacing="0" cellpadding="0"  style="font-size: 20px;line-height: 1.5;text-align: center">
                <tr height="550px">
                    <td width="20%">
                        <a href="owner_page.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Owner Home</a><br><br>
                       
                        <a href="fileupload.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">FIle Upload to Cloud</a><br><br>
                        <a href="add_proxy.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Activate Proxies</a><br><br>
                        <a href="auth_proxy.jsp" style="font-size: 26px;text-decoration: none;color: #95a5a6">Authorized proxies</a><br><br>
                        <a href="index.html" style="font-size: 26px;text-decoration: none;color: #95a5a6">Logout</a><br><br><br><br><br><br>
                    </td>
               
                    <td width="80%" bgcolor='#bdc3c7'>
                        <img src="img/a1.jpg" height="300px" width="100%">
                        <br><br>
                        <h2>File Upload to Cloud</h2>
                    <form action="Upload" method="post" enctype="multipart/form-data"> 
<label style="font-size: 20px;margin-left:30px;">File Upload:</label><input type="file" id="id"  style="height: 40px; width:250px; " name="file" required style="margin-left: 45px;" placeholder="Enter one time key "/><br><br>
 
<input type="submit"  value="Upload"style="border-radius: 12px;height: 38px;width: 93px;background-color:#ff33ff"/>

 
                    </td>
                </tr>
            </table>
        </table>
        </form>
    </body>
</html>
