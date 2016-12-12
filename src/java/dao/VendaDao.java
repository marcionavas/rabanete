package dao;

import java.util.ArrayList;
import java.util.List;
import model.Venda;
import model.Nf;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;

/**
 *
 * @author jefferson
 */
@Controller
public class VendaDao {

    public List<Venda> getAll() {

        List<Venda> lst = new ArrayList<>();

        Session s = HibernateUtil.getSessionFactory().getCurrentSession();

        try {

            s.beginTransaction();
            lst = s.createCriteria(Venda.class).list();
            s.getTransaction().commit();
           
           //lst.get(1).getCliente().getIdCliente();
           
            System.out.println("VendaDao Teste: "+lst.get(0).getNf().getNumNf());
            
            
        } catch (Exception e) {
            System.out.println(e);

        }

        return lst;
    }

}
