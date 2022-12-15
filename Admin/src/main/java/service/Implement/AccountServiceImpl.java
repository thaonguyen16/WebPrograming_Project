package service.Implement;

import dao.AccountDao;
import dao.Implement.AccountDaoImpl;
import model.Account;
import service.AccountService;

import java.util.List;

public class AccountServiceImpl implements AccountService {

    AccountDao dao = new AccountDaoImpl();
    @Override
    public Account get(String username, String password) {
        return dao.get(username, password);
    }

    @Override
    public Account get_by_id(int id) {
        return dao.get_by_id(id);
    }

    @Override
    public List<Account> get_all_account() {
        return dao.get_all_account();
    }

    @Override
    public List<Account> get_all_guest() {
        return dao.get_all_guest();
    }

    @Override
    public List<Account> get_all_admin() {
        return dao.get_all_admin();
    }

    @Override
    public void insert(Account account)
    {
        dao.insert(account);
    }

    @Override
    public void edit(Account account) {
        dao.edit(account);
    }

    @Override
    public void delete(String username) {
        dao.delete(username);
    }

    @Override
    public int check_username(String username) {
        return dao.check_username(username);
    }

    @Override
    public int check_phone(String phone) {
        return dao.check_phone(phone);
    }

    @Override
    public int check_mail(String mail) {
        return dao.check_mail(mail);
    }

	@Override
	public Account getByEmail(String email, String password) {
		// TODO Auto-generated method stub
		return dao.getByEmail(email, password);
	}
}

