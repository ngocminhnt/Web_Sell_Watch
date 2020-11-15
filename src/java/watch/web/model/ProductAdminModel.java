/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.web.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import watch.entity.Images;
import watch.entity.Product;
import watch.entity.WebUser;
import watch.util.NewHibernateUtil;


/**
 *
 * @author Admin
 */
public class ProductAdminModel {

    public List<Product> getAllProduct() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Product> listPr = null;
        try {
            Query query = session.createQuery("from Product");
            listPr = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listPr;
    }
    public List<Images> getAllImg() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Images> listImg = null;
        try {
            Query query = session.createQuery("from Images");
            listImg = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listImg;
    }
    public List<Product> getSmartWatch() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Product> listPr = null;
        try {
            Query query = session.createQuery("from Product where CatId='Ca02'");
            listPr = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listPr;
    }
    
    public List<Product> getAllWatchs() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Product> listPr = null;
        try {
            Query query = session.createQuery("from Product where CatId='Ca01' ");
            listPr = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listPr;
    }
    
    public Product getProductById(String productId){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where productId=:productId");
        query.setString("productId", productId);
        Product pr = (Product) query.uniqueResult();
        session.getTransaction().commit();
        return pr;
    }
    
    public List<Product> GetTop5Date() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Product> listPr1 = null;
        try {
            Query query = session.createQuery("from Product order by Created desc");
            listPr1 = query.setMaxResults(5).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listPr1;
    }
        public List<Product> getTop5BestSale() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Product> listPr2 = null;
        try {
            Query query = session.createQuery("from Product order by Discount desc");
            listPr2 = query.setMaxResults(5).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listPr2;
    }
          public List<Product> getBestSeller() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Product> listOr = null;
        try {
            Query query = session.createQuery("from Product , OrderDetail order by Amount desc");
            listOr = query.setMaxResults(5).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listOr;
    }
        
    public List<WebUser> getUserOnline() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<WebUser> listUs = null;
        try {
            Query query = session.createQuery("from WebUser where UserStatus=1");
            listUs = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listUs;
    }
    
}
