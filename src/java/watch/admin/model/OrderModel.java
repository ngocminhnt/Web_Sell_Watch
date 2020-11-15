/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package watch.admin.model;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import watch.entity.Categories;
import watch.entity.OrderDetail;
import watch.entity.OrderDetailId;
import watch.entity.Orders;
import watch.util.NewHibernateUtil;

/**
 *
 * @author ThinkPad T440s
 */
public class OrderModel {
     public List<Orders> getAll(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Orders");
        List<Orders> listOrder = query.list();
        session.getTransaction().commit();
        session.close();
        return  listOrder;
     }
     public List<Orders> getAllS1(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Orders where orderStatus =1");
        List<Orders> listOrder = query.list();
        session.getTransaction().commit();
        session.close();
        return  listOrder;
     }
     public List<Orders> getAllS0(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Orders where orderStatus =0");
        List<Orders> listOrder = query.list();
        session.getTransaction().commit();
        session.close();
        return  listOrder;
     }
     public List<Orders> getAllDetail(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from OrderDetail");
        List<Orders> listOrder = query.list();
        session.getTransaction().commit();
        session.close();
        return  listOrder;
   }
     public Orders getById(int orderId){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query= session.createQuery("from Orders  where orderId=:orderId");
        query.setInteger("orderId", orderId);
        Orders or = (Orders) query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return or;
    }
   public boolean insertOrderProduct(Orders od) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();;
        boolean check = false;
        try {
            session= NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.save(od);
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
   public List<Orders> getMaxOrders() {

        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Orders> lisod = null;
        try {
            Query query = session.createQuery("from Orders order by OrderId desc");
            lisod = query.setMaxResults(1).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.close();
        return lisod;
    }
    public boolean insertOrderDetail(OrderDetail odd) {
        Session session = null;
        boolean check = false;
        try {
            session= NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.save(odd);
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
     public List<OrderDetail> getByOrderId(int orderId){

        
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            Query query = session.createQuery("from OrderDetail where orderId=:orderId ");
            query.setParameter("orderId", orderId);
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
    public  boolean  Update(Orders ord){
        Session session = null;
        boolean check= false;
        try {
            session = NewHibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            session.merge(ord);
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
    public boolean setStatusUserfalse(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        boolean check = false;
        try {
            session.beginTransaction();
            int i = session.createQuery("update Orders set orderStatus=0")
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
    public boolean setStatusUsertrue(){
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        boolean check = false;
        try {
            session.beginTransaction();
            int i = session.createQuery("update Orders set orderStatus=0")
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
