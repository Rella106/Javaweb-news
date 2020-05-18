<%@ page contentType="text/html;charset=ISO8859_1" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.lang.Math.*" %>
<jsp:useBean id="conn" scope="page" class="news.conn"/>

<%!
String sql = "";
int totalRecords = 1;
ResultSet rs = null;
ResultSet rsTmp = null;

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>新闻</title>
<link rel="stylesheet" type="text/css" href="news.css">

<Script language="JavaScript">
//打开新窗口函数NewsWindow
function NewsWindow(id)
{
  window.open('newswind.jsp?id='+id,'infoWin', 'height=400,width=600,scrollbars=yes,resizable=yes');
}
</Script>
</head>

<body>
<%
rsTmp = conn.executeQuery("select count(id) as countid from news");
rsTmp.next();
totalRecords = rsTmp.getInt("countid");
rsTmp.close();

sql="SELECT * from news order by ID desc";
rs = conn.executeQuery( sql );

	if(!rs.next()) {
		out.println("<p>还 没 有 任 何 新 闻</p>");
	} else {
%>
	<p><strong>全部新闻</strong>
	<table border=1 borderColorDark=#ffffec borderColorLight=#5e5e00 cellPadding=1 cellSpacing=0 width=100%>
	<tr bgcolor=cccccc align=center><td>标题</td><td>作者</td><td>日期</td></tr>
<%
	int cc = 1;
	do {
	    // 不同行之间以不同颜色显示
    	if(cc % 2 == 1)
			  out.println("<tr bgcolor=#96d0fd>");
		else
			  out.println("<tr BGCOLOR=#F4F4F4>");
%>
 	    <td><a href="javascript:NewsWindow(<%=rs.getInt("ID")%>)"><u>
	    <%=new String(rs.getString("title").getBytes("GB2312"), "ISO8859_1")%></u></a></td>
	    <td><%=new String(rs.getString("author").getBytes("GB2312"), "ISO8859_1")%></td>
	    <td><%=rs.getDate("times").toString()%>

<%
	    // 如果是今天的新闻，加上new标记
		out.println("</td></tr>");
		cc++;
	} while(rs.next());

	out.println("</table><p>共" + totalRecords + "条新闻");
}
rs.close();
%>
<p align=center><a href="newsedit.jsp">编辑新闻</a>