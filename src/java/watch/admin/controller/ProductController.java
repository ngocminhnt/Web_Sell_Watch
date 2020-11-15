/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import watch.admin.model.CategoriesModel;
import watch.admin.model.ImagesModel;
import watch.admin.model.ProducersModel;
import watch.admin.model.ProductModel;
import watch.entity.Categories;
import watch.entity.Images;
import watch.entity.Producers;
import watch.entity.Product;
import watch.util.UpLoadFile;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/ProController")
public class ProductController {

    private ProductModel proModel;
    private ProducersModel prodcModel;
    private CategoriesModel catModel;
    private ImagesModel ImgModel;

    public ProductController() {
        proModel = new ProductModel();
        prodcModel = new ProducersModel();
        catModel = new CategoriesModel();
        ImgModel = new ImagesModel();
    }

    @RequestMapping(value = "/getAll")
    public ModelAndView getAllPro() {
        ModelAndView mav = new ModelAndView("AdminProduct");
        List<Product> listPro = proModel.getAll();
        mav.addObject("ListProduct", listPro);
        List<Images> listImg = ImgModel.getAll();
        mav.addObject("ListImg", listImg);
        return mav;
    }
    @RequestMapping(value = "/getActive")
    public ModelAndView getProS1() {
        ModelAndView mav = new ModelAndView("AdminProduct");
        List<Product> listPro = proModel.getAllS1();
        mav.addObject("ListProduct", listPro);
        List<Images> listImg = ImgModel.getAll();
        mav.addObject("ListImg", listImg);
        return mav;
    }
    @RequestMapping(value = "/getInActive")
    public ModelAndView getProS0() {
        ModelAndView mav = new ModelAndView("AdminProduct");
        List<Product> listPro = proModel.getAllS0();
        mav.addObject("ListProduct", listPro);
        List<Images> listImg = ImgModel.getAll();
        mav.addObject("ListImg", listImg);
        return mav;
    }

    @RequestMapping(value = "/initInsert")
    public ModelAndView initInsert() {
        ModelAndView mav = new ModelAndView("AddProduct");
        Product proNew = new Product();
        mav.addObject("proNew", proNew);
        List<Categories> listCat = catModel.getAll();
        mav.addObject("listCat", listCat);
        List<Producers> listProdc = prodcModel.getAll();
        mav.addObject("listProdc", listProdc);
        return mav;

    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String Insert(Product proNew, HttpServletRequest request, @RequestParam(value = "imageMain") MultipartFile imageMain, @RequestParam(value = "imageOther") MultipartFile[] imageOther) throws IOException {
        String productId = request.getParameter("productId");
        String errorid = "";

        if (proModel.checkId(productId) == true) {
            request.setAttribute("productId", true);
            return "redirect:initInsert.htm?error=ProductId_has_been_sed";
        
        }else{
        
        //Luu anh chinh cua san pham vao thu muc va add duong dan anh chinh vao doi tuong proNew
        proNew.setImageLink(new UpLoadFile().saveImageToFolder(request, imageMain));
        //Luu cac anh phu cua san pham vao thu muc va add duong dan anh phu vao danh sach anh phu cua san pham 
        List<Images> listImageOther = new ArrayList<>();
        for (MultipartFile other : imageOther) {
            //Khoi tao doi tuong ProductImages trong danh sach anh phu cua product
            Images proImg = new Images();
            proImg.setProduct(new Product(proNew.getProductId()));
            proImg.setImageLink(new UpLoadFile().saveImageToFolder(request, other));
            listImageOther.add(proImg);
        }
        //Convert listImageOther to Set
        Set<Images> setImage = new HashSet(listImageOther);
        proNew.setImageses(setImage);

        boolean check = proModel.InsertPro(proNew);
        if (check) {
            return "redirect:getAll.htm";
        } 
        return "error";
        }
    }

    @RequestMapping(value = "/initUpdate")
    public ModelAndView initUpdate(String productId) {
        ModelAndView mav = new ModelAndView("UpdateProduct");
        Product proUpdate = proModel.getById(productId);
        mav.addObject("proUpdate", proUpdate);
        List<Categories> listCat = catModel.getAll();
        mav.addObject("listCat", listCat);
        List<Producers> listProdc = prodcModel.getAll();
        mav.addObject("listProdc", listProdc);
        return mav;
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String Update(Product proUpdate, HttpServletRequest request, @RequestParam(value = "imageMain") MultipartFile imageMain, @RequestParam(value = "imageOther") MultipartFile[] imageOther) throws IOException {

        //Luu anh chinh cua san pham vao thu muc va add duong dan anh chinh vao doi tuong proNew
        if (imageMain.getSize() != 0) {
            proUpdate.setImageLink(new UpLoadFile().saveImageToFolder(request, imageMain));
        }

        //Luu cac anh phu cua san pham vao thu muc va add duong dan anh phu vao danh sach anh phu cua san pham 
        List<Images> listImageOther = new ArrayList<>();
        for (MultipartFile other : imageOther) {
            //Khoi tao doi tuong ProductImages trong danh sach anh phu cua product
            Images proImg = new Images();
            proImg.setProduct(new Product(proUpdate.getProductId()));
            proImg.setImageLink(new UpLoadFile().saveImageToFolder(request, other));
            listImageOther.add(proImg);
        }
        //Convert listImageOther to Set
        Set<Images> setImage = new HashSet(listImageOther);
        proUpdate.setImageses(setImage);
        boolean check = proModel.UpdatePro(proUpdate);
        if (check) {
            return "redirect:getAll.htm?success=Update_Success";
        } else {
            return "redirect:getAll.htm?success=Update_Error";
        }

    }

    @RequestMapping(value = "/delete")
    public String Delete(String productId) {
        boolean check = ImgModel.DeleteImg(productId);
        check = proModel.DeletePro(productId);
        if (check) {
            return "redirect:getAll.htm";
        } else {
            return "error";
        }
    }
    @RequestMapping("/productdetails")
    public String detailProduct(@RequestParam("productId") String proid, Model model) {
        Product productById = proModel.getById(proid);
        model.addAttribute("p", productById);
        return "product-details";
    }
}
