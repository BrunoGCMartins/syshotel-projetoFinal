package model.dao;

import model.GrupoDeProduto;

public class DaoGrupoDeProduto extends DaoGenerics<GrupoDeProduto> {

    public DaoGrupoDeProduto() {
        super.alvo = GrupoDeProduto.class;
    }
}
