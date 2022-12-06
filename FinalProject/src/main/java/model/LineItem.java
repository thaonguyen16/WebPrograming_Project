package model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "line_item")
public class LineItem implements Serializable
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    private String ID;

    private int ProductCode;
    private String CategoryCode;
    private String ProductName;
    private String ProductImg;
    private String Price;
    private String TotalPrice;
    private int quantity;

	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public int getProductCode() {
		return ProductCode;
	}
	public void setProductCode(int productCode) {
		ProductCode = productCode;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getProductImg() {
		return ProductImg;
	}
	public void setProductImg(String productImg) {
		ProductImg = productImg;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getTotalPrice() {
		return TotalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		TotalPrice = totalPrice;
	}
	public String getCategoryCode() {
		return CategoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		CategoryCode = categoryCode;
	}
    
    
}
