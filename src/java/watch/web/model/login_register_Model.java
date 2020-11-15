/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.web.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import watch.entity.Banner;
import watch.entity.WebUser;
import watch.util.ConnectionDB;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class login_register_Model {
    PreparedStatement ps= null;
    ResultSet rs=null;
    Connection conn= null;
    public Boolean checkloginUser(String userName,String passwords){
       conn =  ConnectionDB.openConnectionDB();
       String query= "select * from WebUser  where userName= '" + userName + "' and passwords= '" + passwords+"'";
        try {
        ps=conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
            while (rs.next()) {                      
                return true;
            }
        
        } catch (Exception e) {
            	e.printStackTrace();
        }
        
        return false;
    }
    public List<WebUser> getAll(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from WebUser");
        List<WebUser> listUser = query.list();
        session.getTransaction().commit();
        session.close();
        return  listUser;
   }
}
