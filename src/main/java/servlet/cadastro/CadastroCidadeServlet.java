package servlet.cadastro;


import model.Apartamento;
import model.Estado;
import model.Municipio;
import model.dao.DaoApartamento;
import model.dao.DaoEstado;
import model.dao.DaoMunicipio;
import org.apache.catalina.Context;
import util.TransactionUtil;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet(
        name = "Registration cidade",
        urlPatterns = {"/cadastro/cidade"}
)
public class CadastroCidadeServlet extends HttpServlet {

    Context context;

//    private static UserRepository userRepository;

    static {
//        userRepository = new UserRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("estados", new DaoEstado().listar());
        req.getRequestDispatcher("/cadastro/cadastrocidade.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Municipio municipo = new Municipio();

        if (req.getParameter("nomeCidade") != null && !req.getParameter("nomeCidade").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            municipo.setNome(req.getParameter("nomeCidade"));
        }
        Estado estado = new Estado();
        if (req.getParameter("estado") != null && !req.getParameter("estado").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            estado.setId(Integer.parseInt(req.getParameter("estado")));
        }
        municipo.setEstado(estado);

        TransactionUtil.beginTransaction();
        try {
            new DaoMunicipio().persistir(municipo);
            TransactionUtil.commit();
        } catch (Exception ex) {
            TransactionUtil.rollback();
        }


//        TransactionUtil.beginTransaction();
//        try {
//            new DaoApartamento().persistir(municipo);
//            TransactionUtil.commit();
//        } catch (Exception ex) {
//            TransactionUtil.rollback();
//        }



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

        resp.sendRedirect("/cadastro/cidade");
    }

}
