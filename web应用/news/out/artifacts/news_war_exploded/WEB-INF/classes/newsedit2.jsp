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

int currid = 0;

String sql = "";
ResultSet rs = null;
%>

<link rel="stylesheet" type="text/css" href="news.css">

<%
// ������Ҫ��Ϊ�˽�����ʾ
if(request.getParameter("id") != null) {
	id = request.getParameter("id");
	sql="select * from news where id=" + request.getParameter("id");
    rs = conn.executeQuery( sql );
	if(rs.next()) {
		title1 = new String(rs.getString("title").getBytes("GB2312"), "ISO8859_1");
		content = new String(rs.getString("content").getBytes("GB2312"), "ISO8859_1");
		keyw = new String(rs.getString("keyw").getBytes("GB2312"), "ISO8859_1");
		author = new String(rs.getString("author").getBytes("GB2312"), "ISO8859_1");
		rs.close();
%>

		<form name=form1 method="post" action="savenews.jsp">
		  <input value="<%=id%>" type=hidden name=id>
		  <P align="center">�ꡡ�⣺<INPUT size=85 name=title value=<%=title1%>></P>
		  <P align="center">�ڡ��ݣ�<TEXTAREA cols=73 name=body rows=15><%=content%></TEXTAREA></P>
		  <P align="center">�ؼ��֣�<INPUT size=25 name=keyw value=<%=keyw%>>
		�����ߣ�
		��<INPUT size=25 name=author value=<%=author%>>��
		  <p align="center">
		  <INPUT class=buttonface type=submit value=" ȷ �� ">
		  <INPUT class=buttonface type=reset value=" �� �� "></p>
		</form>
<%
   } else {
		  out.println("<hr>");	
		  out.println("<center>�Ƿ���id�ţ�</center>");
		  out.println("<hr>");	
   }
}
%>
	
<P align="right"><a href="newsedit.jsp">�༭����</a>��<a href="default.jsp">�鿴����</a>
</BODY>
</HTML>