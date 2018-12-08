package servlet.cadastro;


import model.Apartamento;
import model.Cliente;
import model.Hospedar;
import model.Reserva;
import model.dao.DaoApartamento;
import model.dao.DaoCliente;
import model.dao.DaoHospedar;
import model.dao.DaoReserva;
import org.apache.catalina.Context;
import util.TransactionUtil;
import util.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(
        name = "Registration hospedagem",
        urlPatterns = {"/cadastro/hospedagem"}
)
public class CadastroHospedagemServlet extends HttpServlet {

    Context context;

//    private static UserRepository userRepository;

    static {
//        userRepository = new UserRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        ArrayList<Cliente> clientes = new ArrayList<Cliente>();
        Cliente cliente = new Cliente();
        cliente.setNome("cavalheiro");
        clientes.add(cliente);

        req.setAttribute("clientes", new DaoCliente().listar());
        req.setAttribute("reservas", new DaoReserva().listar());
        req.setAttribute("apartamentos", new DaoApartamento().listar());
        req.getRequestDispatcher("/cadastro/cadastrohospedagem.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Hospedar hosp = new Hospedar();

        Apartamento a = new Apartamento();
        if (req.getParameter("apartamento") != null && !req.getParameter("apartamento").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            a.setId(Integer.parseInt(req.getParameter("apartamento")));
        }
        hosp.setApartamento(a);

        if (req.getParameter("dataEntrada") != null && !req.getParameter("dataEntrada").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            hosp.setDataInicio(Util.stringParaCalendar(req.getParameter("dataEntrada")));
        }
        if (req.getParameter("dataSaida") != null && !req.getParameter("dataSaida").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            hosp.setDataFim(Util.stringParaCalendar(req.getParameter("dataSaida")));
        }
        Cliente c = new Cliente();
        if (req.getParameter("cliente") != null && !req.getParameter("cliente").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            c.setId(Integer.parseInt(req.getParameter("cliente")));
        }
        hosp.setNome(c);

        Reserva r = new Reserva();
        if (req.getParameter("reserva") != null && !req.getParameter("reserva").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            r.setId(Integer.parseInt(req.getParameter("reserva")));
            r.setStatus("Concluida");
            r.setDataDeEntrada(Util.stringParaCalendar("05/12/18"));
        }

        try {
            new DaoHospedar().persistir(hosp);
            new DaoReserva().persistir(r);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        TransactionUtil.beginTransaction();
        try {
            new DaoHospedar().persistir(hosp);
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

        resp.sendRedirect("/cadastro/hospedagem");
    }

}
