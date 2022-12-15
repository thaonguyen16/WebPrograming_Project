package service;

import java.util.List;

import model.Bill;
import model.Cart;
import model.CartDB;
import model.LineItem;

public interface BillService {
	void insert(Bill bill);
    void edit(Bill bill);
    void delete(String BillCode);
    void insertLineItem(LineItem lineitem);
    void insertCart(CartDB cart);
    
    List<Bill> getAllBillbyUser(String user_phone);
    List<CartDB> getAllCartByBill(String cart_code);
    List<Bill> getAllBillByStatus(String status);
    
    LineItem getAllLineItemByCart(String cart_code);
}
