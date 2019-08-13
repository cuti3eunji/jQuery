<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
[
<%
	List<LprodVO> list = (List<LprodVO>) request.getAttribute("list");
	
	for(int i=0; i<list.size(); i++){
		if(i > 0) out.print(",");
%>
		
		
		{
			"lprod_id" : "<%=list.get(i).getLPROD_ID()%>",
			"lprod_gu" : "<%=list.get(i).getLPROD_GU() %>",
			"lprod_nm" : "<%=list.get(i).getLPROD_NM()%>"
		}		

<%}%>

]