    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ClienteDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import model.Cliente;

/**
 *
 * @author jefferson
 */
@Controller
public class ClienteControl {

    @RequestMapping("/clientes")
    public String menuClientes(Model m) {

        m.addAttribute("lst", new ClienteDao().getAll());
        return "clientes/clientes";
    }

    //Carrega Página AddCliente
    @RequestMapping(value = "/addcliente")
    public String addCliente() {

        return "clientes/addcliente";

    }

    ////Salva dados a partir da Página AddCliente quando utilizado POST
    @RequestMapping(value = "/addcliente", method = RequestMethod.POST)
    public String addCliente(@ModelAttribute(value = "Cliente") Cliente c) {

        new ClienteDao().adiciona(c);

        return "redirect:clientes";

    }

    @RequestMapping(value = "/editcliente", method = RequestMethod.GET)
    public String editCliente(@RequestParam(value = "id") int idcliente, Model m) {

        ClienteDao clienteDao = new ClienteDao();

        m.addAttribute("editcli", clienteDao.select(idcliente));

        return "clientes/editcliente";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateCliente(@ModelAttribute(value = "Cliente") Cliente c) {

        new ClienteDao().update(c);
        return "redirect:clientes";

    }
    
    @RequestMapping(value="retorno")
    public String retorno(){
    
    
    return "";
}

}
