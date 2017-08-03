<%@ page language="java" contentType="text/html"
    pageEncoding="gbk"%>
    <%@ page import="javax.naming.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="java.sql.*" %>
<head>

<title>Insert title here</title>
</head>
<body>
<%
String DSNAME ="java:comp/env/jdbc/ConnectionPool";
Context ctx=new InitialContext();
DataSource ds=(DataSource)ctx.lookup(DSNAME);
Connection conn =ds.getConnection();
%>
<%=conn %>
<%conn.close(); %>
</body>
</html>