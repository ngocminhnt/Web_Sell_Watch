/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.hibernate.Query;
import org.hibernate.Session;
import watch.entity.Admins;
import watch.util.ConnectionDB;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class AdminLoginModel {
    PreparedStatement ps= null;
    ResultSet rs=null;
    Connection conn= null;
    public Boolean checklogin(String nameAdmin,String passAdmin){
       conn =  ConnectionDB.openConnectionDB();
       String query= "select * from Admins  where nameAdmin= '" + nameAdmin + "' and passAdmin= '" + passAdmin+"'";
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
}
