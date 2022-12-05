package dao;

import model.Bill;
import model.Cart;
import model.CartDB;
import model.LineItem;

public interface BillDao {
	void insert(Bill bill);
    void edit(Bill bill);
    void delete(String BillCode);
    void insertLineItem(LineItem lineitem);
    void insertCart(CartDB cart);
}
