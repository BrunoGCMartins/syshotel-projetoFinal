package util;


import model.Apartamento;
import model.Cliente;
import model.Endereco;
import model.Estado;
import model.Fornecedor;
import model.GrupoDeProduto;
import model.Hospedar;
import model.Municipio;
import model.Produto;
import model.Reserva;
import model.Telefone;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class HibernateUtil {

    private static final SessionFactory sessionFactory = buildSessionFactory();
 
    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            return new Configuration().configure("hibernate.cfg.xml")
                    .addAnnotatedClass(Cliente.class)
                    .addAnnotatedClass(Municipio.class)
                    .addAnnotatedClass(Estado.class)
                    .addAnnotatedClass(Telefone.class)
                    .addAnnotatedClass(Endereco.class)
                    .addAnnotatedClass(Fornecedor.class)
                    .addAnnotatedClass(GrupoDeProduto.class)
                    .addAnnotatedClass(Produto.class)
                    .addAnnotatedClass(Reserva.class)
                    .addAnnotatedClass(Apartamento.class)
                    .addAnnotatedClass(Hospedar.class)
                    .buildSessionFactory();
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
 
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
 
    public static void shutdown() {
        // Close caches and connection pools
        getSessionFactory().close();
    }
}
