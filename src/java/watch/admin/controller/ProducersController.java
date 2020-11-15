/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import watch.admin.model.ProducersModel;
import watch.entity.Producers;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/ProdcController")
public class ProducersController {
    private ProducersModel prodcModel ;

    public ProducersController() {
        prodcModel = new ProducersModel();
    }
    @RequestMapping(value = "/getAll")
    public ModelAndView getAllProdc(){
        ModelAndView mav = new ModelAndView("AdminProducers");
        List<Producers> listProdc = prodcModel.getAll();
        mav.addObject("ListProducers",listProdc);
        return mav;
    }
    @RequestMapping(value = "/initInsert")
    public ModelAndView initInsert(){
       ModelAndView mav = new  ModelAndView("AddProducers"); 
       Producers prodcNew = new Producers();
       mav.addObject("prodcNew", prodcNew);
       return mav;
       
    }
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String Insert(HttpServletRequest request,Producers prodcNew){
        
    
    String producersId = request.getParameter("producersId");
        if (prodcModel.checkId(producersId) == true) {
           
            return "redirect:initInsert.htm?error=producersId_has_been_sed";
        
        }else{
        boolean check = prodcModel.InsertProdc(prodcNew);
        if(check){
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
        }
    }
    @RequestMapping(value = "/initUpdate")
    public ModelAndView initUpdate(String producersId){
        ModelAndView mav = new ModelAndView("UpdateProducers");
        Producers prodcUpdate = prodcModel.getById(producersId);
        mav.addObject("prodcUpdate", prodcUpdate);
        return  mav;
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String Update(Producers prodcUpdate){
        boolean check = prodcModel.UpdateProdc(prodcUpdate);
        if (check) {
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/delete")
    public String Delete(String producersId){
    boolean check = prodcModel.DeleteProdc(producersId);
        if (check) {
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
}
    
}
