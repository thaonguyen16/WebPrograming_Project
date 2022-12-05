package dao.Implement;

import dao.CategoryDao;
import hibernate.HibernateUtil;
import model.Category;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class CategoryDaoImpl implements CategoryDao
{

    @Override
    public List<Category> get_all()
    {
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Category> query = builder.createQuery(Category.class);
            Root<Category> category = query.from(Category.class);

            query.select(category);

            Query<Category> q = session.createQuery(query);

            return q.getResultList();
        }
    }

    @Override
    public Category get_by_id(int id) {
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Category> query = builder.createQuery(Category.class);
            Root<Category> category = query.from(Category.class);

            query.select(category).where(builder.equal(category.get("ID"),id));

            Query<Category> q = session.createQuery(query);

            if(q.getResultList().size() > 0)
                return q.getResultList().get(0);
            else
                return null;
        }
    }

    @Override
    public void insert(Category category) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(category);
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
    public void update(Category category)
    {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(category);
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
            Category category = session.get(Category.class,id);

            if(category!=null)
            {
                session.delete(category);
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
        return get_all().size();
    }
}
