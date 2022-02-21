<%@page import="Mail.MailSender"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%


    String title = "Secret ID";
    String name = request.getParameter("fname");
    String mail = request.getParameter("email");
    session.setAttribute("uname", name);
    session.setAttribute("semail", mail);
    System.out.println("Get Parameter : " + name + mail);

    Random s = new Random();
    int a = s.nextInt(80000000 - 5000) + 25000;
    System.out.print(a);
    String key = String.valueOf(a);
   
	
	Random r = new Random();
    int b = s.nextInt(9000 - 3000)+1000;
    System.out.print(b);
    String id = String.valueOf(b);
   String msg = "Secret Key:" + id + "\n Proxy ID:" + key;
    try {

        Connection con = Dbconn.getConnection();
        Statement st, st1 = null;
        st = con.createStatement();
         int i = st.executeUpdate("update proxyreg set proxyid = '" + key + "',skey='"+id+"',issued='"+"Added"+"' where  uname='" + name + "'");
        if (i != 0) {
            System.out.println("Udate 1111111111111111");
            MailSender smail = new MailSender();
            smail.sendMail(mail, title, msg);

            response.sendRedirect("skey.jsp?msg=Success");
 
        } else {
            response.sendRedirect("skey.jsp?msg=Failed");
        }


    } catch (Exception e) {
        e.printStackTrace();
    }
%>