/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import watch.entity.WebUser;
import watch.util.ConnectionDB;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class Web_User_Model {
    public List<WebUser> getAll(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from WebUser");
        List<WebUser> listU = query.list();
        session.getTransaction().commit();
        session.close();
        return listU;
    }
    PreparedStatement ps= null;
    ResultSet rs=null;
    Connection conn= null;
    public Boolean checklogin(String userName,String passwords){
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
    public Boolean checkId(String userName) {
        conn = ConnectionDB.openConnectionDB();
        String query = "select * from WebUser  where userName= '" + userName + "' ";
        try {
            ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
    public  boolean InsertUser(WebUser user){
        Session session = null;
        boolean check = false;
        try {
            session= NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.save(user);
            session.getTransaction().commit();
            check = true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }finally{
            session.close();
        }
        return check;
    }
    public  boolean UpdateUser(WebUser user){
        Session session = null;
        boolean check = false;
        try {
            session= NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.merge(user);
            session.getTransaction().commit();
            check = true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }finally{
            session.close();
        }
        return check;
    }
    public WebUser getById(String userId){

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query= session.createQuery("from WebUser  where userId=:userId");
        query.setString("userId", userId);
        WebUser user = (WebUser) query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return user;
    }
    public List<WebUser> getUserOnline() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<WebUser>  kh = null;
        try {
            Query query = session.createQuery("from WebUser where UserStatus=1");
            kh =  query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return kh;
    }
    public WebUser getUserOnlineO() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        WebUser  kh = null;
        try {
            WebUser u = (WebUser) session.createQuery("from WebUser where UserStatus=1").uniqueResult();
            session.getTransaction().commit();
            session.close();
            return u;
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return kh;
    }
    public List<WebUser> checkAccountUser(String username,String password) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<WebUser>  kh = null;
        try {
            Query query = session.createQuery("from WebUser where UserName=:uname and Passwords=:pass");
            query.setString("uname", username);
            query.setString("pass", password);
            kh =  query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close();
        return kh;
    }
    public boolean setStatusUsertrue(String username,String password){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        boolean check = false;
        try {
            session.beginTransaction();
            Query query = session.createQuery("Update WebUser set UserStatus=1 where UserName='"+username+"' and Passwords='"+password+"'");
                    query.executeUpdate();
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return check;
    }
    public boolean setStatusUserfalse(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        boolean check = false;
        try {
            session.beginTransaction();
            int i = session.createQuery("update WebUser set UserStatus=0")
                    .executeUpdate();
            session.getTransaction().commit();
            session.close();
            if(i>0)
                return true;
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
        }
        return check;
    }
}
