package dao.Implement;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

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
            e.printStackTrace();
        }
		
	}

	@Override
	public List<Bill> getAllBillbyUser(String user_name) {
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Bill> query = builder.createQuery(Bill.class);
            Root<Bill> ac = query.from(Bill.class);

            query.select(ac).where(builder.equal(ac.get("user_name"),user_name));

            Query<Bill> q = session.createQuery(query);

            return q.getResultList();
        }
	}

	@Override
	public List<CartDB> getAllCartByBill(String cart_code) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<CartDB> query = builder.createQuery(CartDB.class);
            Root<CartDB> ac = query.from(CartDB.class);

            query.select(ac).where(builder.equal(ac.get("CartID"),cart_code));

            Query<CartDB> q = session.createQuery(query);

            return q.getResultList();
        }
	}

	@Override
	public LineItem getAllLineItemByCart(String line_code) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<LineItem> query = builder.createQuery(LineItem.class);
            Root<LineItem> ac = query.from(LineItem.class);

            query.select(ac).where(builder.equal(ac.get("ID"),line_code));

            Query<LineItem> q = session.createQuery(query);

            return q.getResultList().get(0);
        }
	}

	@Override
	public List<Bill> getAllBillByStatus(String status) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Bill> query = builder.createQuery(Bill.class);
            Root<Bill> ac = query.from(Bill.class);

            query.select(ac).where(builder.equal(ac.get("Status"),status));

            Query<Bill> q = session.createQuery(query);

            return q.getResultList();
        }
	}
}
