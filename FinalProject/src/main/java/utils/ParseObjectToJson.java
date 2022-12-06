package utils;


import model.Cart;

import com.google.gson.Gson;


public class ParseObjectToJson {
	
	public String ObjectToString(Cart cart) {
		
		Gson json = new Gson();
		String list_lineitem = json.toJson(cart);
		
		return list_lineitem;
	}
	
	public Cart StringToOject(String cart){
		
		
		Gson json = new Gson();
		Cart newcart = json.fromJson(cart, Cart.class);
		//System.out.println(newcart.getLineItem().size());
		return newcart;
	}
}
