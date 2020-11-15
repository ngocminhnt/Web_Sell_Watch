/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import watch.admin.model.BannerModel;
import watch.admin.model.CategoriesModel;
import watch.admin.model.ImagesModel;
import watch.admin.model.ProducersModel;
import watch.admin.model.ProductModel;
import watch.entity.Banner;
import watch.entity.Categories;
import watch.entity.Images;
import watch.entity.Producers;
import watch.entity.Product;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/WebProController")
public class Web_Product_Controller {
     private ProductModel proModel;
    private ProducersModel prodcModel;
    private CategoriesModel catModel;
    private ImagesModel ImgModel;
    private BannerModel BnerModel;
    public Web_Product_Controller() {
        proModel = new ProductModel();
        prodcModel = new ProducersModel();
        catModel = new CategoriesModel();
        ImgModel = new ImagesModel();
        BnerModel = new BannerModel();
    }
    @RequestMapping(value = "/getAll")
    public ModelAndView getBestSeller() {
        ModelAndView mav = new ModelAndView("index");
         List<Categories> listcat = catModel.getAll();
        mav.addObject("listcat", listcat);
        List<Producers> listprodc = prodcModel.getAll();
        mav.addObject("listprodc", listprodc);
        List<Product> listProS1 = proModel.getAllS1();
        mav.addObject("listProS1", listProS1);
        List<Product> listProB = proModel.bestsell();
        mav.addObject("listProB", listProB);
        List<Product> listProO = proModel.onsell();
        mav.addObject("listProO", listProO);
        List<Product> listProN = proModel.ProNew();
        mav.addObject("listProN", listProN);
        List<Banner> listBner = BnerModel.getAll();
        mav.addObject("listBner", listBner);
        return mav;
    }
    
    @RequestMapping(value = "/getProCat")
    public ModelAndView getProbyCatID(String catId) {
        ModelAndView mav = new ModelAndView("shop"); 
         List<Categories> listcat = catModel.getAll();
        mav.addObject("listcat", listcat);
        List<Producers> listprodc = prodcModel.getAll();
        mav.addObject("listprodc", listprodc);
        List<Product> listPro = proModel.getSPCatId(catId);
        mav.addObject("listPro", listPro);
        return mav;
    }
     @RequestMapping(value = "/getProProd")
    public ModelAndView getProbyProdID(String producersId) {
        ModelAndView mav = new ModelAndView("shop"); 
        List<Categories> listcat = catModel.getAll();
        mav.addObject("listcat", listcat);
        List<Producers> listprodc = prodcModel.getAll();
        mav.addObject("listprodc", listprodc);
        List<Product> listPro = proModel.getSPProdId(producersId);
        mav.addObject("listPro", listPro);
        return mav;
    }
    @RequestMapping("/productdetails")
    public ModelAndView detailProduct(@RequestParam("productId") String proid, Model model) {
        ModelAndView mav = new ModelAndView("product-details");
        List<Categories> listcat = catModel.getAll();
        mav.addObject("listcat", listcat);
        List<Producers> listprodc = prodcModel.getAll();
        mav.addObject("listprodc", listprodc);
        List<Images> img = ImgModel.getAll();
        mav.addObject("img", img);
        Product productById = proModel.getById(proid);
        model.addAttribute("p", productById);
        return mav;
    }
     @RequestMapping("search")
    public ModelAndView Search(Model model, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("shop");
        String key = request.getParameter("keysearch");
        List<Product> listPro = proModel.searchWatch(key);
        mav.addObject("listPro", listPro);

        return mav;
    }
}
