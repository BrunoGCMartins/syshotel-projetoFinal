/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.Estado;
import org.hibernate.Query;


public class DaoEstado extends DaoGenerics<Estado> {

    public DaoEstado() {
        super.alvo = Estado.class;
    }
    
    public List<Estado> obterNome(String nome) {
        List<Estado> lista = null;
        if (nome != null || !"".equals(nome)) {

            Query query = session.createQuery("From "
                    + alvo.getSimpleName()
                    + " where nome LIKE '%"
                    + nome + "%'");
            lista = query.list();
        }
        return lista;
    }

    public Estado obterId(String id) {
        Estado objeto = null;
        if (id != null) {
            objeto = (Estado) session.createQuery("From "
                    + alvo.getSimpleName()
                    + " where id = '" + id + "'").uniqueResult();
        }
        return objeto;
    }
}
