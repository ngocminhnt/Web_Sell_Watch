/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.model;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import watch.entity.Images;
import watch.entity.Product;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class ImagesModel {
    public List<Images> getAll(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Images  "); 
        List<Images> listImg = query.list();
        session.getTransaction().commit();
        session.close();
        return  listImg;
   }
    public Images getById(String productId){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query= session.createQuery("from Images  where productId=:productId");
        query.setString("productId", productId);
        Images img = (Images) query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return img;
    }
    public  boolean  DeleteImg(String productId){
        Session session = null;
        boolean check= false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            Images ImgRemove = getById(productId);
            session.getTransaction().begin();
            session.delete(ImgRemove); 
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
}
