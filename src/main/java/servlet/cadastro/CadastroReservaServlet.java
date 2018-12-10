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
        name = "Registration reserva",
        urlPatterns = {"/cadastro/reserva"}
)
public class CadastroReservaServlet extends HttpServlet {

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
        req.getRequestDispatcher("/cadastro/cadastroreserva.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Reserva hosp = new Reserva();
        Apartamento a = new Apartamento();
        if (req.getParameter("apartamento") != null && !req.getParameter("apartamento").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            a.setId(Integer.parseInt(req.getParameter("apartamento")));
        }
        hosp.setApt(a);
        hosp.setStatus("Reservado");

        if (req.getParameter("dataEntrada") != null && !req.getParameter("dataEntrada").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            hosp.setDataDeEntrada(Util.stringParaCalendar(req.getParameter("dataEntrada")));
        }
        if (req.getParameter("dataSaida") != null && !req.getParameter("dataSaida").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            hosp.setDataDeSaida(Util.stringParaCalendar(req.getParameter("dataSaida")));
        }
        Cliente c = new Cliente();
        if (req.getParameter("cliente") != null && !req.getParameter("cliente").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            c.setId(Integer.parseInt(req.getParameter("cliente")));
        }
        hosp.setCli(c);

        TransactionUtil.beginTransaction();
        try {
            new DaoReserva().persistir(hosp);
            TransactionUtil.commit();
        } catch (Exception ex) {
            TransactionUtil.rollback();
        }

        resp.sendRedirect("/cadastro/reserva");
    }

}
