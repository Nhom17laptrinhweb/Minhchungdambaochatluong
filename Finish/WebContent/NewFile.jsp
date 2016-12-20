<%@ page import ="java.sql.*" %>
<%
    String tenmc = request.getParameter("mmc");    
    String mt = request.getParameter("mt");
    
    String nn = request.getParameter("nn");
    String nt = request.getParameter("nt");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nhom17dbcl",
            "root", "dosanhdai1");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into mucminhchung(tenmc, mota, nguoinhap, nguoitao,tinhtrang) values ('" + tenmc + "','" + mt + "','" + nn + "','" + nt + "','0' )");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("2taothanhcong.jsp");
     
    }
%>