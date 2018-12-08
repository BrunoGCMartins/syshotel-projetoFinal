/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.pesquisar;

import model.*;
import model.dao.DaoCliente;
import org.apache.catalina.Context;
import org.hibernate.Session;
import util.HibernateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(
        name = "pesquisar cliente",
        urlPatterns = {"/pesquisar/cliente"}
)
public class PesquisarClienteServlet extends HttpServlet {

    Context context;

//    private static UserRepository userRepository;

    static {
//        userRepository = new UserRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("clientes", new DaoCliente().listar());
        req.getRequestDispatcher("/pesquisar/pesquisarcliente.jsp").forward(req, resp);
    }


}
