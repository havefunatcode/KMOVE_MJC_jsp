package auth;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

    //login�� GET������� ���� �� ���Ȼ� ū ������ ���� �� �ֱ� ������ POST������� �Ѵ�.
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Prevent the Korean from Breaking
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		//Print html
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// Variable which save result
		Boolean idCorrect = false;
		Boolean passwordCorrect = false;
		
		// Check id
		if(id.equals("testtest"))	{
			//Correct id
			idCorrect = true;
			//Print result
			//response.getWriter.append("Correct ID, Input ID " + id);
			
			//Check password
			if(password.equals("qwer1234"))	{
				//Correct password
				//Print result
				//response.getWriter().append("�α��� ����" + id);
				passwordCorrect = true;
			}	else	{
				//Wrong password
				//Print result
				//response.getWriter().append("��й�ȣ�� Ʋ��" + id);
			}			
		}	else	{
			//Wrong id
			//Print result
			//response.getWriter().append("���̵� Ʋ��, �Էµ� ���̵� " + id);
		}
		
		// Correct id & password -> Save in session
		if(idCorrect && passwordCorrect)	{
			HttpSession session = request.getSession(true);
			session.setAttribute("id", id);
			session.setAttribute("login", true);
			response.sendRedirect("./main/main.jsp");
		}
		
		// Wrong id & password -> print 
		try	{
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='UTF-8'>");
			out.println("<title>�α��� ���</title");
			out.println("<body>");
			if(!idCorrect)	{
				out.println("<p>Please Check Your ID.</p>");
			}
			if(!passwordCorrect)	{
				out.println("<p>Please Check Your Password.</p>");
			}
			out.println("</body>");
			out.println("</head>");
			out.println("</html>");
		} finally	{
			out.close();	
		}
		
		//print result
		//response.getWriter().append(" POST, Served at: ").append(request.getContextPath());
	}

}
