package hcmute.edu.vn.webexercise13v2.chapter13.ex1.data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("murachjpa");
    
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}