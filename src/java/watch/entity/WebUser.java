package watch.entity;
// Generated Nov 5, 2020 5:22:15 PM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * WebUser generated by hbm2java
 */
public class WebUser  implements java.io.Serializable {


     private int userId;
     private String mail;
     private String phone;
     private String userName;
     private String passwords;
     private String addresss;
     private Boolean userStatus;
     private String birthDay;
     private Set orderses = new HashSet(0);

    public WebUser() {
    }

	
    public WebUser(int userId) {
        this.userId = userId;
    }
    public WebUser(int userId, String mail, String phone, String userName, String passwords, String addresss, Boolean userStatus, String birthDay, Set orderses) {
       this.userId = userId;
       this.mail = mail;
       this.phone = phone;
       this.userName = userName;
       this.passwords = passwords;
       this.addresss = addresss;
       this.userStatus = userStatus;
       this.birthDay = birthDay;
       this.orderses = orderses;
    }
   
    public int getUserId() {
        return this.userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public String getMail() {
        return this.mail;
    }
    
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPasswords() {
        return this.passwords;
    }
    
    public void setPasswords(String passwords) {
        this.passwords = passwords;
    }
    public String getAddresss() {
        return this.addresss;
    }
    
    public void setAddresss(String addresss) {
        this.addresss = addresss;
    }
    public Boolean getUserStatus() {
        return this.userStatus;
    }
    
    public void setUserStatus(Boolean userStatus) {
        this.userStatus = userStatus;
    }
    public String getBirthDay() {
        return this.birthDay;
    }
    
    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }
    public Set getOrderses() {
        return this.orderses;
    }
    
    public void setOrderses(Set orderses) {
        this.orderses = orderses;
    }




}


