package dao.Implement;

import dao.ProductDao;
import hibernate.HibernateUtil;
import model.Product;
import model.ProductDetail;
import model.ProductImageDetail;

import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
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
    public List<Product> get_by_category(int id) {
        return null;
    }

    @Override
    public void insert(Product product) {

    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public long sum() {
        return 0;
    }

	@Override
	public Product getProductByID(int id) {
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> pro = query.from(Product.class);

            query.select(pro).where(builder.equal(pro.get("ID"),id));

            Query<Product> q = session.createQuery(query);
            Product result = q.getResultList().get(0);

            return result;
        }
	}

	@Override
	public ProductDetail getProductDetailByID(int id) {
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<ProductDetail> query = builder.createQuery(ProductDetail.class);
            Root<ProductDetail> pro = query.from(ProductDetail.class);

            query.select(pro).where(builder.equal(pro.get("ProductCode"),id));

            Query<ProductDetail> q = session.createQuery(query);
            ProductDetail result = q.getResultList().get(0);
            
            return result;
        }
	}

	@Override
	public List<ProductImageDetail> getProductImageByID(int id) {
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<ProductImageDetail> query = builder.createQuery(ProductImageDetail.class);
            Root<ProductImageDetail> pro = query.from(ProductImageDetail.class);

            query.select(pro).where(builder.equal(pro.get("ProductCodeID"),id));

            Query<ProductImageDetail> q = session.createQuery(query);
            List<ProductImageDetail> result = q.getResultList();
            
            return result;
        }
	}

	@Override
	public List<Product> getByCategory(String category) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);
            Root<Product> pro = query.from(Product.class);

            query.select(pro).where(builder.like(pro.get("CategoryCode"),category));

            Query<Product> q = session.createQuery(query);
            List<Product> result = q.getResultList();

            return result;
        }
	}

	@Override
	public List<Product> getByCategory_Brand(String category, String brand) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Product> query = builder.createQuery(Product.class);

            Root<Product> pr = query.from(Product.class);
            Predicate _category = builder.like(pr.get("CategoryCode") , category);
            Predicate _brand = builder.like(pr.get("BrandCode") , brand);

            query.select(pr).where(builder.and(_category,_brand));

            Query<Product> q = session.createQuery(query);
            List<Product> result = q.getResultList();

            if(result.size() > 0)
                return result;
            else
                return null;
        }
	}
}
