package servlet.cadastro;


import model.Apartamento;
import model.Produto;
import model.dao.DaoProduto;
import org.apache.catalina.Context;
import util.TransactionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "Registration produto",
        urlPatterns = {"/cadastro/produto"}
)
public class CadastroProdutoServlet extends HttpServlet {

    Context context;

//    private static UserRepository userRepository;

    static {
//        userRepository = new UserRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/cadastro/cadastroproduto.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Produto apt = new Produto();
        if (req.getParameter("nomeProduto") != null && !req.getParameter("nomeProduto").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            apt.setNome(req.getParameter("nomeProduto"));
        }
        if (req.getParameter("marcaProduto") != null && !req.getParameter("marcaProduto").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            apt.setMarca(req.getParameter("marcaProduto"));
        }

        TransactionUtil.beginTransaction();
        try {
            new DaoProduto().persistir(apt);
            TransactionUtil.commit();
        } catch (Exception ex) {
            TransactionUtil.rollback();
        }

//        TransactionUtil.closeCurrentSession();
//        TransactionUtil.beginTransaction();
/*        System.out.println(cliente.toString());
        try {
            System.out.println("before persist");
            Session s = HibernateUtil.getSessionFactory().openSession();
            //new DaoCliente().persistir(cliente);

            System.out.println("before commit");
            s.beginTransaction();
//            cliente.setId(1);
            s.save(cliente);
//            s.flush();
            s.getTransaction().commit();
//            TransactionUtil.commit();
            System.out.println("after commit");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
//            TransactionUtil.rollback();
        }
*/

        resp.sendRedirect("/cadastro/produto");
    }

}
