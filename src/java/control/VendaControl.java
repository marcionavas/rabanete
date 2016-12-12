/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ClienteDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import dao.VendaDao;
import model.Venda;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author jefferson
 */
@Controller
public class VendaControl {

    @RequestMapping("/vendas")
    public String menuVendas(Model m) {

        m.addAttribute("vendaslist", new VendaDao().getAll());

        return "vendas/vendas";
    }
    
    
    //Carrega Página AddCliente
    @RequestMapping(value = "/addvenda")
    public String addCliente() {

        return "vendas/addvenda";

    }

    ////Salva dados a partir da Página AddCliente quando utilizado POST
    @RequestMapping(value = "/addvenda", method = RequestMethod.POST)
    public String addCliente(@ModelAttribute(value = "Cliente") Venda v) {

        //new VendaDao().adiciona(v);

        return "redirect:vendas";

    }
    
    
    
    
    

}
