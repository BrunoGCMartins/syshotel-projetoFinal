/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package launch;

import model.Cliente;
import org.hibernate.Session;
import util.HibernateUtil;

public class Test {
    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        session.beginTransaction();
        Cliente client = new Cliente();

        client.setId(1);
        client.setEmail("Mukesh");
        client.setNome("Google");
        client.setCpf("12341234");
 
        session.save(client);
        session.getTransaction().commit();

    }
}
