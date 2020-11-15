/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import watch.entity.Images;
import watch.entity.Producers;
import watch.entity.Product;
import watch.entity.Images;
import watch.util.ConnectionDB;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class ProductModel {

    PreparedStatement ps = null;
    ResultSet rs = null;
    Connection conn = null;

    public List<Product> getAll() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product ");
        List<Product> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return listPro;
    }

    public List<Product> getAllS1() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where  productStatus = 1");
        List<Product> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return listPro;
    }

    public List<Product> getAllS0() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where  productStatus = 0");
        List<Product> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return listPro;
    }

    public Boolean checkId(String productId) {
        conn = ConnectionDB.openConnectionDB();
        String query = "select * from Product  where productId= '" + productId + "' ";
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

    public boolean InsertPro(Product pro) {
        Session session = null;
        boolean check = false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.save(pro);
            //Insert ProductImage           
            List<Images> listImg = new ArrayList<>(pro.getImageses());
            for (Images Images : listImg) {
                session.save(Images);
            }
            session.getTransaction().commit();
            check = true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return check;
    }

    public boolean UpdatePro(Product pro) {
        Session session = null;
        boolean check = false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.merge(pro);
            List<Images> listImg = new ArrayList<>(pro.getImageses());
            for (Images Images : listImg) {
                session.merge(Images);
            }
            session.getTransaction().commit();
            check = true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return check;
    }

    public Product getById(String productId) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product  where productId=:productId");
        query.setString("productId", productId);
        Product pro = (Product) query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return pro;
    }

    public boolean DeletePro(String productId) {
        Session session = null;
        boolean check = false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            Product ProRemove = getById(productId);

            session.getTransaction().begin();

            session.delete(ProRemove);
            session.getTransaction().commit();
            check = true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return check;
    }

    public List<Product> bestsell() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where discount > 30 and productStatus = 1 ");
        List<Product> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return listPro;
    }

    public List<Product> onsell() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where discount > 0 and productStatus = 1 ");
        List<Product> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return listPro;
    }

    public List<Product> ProNew() {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where year(getdate())- year(created) < 1 and productStatus = 1 ");
        List<Product> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return listPro;
    }

    public List<Product> getSPCatId(String catId) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            Query query = session.createQuery("from Product where catId=:catId and  productStatus =1");
            query.setParameter("catId", catId);
            List list = query.list();
            session.getTransaction().commit();
            return list;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

        return null;
    }

    public List<Product> getSPProdId(String producersId) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            Query query = session.createQuery("from Product where producersId=:producersId and  productStatus =1");
            query.setParameter("producersId", producersId);
            List list = query.list();
            session.getTransaction().commit();
            return list;
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

        return null;
    }
    public List<Product> searchWatch(String key) {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Product> listPr = null;
        try {
            Query query = session.createQuery("from Product where ProductName like '%"+key+"%' or Title like '%"+key+"%'");
            listPr = query.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return listPr;
    }

}
