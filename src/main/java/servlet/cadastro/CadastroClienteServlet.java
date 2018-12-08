/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.cadastro;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cliente;
import model.Endereco;
import model.Estado;
import model.Municipio;
import model.Telefone;
import org.apache.catalina.Context;
import org.hibernate.Session;
import util.HibernateUtil;


@WebServlet(
        name = "Registration client",
        urlPatterns = {"/cadastro/cliente"}
)
public class CadastroClienteServlet extends HttpServlet {

    Context context;

//    private static UserRepository userRepository;

    static {
//        userRepository = new UserRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/cadastro/cadastrocliente.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Cliente cliente = new Cliente();
        if (req.getParameter("tfCodigo") != null && !req.getParameter("tfCodigo").isEmpty()) {  //veDaorifica se o campo Codigo esta vazio
            cliente.setId(Integer.parseInt(req.getParameter("tfCodigo")));
        }
        if (req.getParameter("nome") != null && !req.getParameter("nome").isEmpty()) {
            cliente.setNome(req.getParameter("nome").trim());
        }
        if (req.getParameter("rgCliente") != null && !req.getParameter("rgCliente").isEmpty()) {
            cliente.setRg(req.getParameter("rgCliente"));
        }
        if (req.getParameter("cpfCliente") != null && !req.getParameter("cpfCliente").isEmpty()) {
            cliente.setCpf(req.getParameter("cpfCliente"));
        }
        if (req.getParameter("emailCliente") != null && !req.getParameter("emailCliente").isEmpty()) {
            cliente.setEmail(req.getParameter("emailCliente"));
        }
        if (req.getParameter("checkSexo") != null && !req.getParameter("checkSexo").isEmpty()) {
            cliente.setSexo(req.getParameter("checkSexo"));
        }

        Estado uf = new Estado();
        if (req.getParameter("estadoCliente") != null && !req.getParameter("estadoCliente").isEmpty()) {
            uf.setNome(req.getParameter("estadoCliente"));
        }

        Municipio m = new Municipio();
        if (req.getParameter("cidadeCliente") != null && !req.getParameter("cidadeCliente").isEmpty()) {
            m.setNome(req.getParameter("cidadeCliente"));
        }
        m.setEstado(uf);


        Endereco e = new Endereco();
        if (req.getParameter("cepCliente") != null && !req.getParameter("cepCliente").isEmpty()) {
            e.setCep(req.getParameter("cepCliente"));
        }
        e.setMunicipio(m);
        if (req.getParameter("complementoCliente") != null && !req.getParameter("complementoCliente").isEmpty()) {
            e.setComplemento(req.getParameter("complementoCliente").trim());
        }
        if (req.getParameter("longradouroCliente") != null && !req.getParameter("longradouroCliente").isEmpty()) {
            e.setLogradouro(req.getParameter("longradouroCliente").trim());
        }
        if (req.getParameter("bairroCliente") != null && !req.getParameter("bairroCliente").isEmpty()) {
            e.setBairro(req.getParameter("bairroCliente").trim());
        }
        if (req.getParameter("numeroCliente") != null && !req.getParameter("numeroCliente").isEmpty()) {
            e.setNumero(Integer.parseInt(req.getParameter("numeroCliente").trim()));
        }
        if (req.getParameter("tipoLogradouro") != null && !req.getParameter("tipoLogradouro").isEmpty()) {
            e.setTipoLogradouro(req.getParameter("tipoLogradouro"));
        }


//            cliente.setDataNasc(Util.stringParaCalendar(ftfDataNasc.getText()));

        Telefone t1 = new Telefone();
        if (req.getParameter("telefoneResidencialCliente") != null && !req.getParameter("telefoneResidencialCliente").isEmpty()) {
            t1.setNumero(req.getParameter("telefoneResidencialCliente"));
        }
        Telefone t2 = new Telefone();
        if (req.getParameter("telefoneCelularCliente") != null && !req.getParameter("telefoneCelularCliente").isEmpty()) {
            t2.setNumero(req.getParameter("telefoneCelularCliente"));
        }

        List<Telefone> telefones = new ArrayList<Telefone>();
        if (!"(  )       -    ".equals(t2.getNumero())) {
            telefones.add(t2);
        }
        if (!"(  )       -    ".equals(t1.getNumero())) {
            telefones.add(t1);
        }
        cliente.setTelefone(telefones);
        cliente.setEndereco(e);

//        TransactionUtil.closeCurrentSession();
//        TransactionUtil.beginTransaction();
        System.out.println(cliente.toString());
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


        resp.sendRedirect("/cadastro/cliente");
    }

}
