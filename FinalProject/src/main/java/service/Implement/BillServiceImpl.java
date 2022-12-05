package service.Implement;

import dao.BillDao;
import dao.Implement.BIllDaoImpl;
import model.Bill;
import model.Cart;
import model.CartDB;
import model.LineItem;
import service.BillService;

public class BillServiceImpl implements BillService {

	BillDao dao = new BIllDaoImpl();
	@Override
	public void insert(Bill bill) {
		dao.insert(bill);
	}

	@Override
	public void edit(Bill bill) {
		dao.edit(bill);
	}

	@Override
	public void delete(String BillCode) {
		dao.delete(BillCode);
	}

	@Override
	public void insertLineItem(LineItem lineitem) {
		dao.insertLineItem(lineitem);
	}

	@Override
	public void insertCart(CartDB cart) {
		dao.insertCart(cart);
		
	}
	
}
