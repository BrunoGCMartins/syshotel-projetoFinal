/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.cadastro;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Apartamento;
import model.Cliente;
import model.Endereco;
import model.Estado;
import model.Municipio;
import model.Telefone;
import model.dao.DaoApartamento;
import org.apache.catalina.Context;
import org.hibernate.Session;
import util.HibernateUtil;
import util.TransactionUtil;


@WebServlet(
        name = "Registration apartment",
        urlPatterns = {"/cadastro/apartamento"}
)
public class CadastroApartamentoServlet extends HttpServlet {

    Context context;

//    private static UserRepository userRepository;

    static {
//        userRepository = new UserRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/cadastro/cadastroapartamento.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Apartamento apt = new Apartamento();

        if (req.getParameter("andarApartamento") != null && !req.getParameter("andarApartamento").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            apt.setAndar(Integer.parseInt(req.getParameter("andarApartamento")));
        }
        if (req.getParameter("numeroApartamento") != null && !req.getParameter("numeroApartamento").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            apt.setNumero(Integer.parseInt(req.getParameter("numeroApartamento")));
        }
        if (req.getParameter("descricaoApartamento") != null && !req.getParameter("descricaoApartamento").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            apt.setDescricao(req.getParameter("descricaoApartamento"));
        }


        TransactionUtil.beginTransaction();
        try {
            new DaoApartamento().persistir(apt);
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

        resp.sendRedirect("/cadastro/apartamento");
    }

}
