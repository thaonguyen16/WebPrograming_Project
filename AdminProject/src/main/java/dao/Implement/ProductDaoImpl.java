package dao.Implement;

import dao.ProductDao;
import hibernate.HibernateUtil;
import model.Product;
import org.hibernate.Session;
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
            Root<Product> category = query.from(Product.class);

            query.select(category);
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
}
