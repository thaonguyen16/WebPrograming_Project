package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cart")
public class CartDB implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
	
	private String CartID;
	private String LineItemID;
	
	public String getCartID() {
		return CartID;
	}
	public void setCartID(String cartID) {
		CartID = cartID;
	}
	public String getLineItemID() {
		return LineItemID;
	}
	public void setLineItemID(String lineItemID) {
		LineItemID = lineItemID;
	}
}
