/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import model.Endereco;


/**
 *
 * @author paulo
 */
public class DaoEndereco  extends DaoGenerics<Endereco> {
    
    public DaoEndereco() {
        super.alvo = Endereco.class;
    }
}
