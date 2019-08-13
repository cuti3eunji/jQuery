package kr.or.ddit.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.service.IProdService;
import kr.or.ddit.prod.service.ProdServiceImpl;
import kr.or.ddit.prod.vo.ProdVO;

@WebServlet("/ProdServlet")
public class ProdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//option에 들어갈 prod의 id와 name 가져오기
		//lprod_gu값을 가져온다
		
		String lpgu = request.getParameter("lprod_gu");
		
		IProdService service = ProdServiceImpl.getInstance();
		List<ProdVO> list = service.selectProdName(lpgu);
		
		//데이터가 있는 경우 P101, P102, P201 ...
		//데이터가 없는 경우 P402...
		
		request.setAttribute("list", list);
		
		//RequestDispatcher disp = request.getRequestDispatcher("0812/prodName.jsp");
		RequestDispatcher disp = request.getRequestDispatcher("0812/prod.jsp");
		disp.forward(request, response);
		
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//prod의 option value에서 값을 가져온다
		String prid = request.getParameter("prod_id");
		//데이터없음인경우에는 prid의 값이 0 이다
		
		
		IProdService service = ProdServiceImpl.getInstance();
		ProdVO prodVo = service.prodDetail(prid);
		
		request.setAttribute("prodVo", prodVo);
		
		request.getRequestDispatcher("0812/prodDetail.jsp").forward(request, response);
		
	}

}
