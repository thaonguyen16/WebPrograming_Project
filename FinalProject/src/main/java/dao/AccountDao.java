package dao;

import model.Account;

import java.util.List;

public interface AccountDao
{
    Account get(String username, String password);
    Account get_by_id(int id);
    Account getByEmail(String email);
    
    List<Account> get_all_account();
    List<Account> get_all_guest();
    List<Account> get_all_admin();
    
    void insert(Account account);
    void edit(Account account);
    void delete(String username);
    int check_username(String username);
    int check_phone(String phone);
    int check_mail(String email);
}
