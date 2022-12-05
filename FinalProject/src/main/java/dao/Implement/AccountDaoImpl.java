package dao.Implement;

import dao.AccountDao;
import hibernate.HibernateUtil;
import model.Account;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.persistence.criteria.*;
import java.util.List;

public class AccountDaoImpl implements AccountDao
{

    @Override
    public Account get(String phone, String password)
    {
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Account> query = builder.createQuery(Account.class);

            Root<Account> ac = query.from(Account.class);
            Predicate user_name = builder.like(ac.get("Phone") , phone);
            Predicate pass_word = builder.like(ac.get("Password") , password);

            query.select(ac).where(builder.and(user_name,pass_word));

            Query<Account> q = session.createQuery(query);
            List<Account> result = q.getResultList();

            if(result.size() > 0)
                return result.get(0);
            else
                return null;
        }
    }

    @Override
    public Account get_by_id(int id) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Account> query = builder.createQuery(Account.class);
            Root<Account> ac = query.from(Account.class);

            query.select(ac).where(builder.equal(ac.get("ID"),id));

            Query<Account> q = session.createQuery(query);
            List<Account> result = q.getResultList();

            return result.get(0);
        }
    }

    @Override
    public List<Account> get_all_account()
    {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Account> query = builder.createQuery(Account.class);
            Root<Account> ac = query.from(Account.class);

            query.select(ac);

            Query<Account> q = session.createQuery(query);

            return q.getResultList();
        }
    }

    @Override
    public List<Account> get_all_guest() {
        return null;
    }

    @Override
    public List<Account> get_all_admin() {
        return null;
    }

    @Override
    public void insert(Account account) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(account);
            transaction.commit();
        }
    }

    @Override
    public void edit(Account account)
    {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(account);
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
    public void delete(String username) {
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            Account account = session.get(Account.class,username);

            if(account!=null)
            {
                session.delete(account);
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
    public int check_username(String username)
    {
        List<Account> result;
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Account> query = builder.createQuery(Account.class);
            Root<Account> ac = query.from(Account.class);

            query.select(ac).where(builder.like(ac.get("Username"),username));

            Query<Account> q = session.createQuery(query);
            result = q.getResultList();
        }

        if(result.size() > 0)
            return 1;
        else
            return 0;
    }

    @Override
    public int check_phone(String phone)
    {
        List<Account> result;
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Account> query = builder.createQuery(Account.class);
            Root<Account> ac = query.from(Account.class);

            query.select(ac).where(builder.like(ac.get("Phone"),phone));

            Query<Account> q = session.createQuery(query);
            result = q.getResultList();
        }

        if(result.size() > 0)
            return 1;
        else
            return 0;
    }
    @Override
    public int check_mail(String mail)
    {
        List<Account> result;
        try(Session session = HibernateUtil.getSessionFactory().openSession())
        {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Account> query = builder.createQuery(Account.class);
            Root<Account> ac = query.from(Account.class);

            query.select(ac).where(builder.like(ac.get("Email"),mail));

            Query<Account> q = session.createQuery(query);
            result = q.getResultList();
        }

        if(result.size() > 0)
            return 1;
        else
            return 0;
    }


}

