<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

[
<%
	List<ProdVO> list = (List<ProdVO>) request.getAttribute("list");
	
	for(int i=0; i<list.size(); i++){
		if(i > 0) out.print(",");
%>
		
		
		{
			"prod_id" : "<%=list.get(i).getProd_id()%>",
			"prod_name" : "<%=list.get(i).getProd_name()%>"
		}		

<%}%>

]