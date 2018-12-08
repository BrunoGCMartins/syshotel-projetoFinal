/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.Apartamento;
import org.hibernate.Query;


public class DaoApartamento extends DaoGenerics<Apartamento> {

    public DaoApartamento() {
        super.alvo = Apartamento.class;
    }

    public List<Apartamento> obterPorDescricao(String descricao) {
        List<Apartamento> lista = null;
        if (descricao != null || !"".equals(descricao)) {

            Query query = session.createQuery("From "
                    + alvo.getSimpleName()
                    + " where descricao LIKE '"
                    + descricao + "%'");
            lista = query.list();
        }
        return lista;
    }

    public Apartamento obterPorNumero(String numero) {
        Apartamento objeto = null;
        if (numero != null) {
            objeto = (Apartamento) session.createQuery("From "
                    + alvo.getSimpleName()
                    + " where numero = '" + numero + "'").uniqueResult();
        }
        return objeto;
    }
}
