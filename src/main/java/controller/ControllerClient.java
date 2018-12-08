/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.dao.DaoCliente;

public class ControllerClient {
    DaoCliente dao;

    public ControllerClient(DaoCliente dao) {
        this.dao = dao;
    }
}
