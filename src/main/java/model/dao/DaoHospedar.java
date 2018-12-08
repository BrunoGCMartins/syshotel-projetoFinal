package model.dao;

import model.Hospedar;

public class DaoHospedar extends DaoGenerics<Hospedar> {

    public DaoHospedar() {
        super.alvo = Hospedar.class;
    }
}
