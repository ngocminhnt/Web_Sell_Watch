/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import watch.entity.Categories;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/DataController")
public class DataController {
    
    @RequestMapping(value = "/getdata")
    public ModelAndView getAllCat(){
        ModelAndView mav = new ModelAndView("Database");
        return mav;
    }
}
