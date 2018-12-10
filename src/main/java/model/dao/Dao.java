/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;

/**
 *
 * @author JoaoPaulo
 */
interface Dao<T> {

    public void persistir(T entidade);

    public void remover(T entidade);

    public T obterPorId(int id);

    public List<T> listar(String filtro);
}
