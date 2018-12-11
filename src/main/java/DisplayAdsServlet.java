import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/ads")
public class DisplayAdsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Ads adsDAO = DaoFactory.getAdsDao();
        req.setAttribute("adsList", adsDAO.all());

        req.getRequestDispatcher("ads/index.jsp").forward(req, resp);
    }

}
