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
import watch.entity.Banner;
import watch.entity.Producers;
import watch.util.ConnectionDB;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class BannerModel {
     PreparedStatement ps = null;
    ResultSet rs = null;
    Connection conn = null;
     public List<Banner> getAll(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Banner");
        List<Banner> listBner = query.list();
        session.getTransaction().commit();
        session.close();
        return  listBner;
   }
      public List<Banner> getAllS1(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Banner where bannerStatus=1");
        List<Banner> listBner = query.list();
        session.getTransaction().commit();
        session.close();
        return  listBner;
   }
    public  boolean Insert(Banner bner){
        Session session = null;
        boolean check = false;
        try {
            session= NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.save(bner);
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
    public  boolean  Update(Banner bner){
        Session session = null;
        boolean check= false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.merge(bner);
            session.getTransaction().commit();
            check= true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }finally{
            session.close();
        }
        return check;
    }
    
    public Banner getById(String bannerId){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query= session.createQuery("from Banner  where bannerId=:bannerId");
        query.setString("bannerId", bannerId);
        Banner bner = (Banner) query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return bner;
    }
    public  boolean  Delete(String bannerId){
        Session session = null;
        boolean check= false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            Banner BnerRemove = getById(bannerId);
            session.getTransaction().begin();
            session.delete(BnerRemove);
            session.getTransaction().commit();
            
            check= true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }finally{
            session.close();
        }
        return check;
    }
    public Boolean checkId(String bannerId) {
        conn = ConnectionDB.openConnectionDB();
        String query = "select * from Banner  where bannerId= '" + bannerId + "' ";
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
}
