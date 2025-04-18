import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class CadastrarDiscente
 */
@WebServlet("/criarUsuario.do")
public class CadastrarUsuario extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String matricula = request.getParameter("matricula");
        response.setContentType("text/html");
        try {
            Thread.sleep(300000);
        }
        catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }

        HttpSession session = request.getSession();
        session.setAttribute("nome", nome);
        session.setAttribute("cpf", cpf);
        session.setAttribute("matricula", matricula);

        response.sendRedirect("main.jsp");

    }

}
