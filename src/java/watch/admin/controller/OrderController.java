/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import watch.admin.model.OrderModel;
import watch.admin.model.ProducersModel;
import watch.admin.model.ProductModel;
import watch.admin.model.Web_User_Model;
import watch.entity.OrderDetail;
import watch.entity.Orders;
import watch.entity.Producers;
import watch.entity.Product;
import watch.entity.WebUser;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/OrderController")
public class OrderController {

    private OrderModel orderModel;
    private ProductModel proModel;
    private Web_User_Model userModel;

    public OrderController() {
        orderModel = new OrderModel();
        proModel = new ProductModel();
        userModel = new Web_User_Model();
    }

    @RequestMapping(value = "/getAll")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("AdminOrder");
        List<Orders> listOrder = orderModel.getAll();
        mav.addObject("listOrders", listOrder);
        List<Orders> listOrderD = orderModel.getAllDetail();
        mav.addObject("abc", listOrderD);
        List<Product> listPro = proModel.getAll();
        mav.addObject("listPro", listPro);
        List<WebUser> listU = userModel.getAll();
        mav.addObject("listU", listU);
        return mav;
    }

    @RequestMapping(value = "/getActive")
    public ModelAndView getAllS1() {
        ModelAndView mav = new ModelAndView("AdminOrder");
        List<Orders> listOrder = orderModel.getAllS1();
        mav.addObject("listOrders", listOrder);
        List<Orders> listOrderD = orderModel.getAllDetail();
        mav.addObject("abc", listOrderD);
        List<Product> listPro = proModel.getAll();
        mav.addObject("listPro", listPro);
        List<WebUser> listU = userModel.getAll();
        mav.addObject("listU", listU);
        return mav;
    }

    @RequestMapping(value = "/getInActive")
    public ModelAndView getAllS0() {
        ModelAndView mav = new ModelAndView("AdminOrder");
        List<Orders> listOrder = orderModel.getAllS0();
        mav.addObject("listOrders", listOrder);
        List<Orders> listOrderD = orderModel.getAllDetail();
        mav.addObject("abc", listOrderD);
        List<Product> listPro = proModel.getAll();
        mav.addObject("listPro", listPro);
        List<WebUser> listU = userModel.getAll();
        mav.addObject("listU", listU);
        return mav;
    }

    @RequestMapping(value = "/getOrderDetail")
    public ModelAndView getOrderDetail(int orderId) {
        ModelAndView mav = new ModelAndView("OrderDetail");
        List<Product> listPro = proModel.getAll();
        mav.addObject("listPro", listPro);
        List<OrderDetail> listOD = orderModel.getByOrderId(orderId);
        mav.addObject("listOD", listOD);
        return mav;
    }

    @RequestMapping(value = "/initUpdate")
    public ModelAndView initUpdate(int orderId) {
        ModelAndView mav = new ModelAndView("UpdateOrderStatus");
        Orders ordUpdate = orderModel.getById(orderId);
        mav.addObject("ordUpdate", ordUpdate);
        return mav;
    }

//    @RequestMapping(value = "/update", method = RequestMethod.POST)
//    public String Update(Orders ordUpdate) {
//        boolean check = orderModel.Update(ordUpdate);
//        if (check) {
//            return "redirect:getAll.htm";
//        } else {
//            return "error";
//        }
//    }
//    public boolean Customer1Online() {
//        try {
//            List<WebUser> usersCheck = (List<WebUser>) orderModel.getUserOnlineO();
//            int c = usersCheck.size();
//            if (c == 1) {
//                return true;
//            } else {
//                return false;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }

    @RequestMapping(value = "/update1")
    public String orderProduct(Model model, HttpServletRequest request) {
        String orderStatus = request.getParameter("orderStatus");
        model.addAttribute("orderStatus", orderStatus.trim());

        if (orderStatus.equals("1")) {

            orderModel.setStatusUserfalse();
            
        } else {
            orderModel.setStatusUsertrue();
        }
        return "AdminOrder";

    }
    @RequestMapping(value = "/updateStatus",method = RequestMethod.POST)
    public String updateStatus(HttpServletRequest request,Orders orders)
    {
//        int id = Integer.parseInt(request.getParameter("id"));
        int id = orders.getOrderId();
//        int status = Integer.parseInt(request.getParameter("status"));
        boolean status = orders.getOrderStatus();
        Orders orderUp = orderModel.getById(id);
        orderUp.setOrderStatus(status);
        boolean check = orderModel.Update(orderUp);
        if (check) {
            
          return "redirect:getAll.htm";
        }else
        {
            return   "error";
        }
    }

}
