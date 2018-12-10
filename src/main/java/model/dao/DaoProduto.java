/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import model.Produto;

/**
 *
 * @author a1208195
 */
public class DaoProduto extends DaoGenerics<Produto> {

    public DaoProduto() {
        super.alvo = Produto.class;
    }
}
