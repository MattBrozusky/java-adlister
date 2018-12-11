import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {

    private Random rand = new Random();

    private int ranNum = rand.nextInt(100) + 1;

    public String setter = "";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String guess = req.getParameter("num");
        int guessNum = Integer.parseInt(guess);

        if (guessNum == ranNum){
            setter = "1";
        } else if (guessNum < ranNum){
            setter = "2";
        } else {
            setter = "3";
        }

        req.setAttribute("setter", setter);
        req.getRequestDispatcher("guessMessage.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("guess.jsp").forward(req, resp);
    }
}
