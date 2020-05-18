<%@ page contentType="text/html;charset=ISO8859_1" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.lang.Math.*" %>
<jsp:useBean id="conn" scope="page" class="news.conn"/>

<%!
String id = "";
String title = "";
String title1 = "";
String content = "";
String keyw = "";
String author = "";

int currid = 1;

String sql = "";
ResultSet rsTmp = null;
%>

<link rel="stylesheet" type="text/css" href="news.css">

<%
rsTmp = conn.executeQuery( "select max(id) as maxid from news" );
if(rsTmp.next()) currid = rsTmp.getInt("maxid") + 1;
rsTmp.close();

if(request.getParameter("title")!=null)     title = new String(request.getParameter("title").getBytes("ISO8859_1"), "GB2312");
if(request.getParameter("body")!=null)      content = new String(request.getParameter("body").getBytes("ISO8859_1"), "GB2312");  
if(request.getParameter("keyw")!=null)      keyw = new String(request.getParameter("keyw").getBytes("ISO8859_1"), "GB2312");        
if(request.getParameter("author")!=null)    author = new String(request.getParameter("author").getBytes("ISO8859_1"), "GB2312");    

// 如果title不为空，则添加或修改记录
if(request.getParameter("title")!=null) {
        // 执行插入操作
	    sql =  "insert into news values (" + currid ;
	    sql += ",'" + title + "','" + content + "',";
	    sql += "now(),'" + keyw + "','" + author + "')";
        conn.executeUpdate( sql );

		out.println("<hr>");
		out.println("<h2>新闻添加成功！</h2>");
		out.println("<hr>");
}else {
		out.println("<hr>");
        out.println("<h2>请输入正确的信息后再进行录入！</h2>");
		out.println("<hr>");
}
%>

<form name=form1 method="post" action="newsadd.jsp">
  <P align="center">标　题：<INPUT size=85 name=title value=""></P>
  <P align="center">内　容：<TEXTAREA cols=73 name=body rows=15></TEXTAREA></P>
  <P align="center">关键字：<INPUT size=25 name=keyw value="">
　作者：
　<INPUT size=25 name=author value="">　
  <p align="center">
  <INPUT class=buttonface type=submit value=" 确 定 ">
  <INPUT class=buttonface type=reset value=" 清 除 "></p>
</form>
<P align="center"><a href="newsedit.jsp">编辑新闻</a>　<a href="default.jsp">查看新闻</a>
</BODY>
</HTML>