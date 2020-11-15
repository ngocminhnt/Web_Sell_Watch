package watch.entity;
// Generated Nov 5, 2020 5:22:15 PM by Hibernate Tools 4.3.1


import java.io.Serializable;

/**
 * Banner generated by hbm2java
 */
public class Banner  implements java.io.Serializable {


     private String bannerId;
     private String bannerName;
     private String imageLink;
     private Boolean bannerStatus;

    public Banner() {
    }

	
    public Banner(String bannerId) {
        this.bannerId = bannerId;
    }
    public Banner(String bannerId, String bannerName, String imageLink, Boolean bannerStatus) {
       this.bannerId = bannerId;
       this.bannerName = bannerName;
       this.imageLink = imageLink;
       this.bannerStatus = bannerStatus;
    }
   
    public String getBannerId() {
        return this.bannerId;
    }
    
    public void setBannerId(String bannerId) {
        this.bannerId = bannerId;
    }
    public String getBannerName() {
        return this.bannerName;
    }
    
    public void setBannerName(String bannerName) {
        this.bannerName = bannerName;
    }
    public String getImageLink() {
        return this.imageLink;
    }
    
    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }
    public Boolean getBannerStatus() {
        return this.bannerStatus;
    }
    
    public void setBannerStatus(Boolean bannerStatus) {
        this.bannerStatus = bannerStatus;
    }




}


