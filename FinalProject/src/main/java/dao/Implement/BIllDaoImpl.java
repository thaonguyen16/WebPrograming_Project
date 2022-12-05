package dao.Implement;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.BillDao;
import hibernate.HibernateUtil;
import model.Bill;
import model.Cart;
import model.CartDB;
import model.LineItem;

public class BIllDaoImpl implements BillDao{


	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(Bill bill) {
		
		Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(bill);
            transaction.commit();
        }
	}

	@Override
	public void edit(Bill bill) {
		
		Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(bill);
            transaction.commit();
        }
        catch (Exception e) {
            if(transaction!=null)
            {
                transaction.rollback();
            }
            e.printStackTrace();
        }	
	}

	@Override
	public void insertLineItem(LineItem lineitem) {
		
		Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(lineitem);
            transaction.commit();
        }
        catch (Exception e) {
            if(transaction!=null)
            {
                transaction.rollback();
            }
            e.printStackTrace();
        }
		
	}

	@Override
	public void insertCart(CartDB cart) {
		
		Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(cart);
            transaction.commit();
        }
        catch (Exception e) {
            if(transaction!=null)
            {
                transaction.rollback();
            }
            e.printStackTrace();
        }
		
	}
}
