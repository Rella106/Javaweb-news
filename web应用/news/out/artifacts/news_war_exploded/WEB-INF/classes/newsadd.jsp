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

// ���title��Ϊ�գ�����ӻ��޸ļ�¼
if(request.getParameter("title")!=null) {
        // ִ�в������
	    sql =  "insert into news values (" + currid ;
	    sql += ",'" + title + "','" + content + "',";
	    sql += "now(),'" + keyw + "','" + author + "')";
        conn.executeUpdate( sql );

		out.println("<hr>");
		out.println("<h2>������ӳɹ���</h2>");
		out.println("<hr>");
}else {
		out.println("<hr>");
        out.println("<h2>��������ȷ����Ϣ���ٽ���¼�룡</h2>");
		out.println("<hr>");
}
%>

<form name=form1 method="post" action="newsadd.jsp">
  <P align="center">�ꡡ�⣺<INPUT size=85 name=title value=""></P>
  <P align="center">�ڡ��ݣ�<TEXTAREA cols=73 name=body rows=15></TEXTAREA></P>
  <P align="center">�ؼ��֣�<INPUT size=25 name=keyw value="">
�����ߣ�
��<INPUT size=25 name=author value="">��
  <p align="center">
  <INPUT class=buttonface type=submit value=" ȷ �� ">
  <INPUT class=buttonface type=reset value=" �� �� "></p>
</form>
<P align="center"><a href="newsedit.jsp">�༭����</a>��<a href="default.jsp">�鿴����</a>
</BODY>
</HTML>