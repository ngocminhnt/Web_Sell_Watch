/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import watch.admin.model.BannerModel;
import watch.admin.model.ProducersModel;
import watch.entity.Banner;
import watch.entity.Producers;
import watch.util.UpLoadFile;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/BnerController")
public class BannerController {
     private BannerModel bnerModel ;

    public BannerController() {
        bnerModel = new BannerModel();
    }
    @RequestMapping(value = "/getAll")
    public ModelAndView getAllBner(){
        ModelAndView mav = new ModelAndView("AdminBanner");
        List<Banner> listBner = bnerModel.getAll();
        mav.addObject("listBner",listBner);
        return mav;
    }
    @RequestMapping(value = "/initInsert")
    public ModelAndView initInsert(){
       ModelAndView mav = new  ModelAndView("AddBanner"); 
       Banner bnerNew = new Banner();
       mav.addObject("bnerNew", bnerNew);
       return mav;
       
    }
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String Insert(Banner bnerNew,HttpServletRequest request, @RequestParam(value = "imageMain") MultipartFile imageMain)throws IOException{
        String bannerId = request.getParameter("bannerId");
        String errorid = "";

        if (bnerModel.checkId(bannerId) == true) {
            request.setAttribute("bannerId", true);
            return "redirect:initInsert.htm?error=BannerId_has_been_sed";
        
        }else{
        bnerNew.setImageLink(new UpLoadFile().saveImageToFolder(request, imageMain));
    
        boolean check = bnerModel.Insert(bnerNew);
        if(check){
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
        }
    }
    @RequestMapping(value = "/initUpdate")
    public ModelAndView initUpdate(String bannerId){
        ModelAndView mav = new ModelAndView("UpdateBanner");
        Banner bnerUpdate = bnerModel.getById(bannerId);
        mav.addObject("bnerUpdate", bnerUpdate);
        return  mav;
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String Update(Banner bnerUpdate){
        boolean check = bnerModel.Update(bnerUpdate);
        if (check) {
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value = "/delete")
    public String Delete(String bannerId){
    boolean check = bnerModel.Delete(bannerId);
        if (check) {
            return "redirect:getAll.htm";
        }else{
            return "error";
        }
}
    
}
