/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import model.Cliente;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;

/**
 *
 * @author jefferson
 */
@Controller
public class ClienteDao {

    public List<Cliente> getAll() {

        List<Cliente> lst = new ArrayList<>();

        Session s = HibernateUtil.getSessionFactory().getCurrentSession();

        try {

            s.beginTransaction();
            lst = s.createCriteria(Cliente.class).list();
            s.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);

        }
        

        return lst;
    }

    public void adiciona(Cliente cliente) {

        Session s = HibernateUtil.getSessionFactory().getCurrentSession();

        try {
            s.beginTransaction();
            s.save(cliente);      
            s.getTransaction().commit();

        } catch (Exception e) {           
            s.getTransaction().rollback();
        }

    }

    public void remove(Cliente cliente) {

        Session s = HibernateUtil.getSessionFactory().getCurrentSession();

        try {
            s.beginTransaction();
            s.delete(cliente);
            s.getTransaction().commit();

        } catch (Exception e) {
            System.out.println(e);
            s.getTransaction().rollback();
        }

    }

    public void update(Cliente cliente) {

        Session s = HibernateUtil.getSessionFactory().getCurrentSession();

        try {
            s.beginTransaction();
            s.update(cliente);
            s.getTransaction().commit();

        } catch (Exception e) {
            System.out.println(e);
            s.getTransaction().rollback();
        }

    }

    public Cliente select(int id) {
        Session s = HibernateUtil.getSessionFactory().getCurrentSession();
        Cliente cli = new Cliente();

        try {
            s.beginTransaction();
            cli = (Cliente) s.get(Cliente.class, id);           
            s.getTransaction().commit();

        } catch (Exception e) {
          
        }

        return cli;
    }
    
    
    

}
