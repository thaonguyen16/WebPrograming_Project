package model;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "account")
public class Account implements Serializable
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    private String Username;
    private String Password;
    private String FullName;
    private String Address;

    private Date Birthdate;
    private String Phone;
    private String Email;
    private String Role;
    private String Gender;

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public int getID()
    {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public Date getBirthdate() {
        return Birthdate;
    }

    public void setBirthdate(Date birthdate) {
        Birthdate = birthdate;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public String getRole() {
        return Role;
    }

    public Account(int ID, String username, String password, String fullName, String address, Date birthdate, String phone, String email, String role, String gender) {
        super();
        this.ID = ID;
        Username = username;
        Password = password;
        FullName = fullName;
        Address = address;
        Birthdate = birthdate;
        Phone = phone;
        Email = email;
        Role = role;
        Gender = gender;
    }

    public void setRole(String role) {
        Role = role;
    }

    public Account()
    {
        super();
    }

}

