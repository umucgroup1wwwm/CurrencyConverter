package CurrencyApp.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity(name = "currencyuser_tb")
public class CurrencyUser implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idcurrencyuser;
    private String fname;
    private String lname;
    private String email;
    private String passwd;
    private String currencytype;
    private double accountbalance;

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getCurrencytype() {
        return currencytype;
    }

    public void setCurrencytype(String currencytype) {
        this.currencytype = currencytype;
    }

    public double getAccountbalance() {
        return accountbalance;
    }

    public void setAccountbalance(double accountbalance) {
        this.accountbalance = accountbalance;
    }



    public CurrencyUser() {
    }

     public CurrencyUser(String fname, String lname, String email,  String passwd,String currencytype,int accountbalance) {
        super();
        this.fname = fname;
        this.lname  = lname;
        this.email = email;
        this.passwd = passwd;
        this.currencytype = currencytype;
        this.accountbalance = accountbalance;


    }

    public int getIdcurrencyuser() {
        return idcurrencyuser;
    }

    public void setIdcurrencyuser(int idcurrencyuser) {
        this.idcurrencyuser = idcurrencyuser;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }


    @Override
    public String toString() {
        return "CurrencyUser [idcurrencyuser=" + idcurrencyuser + " fname=" + fname + " lname=" + lname + " Email   =" +  email
                + " password=" + passwd +"currencytype"+currencytype+"accountbalance"+accountbalance+ "]";

    }

}
