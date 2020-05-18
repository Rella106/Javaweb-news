<%@ page contentType="text/html;charset=ISO8859_1" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="conn" scope="page" class="news.conn"/>

<%!
String id = "";
String title = "";
String title1 = "";
String content = "";
String keyw = "";
String author = "";

boolean flag1=false;
boolean flag2=false;
boolean flag3=false;
boolean flag4=false;
boolean flag5=false;

String sql = "";
ResultSet rs = null;
%>

<link rel="stylesheet" type="text/css" href="news.css">

<%
if(request.getParameter("id")!=null)     {
	flag1=true; id = new String(request.getParameter("id").getBytes("ISO8859_1"), "GB2312");
}
if(request.getParameter("title")!=null)  {
	flag2=true; title = new String(request.getParameter("title").getBytes("ISO8859_1"), "GB2312");
}
if(request.getParameter("body")!=null)   {
	flag3=true; content = new String(request.getParameter("body").getBytes("ISO8859_1"), "GB2312");  
}
if(request.getParameter("keyw")!=null)    {
	flag4=true; keyw = new String(request.getParameter("keyw").getBytes("ISO8859_1"), "GB2312");        
}
if(request.getParameter("author")!=null)  {
	flag5=true; author = new String(request.getParameter("author").getBytes("ISO8859_1"), "GB2312");    
}

// 如果title不为空，则添加或修改记录
if(flag1 & flag2 & flag3 & flag4 & flag5 ) {
        // 执行插入操作
	    sql =  "update news set title='" + title ;
	    sql += "',content='" + content + "',keyw='" + keyw + "',author='";
	    sql += author + "' where id=" + id;

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
<jsp:forward page="newsedit.jsp"/>
