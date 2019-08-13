<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

[
<%
	List<MemberVO> list = (List<MemberVO>) request.getAttribute("list");
	
// 	for(MemberVO memList : list){
	for(int i=0; i<list.size(); i++){
		if(i > 0) out.print(",");
%>
		
		
		{
			"name" : "<%=list.get(i).getMem_name()%>",
			"id" : "<%=list.get(i).getMem_id() %>",
			"addr" : "<%=list.get(i).getMem_add1()%> <%= list.get(i).getMem_add2()%>",
			"hp" : "<%= list.get(i).getMem_hp() %>",
			"mail" : "<%=list.get(i).getMem_mail() %>",
			"bir" : "<%=list.get(i).getMem_bir() %>",
			"zip" : "<%=list.get(i).getMem_zip() %>"
		}		

<%}%>

]
