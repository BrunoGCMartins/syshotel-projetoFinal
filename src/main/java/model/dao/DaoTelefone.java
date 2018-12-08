package model.dao;

import model.Telefone;

public class DaoTelefone extends DaoGenerics<Telefone> {

    public DaoTelefone() {
        super.alvo = Telefone.class;
    }
}
