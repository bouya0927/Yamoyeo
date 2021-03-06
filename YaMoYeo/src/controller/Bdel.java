package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;

@WebServlet("/boardDelete")
public class Bdel extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Bdel() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int zNum = Integer.parseInt(request.getParameter("zNum"));
		
		BoardService bSvc = new BoardService();
		
		int result = bSvc.boardDelete(zNum);
		
		if(result>0) {
			response.sendRedirect("boardList");
		} else {
			response.sendRedirect("index.jsp");
		}
	}

}
