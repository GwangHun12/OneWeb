package kr.co.one.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.one.member.model.service.MemberService;
import kr.co.one.member.model.vo.Member;

/**
 * Servlet implementation class EnrollController
 */
@WebServlet("/member/register.do")
public class EnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/login.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("memberId");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		Member member = new Member(memberId, pass, repass);
		
		MemberService service = new MemberService();
		int result = service.insertMember(member);
		if(result > 0) {
			
			request.getRequestDispatcher("/WEB-INF/views/member/login.jsp")
			.forward(request, response);
		} else {
			request.setAttribute("msg", "회원가입에 실패하셨습니다.");
			request.getRequestDispatcher("/WEB-INF/views/member/serviceFailed.jsp")
			.forward(request, response);
		}
	}

}
