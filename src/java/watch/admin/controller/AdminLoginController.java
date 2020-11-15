/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.controller;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import watch.admin.model.AdminLoginModel;
import watch.entity.Admins;

/**
 *
 * @author ThinkPad T440s
 */
@Controller
@RequestMapping(value = "/AdminController")
public class AdminLoginController {
    private AdminLoginModel AdmLgModel ;

    public AdminLoginController() {
        AdmLgModel = new AdminLoginModel();
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView getAllBner(){
       ModelAndView mav = new  ModelAndView("AdminLogin"); 
       
       return mav;
    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public  String Login(HttpServletRequest request,@ModelAttribute(value = "tk")Admins tk,ModelMap mm, HttpSession ss)throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		

		String username = request.getParameter("userAdmin");
                String password = request.getParameter("passAdmin");
                
                String error ="";
                if(username.equals("")||password.equals("")){
                    error = "Vui lòng nhập đầy đủ thông tin";
                }else if(AdmLgModel.checklogin(username, password)==false){
                    error = " Tài Khoản hoặc Mật Khẩu không chính xác !";
                   
                }if (error.length() > 0) {
			request.setAttribute("error", error);
		}
             
                request.setAttribute("username", username);
		request.setAttribute("password", password);
                
          
                 try{
                       if(AdmLgModel.checklogin(username, password)==true){  
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
                                return "Database";
                       }else{
                           return "AdminLogin";
                       }
                       
                         }catch(Exception e){
                             e.printStackTrace();
                             
                         }
     return "AdminLogin";
    
  }
    @RequestMapping(value = "/logout")
    public String logout(HttpSession ss){
        ss.removeAttribute("username");
        return "AdminLogin";
        
    }

    
}
