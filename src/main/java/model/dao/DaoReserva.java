/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.Reserva;
import org.hibernate.Query;

/**
 *
 * @author JoaoPaulo
 */
public class DaoReserva extends DaoGenerics<Reserva> {

    public DaoReserva() {
        super.alvo = Reserva.class;
    }
     public List<Reserva> obterReservas(String descricao) {
        List<Reserva> lista = null;
        if (descricao != null || !"".equals(descricao)) {

            Query query = session.createQuery("From " + alvo.getSimpleName()
                    + " where nome LIKE '"
                    + descricao + "%'");
            lista = query.list();
        }
        return lista;
    }

    public List<Reserva> obterNome(String nome) {
        List<Reserva> lista = null;
        if (nome != null || !"".equals(nome)) {

            Query query = session.createQuery("From " + alvo.getSimpleName()
                    + " where nome LIKE '"
                    + nome + "%'");
            lista = query.list();
        }
        return lista;
    }
}
