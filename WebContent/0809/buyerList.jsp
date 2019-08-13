<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
[
<%
	List<BuyerVO> list = (List<BuyerVO>) request.getAttribute("list");
	
	for(int i=0; i<list.size(); i++){
		if(i > 0) out.print(",");
%>
		
		
		{
			"Buyer_id" : "<%=list.get(i).getBUYER_ID()%>",
			"Buyer_name" : "<%=list.get(i).getBUYER_NAME() %>",
			"Buyer_bank" : "<%=list.get(i).getBUYER_BANK()%>",
			"Buyer_bankNo" : "<%=list.get(i).getBUYER_BANKNO()%>",
			"Buyer_bankName" : "<%=list.get(i).getBUYER_BANKNAME()%>",
			"Buyer_zip" : "<%=list.get(i).getBUYER_ZIP()%>",
			"Buyer_addr" : "<%=list.get(i).getBUYER_ADD1()%> <%=list.get(i).getBUYER_ADD2() %>",
			"Buyer_comtel" : "<%=list.get(i).getBUYER_COMTEL()%>",
			"Buyer_fax" : "<%=list.get(i).getBUYER_FAX()%>",
			"Buyer_mail" : "<%=list.get(i).getBUYER_MAIL()%>",
			"Buyer_charger" : "<%=list.get(i).getBUYER_CHARGER()%>",
			"Buyer_telext" : "<%=list.get(i).getBUYER_TELEXT()%>"
		}		

<%}%>

]