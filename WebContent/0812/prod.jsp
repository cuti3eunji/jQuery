<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ProdVO> list = (List<ProdVO>) request.getAttribute("list");
	
	//데이터가 있는경우 jsonobj배열을 생성
	if(list != null && list.size() > 0){
%>	
	{
		"sw" : "OK",
		"data" : [
		
		<%
		for(int i=0; i<list.size(); i++){
			if(i > 0) out.print(",");
		%>
		
		
			{
				"prod_id" : "<%=list.get(i).getProd_id()%>",
				"prod_name" : "<%=list.get(i).getProd_name()%>"
			}		

		<%}%>
		
		]
	}
	
	<%
	//데이터가 없는경우
	}else{
	%>
	{
		"sw" : "NO"
		
	}
	<%
	}
%>