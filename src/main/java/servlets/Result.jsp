<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="db.FetchingData"%>
<html>
<title>result</title>
<body>
<%
try{
FetchingData fd=new FetchingData();
Connection con=FetchingData.con();
try(PreparedStatement pst=new PrepareStatement("select * from upload")){
ResultSet rs=pst.excuteQuery();
while(rs.next()){%>
<h3><%=rs.getString("mname");%>
<%}
}

}
%>
</body>
</html>