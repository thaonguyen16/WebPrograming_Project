package model;


import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable
{
    /**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	
	private List<LineItem> lineItem;
	private String CartID;
	
	public List<LineItem> getLineItem() {
		return lineItem;
	}
	

	public void setLineItem(List<LineItem> lineItem) {
		this.lineItem = lineItem;
	}
    
	public Cart() {
	}


	public String getCartID() {
		return CartID;
	}


	public void setCartID(String cartID) {
		CartID = cartID;
	}
}
