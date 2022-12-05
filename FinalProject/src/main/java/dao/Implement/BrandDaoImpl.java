package dao.Implement;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.query.Query;

import dao.BrandDao;
import hibernate.HibernateUtil;
import model.Brand;


public class BrandDaoImpl implements BrandDao{

	@Override
    public List<Brand> get_all()
    {
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Brand> query = builder.createQuery(Brand.class);
            Root<Brand> brand = query.from(Brand.class);

            query.select(brand);

            Query<Brand> q = session.createQuery(query);

            return q.getResultList();
        }
    }

	@Override
	public List<Brand> get_brand_by_category(String category_code) {
		// TODO Auto-generated method stub
		try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Brand> query = builder.createQuery(Brand.class);
            Root<Brand> brand = query.from(Brand.class);
            
            query.select(brand).where(builder.like(brand.get("CategoryCode"),category_code));

            Query<Brand> q = session.createQuery(query);

            return q.getResultList();
        }
	}
}
