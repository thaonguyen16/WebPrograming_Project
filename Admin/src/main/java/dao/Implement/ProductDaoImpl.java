package dao.Implement;

import dao.ProductDao;
import hibernate.HibernateUtil;
import model.Brand;
import model.Category;
import model.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class ProductDaoImpl implements ProductDao
{

	@Override
    public List<Product> get_all() {
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> pro = query.from(Product.class);

            query.select(pro);
            Query<Product> q = session.createQuery(query);

            return q.getResultList();
        }
    }

    @Override
    public List<Product> get_by_category(String code) {
    	try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> pro = query.from(Product.class);

            query.select(pro).where(builder.equal(pro.get("CategoryCode"),code));

            Query<Product> q = session.createQuery(query);

            return q.getResultList();
        }
    }

    @Override
    public void insert(Product product) {
    	Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(product);
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
    public void update(Product product) {
    	Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(product);
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
    public void delete(int id) {
    	Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            Product pro = session.get(Product.class,id);

            if(pro!=null)
            {
                session.delete(pro);
            }
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
    public long sum() {
    	try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> pro = query.from(Product.class);

            query.select(pro);
            Query<Product> q = session.createQuery(query);

            return q.getResultList().size();
        }
    }

	@Override
	public List<Brand> getAllBrand(String CategoryCode) {
		try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Brand> query = builder.createQuery(Brand.class);
            Root<Brand> br = query.from(Brand.class);

            query.select(br).where(builder.equal(br.get("CategoryCode"),CategoryCode));

            Query<Brand> q = session.createQuery(query);

            return q.getResultList();
        }
	}

	@Override
	public long sumByCategory(String category) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> br = query.from(Product.class);

            query.select(br).where(builder.equal(br.get("CategoryCode"),category));

            Query<Product> q = session.createQuery(query);

            return q.getResultList().size();
        }
	}

	@Override
	public List<Brand> getAllBrand() {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Brand> query = builder.createQuery(Brand.class);
            Root<Brand> br = query.from(Brand.class);

            query.select(br);

            Query<Brand> q = session.createQuery(query);

            return q.getResultList();
        }
	}

	@Override
	public Product getByID(int id) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> pro = query.from(Product.class);

            query.select(pro).where(builder.equal(pro.get("ID"),id));

            Query<Product> q = session.createQuery(query);

            return q.getResultList().get(0);
        }
	}
}
