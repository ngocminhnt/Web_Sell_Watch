package watch.entity;
// Generated Nov 5, 2020 5:22:15 PM by Hibernate Tools 4.3.1



/**
 * OrderDetail generated by hbm2java
 */
public class OrderDetail  implements java.io.Serializable {


     private OrderDetailId id;
     private Orders orders;
     private Product product;
     private Integer quantity;

    public OrderDetail() {
    }

	
    public OrderDetail(OrderDetailId id, Orders orders, Product product) {
        this.id = id;
        this.orders = orders;
        this.product = product;
    }
    public OrderDetail(OrderDetailId id, Orders orders, Product product, Integer quantity) {
       this.id = id;
       this.orders = orders;
       this.product = product;
       this.quantity = quantity;
    }
   
    public OrderDetailId getId() {
        return this.id;
    }
    
    public void setId(OrderDetailId id) {
        this.id = id;
    }
    public Orders getOrders() {
        return this.orders;
    }
    
    public void setOrders(Orders orders) {
        this.orders = orders;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }




}


