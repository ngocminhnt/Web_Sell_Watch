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
import watch.entity.Producers;
import watch.util.ConnectionDB;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class ProducersModel {
    PreparedStatement ps = null;
    ResultSet rs = null;
    Connection conn = null;
    public List<Producers> getAll(){
         
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Producers");
        List<Producers> listPro = query.list();
        session.getTransaction().commit();
        session.close();
        return  listPro;
   }
    public  boolean InsertProdc(Producers prodc){
        Session session = null;
        boolean check = false;
        try {
            session= NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.save(prodc);
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
    public  boolean  UpdateProdc(Producers prodc){
        Session session = null;
        boolean check= false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.merge(prodc);
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
    
    public Producers getById(String producersId){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query= session.createQuery("from Producers  where producersId=:producersId");
        query.setString("producersId", producersId);
        Producers prodc = (Producers) query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return prodc;
    }
    public  boolean  DeleteProdc(String producersId){
        Session session = null;
        boolean check= false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            Producers ProdcRemove = getById(producersId);
            session.getTransaction().begin();
            session.delete(ProdcRemove);
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
     public Boolean checkId(String producersId) {
        conn = ConnectionDB.openConnectionDB();
        String query = "select * from Producers  where producersId= '" + producersId + "' ";
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
