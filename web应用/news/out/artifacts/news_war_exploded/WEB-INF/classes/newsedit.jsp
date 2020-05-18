<%@ page contentType="text/html;charset=ISO8859_1" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.lang.Math.*" %>
<jsp:useBean id="conn" scope="page" class="news.conn"/>

<%!
String sql = "";
int id = 1;
ResultSet rs = null;
ResultSet rsTmp = null;
%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>新闻</title>
<link rel="stylesheet" type="text/css" href="news.css">
<script language="JavaScript">
function NewsWindow(id)
{
window.open('newswind.jsp?id='+id,'infoWin', 'height=400,width=600,scrollbars=yes,resizable=yes');
}
</script>
</head>

<body>
<%
if(request.getParameter("del")!=null) 
{
  conn.executeUpdate("delete * from news where id=" + request.getParameter("del"));
}
sql="SELECT * from news order by ID desc";
rs = conn.executeQuery(sql);

if(!rs.next())
	out.println("<p>还 没 有 任 何 新 闻</p>");
else {
%>
    <p><strong>全部新闻</strong><table width=100%>
	<%
	do {
		id = rs.getInt("ID");
	%>
		<tr><td><a href="javascript:NewsWindow(<%=id%>)"><u>
		<%=new String(rs.getString("title").getBytes("GB2312"), "ISO8859_1")%></u></a>--
		<%=new String(rs.getString("author").getBytes("GB2312"), "ISO8859_1")%>
		【<%=rs.getDate("times").toString()%>】
		</td><td align=right><img src=note.gif><a href=newsedit2.jsp?id=<%=id%>>编辑</a>　
		<img src=del.gif><a href=newsedit.jsp?del=<%=id%>>删除</a></td></tr>
		<%
	}while(rs.next());
}
rs.close();
%>
<p align=right><a href=newsadd.jsp>添加新闻</a>　<a href="default.jsp">查看新闻</a>