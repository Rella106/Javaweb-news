<%@ page contentType="text/html;charset=ISO8859_1" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.lang.Math.*" %>
<jsp:useBean id="conn" scope="page" class="news.conn"/>

<%!
String id = "";
String sql = "";
ResultSet rs = null;
ResultSet rsTmp = null;

%>
<html>

<head>
<title>新闻</title>
<link rel="stylesheet" type="text/css" href="news.css">
</head>
<%
id = request.getParameter("id");
sql="SELECT * from news where ID=" + id;
rs = conn.executeQuery( sql );

if(!rs.next()) {
	out.println("错误的ID号");
	rs.close();
}else {
	%>
	<table width="100%" HEIGHT=100% border="1" cellspacing="0" cellpadding="0" bordercolorlight="#000000" bordercolordark="#FFFFFF">
	  <tr bgcolor="#FAD185"> 
		<td height=20 align=center><b><%=new String(rs.getString("title").getBytes("GB2312"), "ISO8859_1")%></b></td>
	  </tr>
	  <tr> 
		<td valign=top>
		<p><%=new String(rs.getString("content").getBytes("GB2312"), "ISO8859_1")%>
	</tr>
	</table>
	<br><b>相关新闻：</b><ul>
	<%
	sql="SELECT * from news where ID<>"+id+" and keyw='" + rs.getString("keyw")+"' order by ID desc";
	rs.close();
	rs = conn.executeQuery(sql);
	while(rs.next()) {
	%>
		<li><a href=newswind.jsp?id=<%=rs.getInt("ID")%>><u>
		<%=new String(rs.getString("title").getBytes("GB2312"), "ISO8859_1")%></u></a>--
		<%=new String(rs.getString("author").getBytes("GB2312"), "ISO8859_1")%>
		【<%=rs.getDate("times").toString()%>】
	<%
	}
	rs.close();
}
%>
</ul>
</html>