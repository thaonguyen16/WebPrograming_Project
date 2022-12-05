package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product_image_detail")
public class ProductImageDetail implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
	
    private int ProductCodeID;
    private String ProductIMG;
    
	public int getProductCodeID() {
		return ProductCodeID;
	}
	public void setProductCodeID(int productCodeID) {
		ProductCodeID = productCodeID;
	}
	public String getProductIMG() {
		return ProductIMG;
	}
	public void setProductIMG(String productIMG) {
		ProductIMG = productIMG;
	}
}
