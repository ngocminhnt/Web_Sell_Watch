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
import watch.admin.model.CategoriesModel;
import watch.admin.model.ProducersModel;
import watch.entity.Categories;
import watch.entity.Producers;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/CatController")
public class CategoriesController {
     private CategoriesModel CatModel ;

    public CategoriesController() {
        CatModel = new CategoriesModel();
    }
    @RequestMapping(value = "/getAll")
    public ModelAndView getAllCat(){
        ModelAndView mav = new ModelAndView("AdminCategories");
        List<Categories> listCat = CatModel.getAll();
        mav.addObject("ListCategories",listCat);
        return mav;
    }
    @RequestMapping(value = "/initInsert")
    public ModelAndView initInsert(){
       ModelAndView mav = new  ModelAndView("AddCategories"); 
       Categories catNew = new Categories();
       mav.addObject("catNew", catNew);
       return mav;
       
    }
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String Insert(HttpServletRequest request,Categories catNew){
        String catId = request.getParameter("catId");
        String errorid = "";

        if (CatModel.checkId(catId) == true) {
            request.setAttribute("catId", true);
            return "redirect:initInsert.htm?error=catId_has_been_sed";
        
        }else{
        boolean check = CatModel.InsertCat(catNew);
        if(check){
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
    }
    }
    @RequestMapping(value = "/initUpdate")
    public ModelAndView initUpdate(String catId){
        ModelAndView mav = new ModelAndView("UpdateCategoriers");
        Categories CatUpdate = CatModel.getById(catId);
        mav.addObject("CatUpdate", CatUpdate);
        return  mav;
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String Update(Categories catUpdate){
        boolean check = CatModel.UpdateCat(catUpdate);
        if (check) {
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/delete")
    public String Delete(String catId){
    boolean check = CatModel.DeleteCat(catId);
        if (check) {
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
}
}
