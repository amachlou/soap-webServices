<%@page import="web.services.Operation"%>
<%@page import="web.services.ReleveWebServiceProxy"%>
<%@page import="javax.xml.bind.Unmarshaller"%>
<%@page import="web.services.Releve"%>
<%@page import="javax.xml.bind.JAXBContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	ReleveWebServiceProxy proxy = new ReleveWebServiceProxy();
	for(Operation op : proxy.releveDetails().getList_operation()){
		%>

		<h2><%=op.getType()+" "+op.getMontant()+" "+op.getDescription()+"" %></h2>
		
	<%
	}
	
%>

</body>
</html>