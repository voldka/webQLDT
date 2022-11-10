package com.doAnQuanLiDeTai.hibernateService;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.Role;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

public class UserSERVICE {
    public static User findUser(String username,String password){
        User user = new User();
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try(Session session=factory.openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<User> query = builder.createQuery(User.class);
            Root<User> root = query.from(User.class);
            query.select(root);

            Predicate p1 = builder.like(root.get("username").as(String.class),username);
            Predicate p2 = builder.like(root.get("password").as(String.class),password);
            query.where(builder.and(p1,p2));

            Query<User> q = session.createQuery(query);

            user = q.getSingleResult();
            return user;
        }finally {
            if (user.getId() == 0){
                return null;
            }
        }
    }
    public static void addUser(String username,String password,String fullName,long roleId){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try(Session session= factory.openSession()){
            session.getTransaction().begin();
            Role role = session.get(Role.class,roleId);

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setFullname(fullName);
            user.setStatus(roleId);

            user.setRole(role);
            session.save(user);
            session.getTransaction().commit();
        }
    }
}
