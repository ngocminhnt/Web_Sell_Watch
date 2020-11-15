/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.web.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import watch.admin.model.CategoriesModel;
import watch.entity.Categories;
import watch.entity.Images;
import watch.entity.Product;
import watch.entity.WebUser;
import watch.web.model.ProductAdminModel;


/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/productController")
public class ProductAdminController {
    private ProductAdminModel prAModel;
    private CategoriesModel catModel;
    public ProductAdminController(){
        prAModel = new ProductAdminModel();
        
    }
 
    @RequestMapping("/getAll")
    public ModelAndView getAllProduct(){
        ModelAndView mav = new ModelAndView("index");
        List<Product> listPr = prAModel.getAllProduct();
        mav.addObject("listPro", listPr);
        List<Product> listPr1 = prAModel.GetTop5Date();
        mav.addObject("listTop", listPr1);
        List<Product> listPro2 = prAModel.getTop5BestSale();
        mav.addObject("listTop1", listPro2);
        List<Images> listImg = prAModel.getAllImg();
        mav.addObject("ListImg", listImg);
        List<Product> listOr = prAModel.getBestSeller();
        mav.addObject("listOrd", listOr);
        List<Categories> listCat = catModel.getAll();
        mav.addObject("listPro", listPr);
        return mav;
    }
    @RequestMapping("/getTopDate")
    public ModelAndView getTop5Date(){
        ModelAndView mav = new ModelAndView("index");
        List<Product> listPr1 = prAModel.GetTop5Date();
        mav.addObject("listTop", listPr1);
        return mav;
    }
      @RequestMapping("/getSale")
    public ModelAndView getBestSale(){
        ModelAndView mav = new ModelAndView("index");
       List<Product> listPro2 = prAModel.getTop5BestSale();
        mav.addObject("listTop1", listPro2);
        return mav;
    }
     @RequestMapping("/getBestSeller")
    public ModelAndView getBestSeller(){
        ModelAndView mav = new ModelAndView("index");
       List<Product> listOr = prAModel.getBestSeller();
        mav.addObject("listOrd", listOr);
        return mav;
    }
    @RequestMapping("/viewcart")
    public String addCart(HttpServletRequest request, HttpSession session){
        return "cart";
    
    }
    
    
    @RequestMapping("/getAllSmartWatch")
    public ModelAndView getSmartWatch(){
        ModelAndView mav = new ModelAndView("smart-watch");
        List<Product> listPr = prAModel.getSmartWatch();
        mav.addObject("listProSmartWatch", listPr);
        return mav;
    }
    
    @RequestMapping("/getWatches")
    public ModelAndView getWatches(){   
        ModelAndView mav = new ModelAndView("shop");
        List<Product> listPr = prAModel.getAllWatchs();
        mav.addObject("listWatch", listPr);
        return mav;
    }
    
    @RequestMapping("/productdetails")
    public String detailProduct(@RequestParam("productId")String proid, Model model){
        Product productById = prAModel.getProductById(proid);
        model.addAttribute("p", productById);
        return "product-details";
    }
    
    
    
    public boolean CustomerOnline(){
         List<WebUser> usersCheck= prAModel.getUserOnline();
        int c=usersCheck.size();
        if (c==0){
            return false;
        }
        else{
            return true;
        }
    }
    
}
