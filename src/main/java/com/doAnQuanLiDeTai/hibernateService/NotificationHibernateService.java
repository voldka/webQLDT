package com.doAnQuanLiDeTai.hibernateService;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.Role;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.utils.HibernateUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NotificationHibernateService {

    public static List<Notification> findAll() {
        List<Notification> result = new ArrayList<Notification>();
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try(Session session=factory.openSession()){
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Notification> query = builder.createQuery(Notification.class);
            Root<Notification> root = query.from(Notification.class);
            query.select(root);

            Query<Notification> q = session.createQuery(query);

            result = q.getResultList();
            return result;
        }
        finally {
            if (result.isEmpty()){
                return null;
            }
        }
    }
    public static void addNewNotificate(User user,String title, String content){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try(Session session=factory.openSession()) {
            session.getTransaction().begin();

            Notification notification = new Notification();
            notification.setTitle(title);
            notification.setContent(content);
            notification.setUser(user);
            Date date = new Date();
            notification.setCreateddate(new Timestamp(date.getTime()));
            notification.setCreatedby(user.getUsername());
            session.save(notification);
            session.getTransaction().commit();
        }
    }
    public static void deleteNotificat(long notificationId){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try(Session session=factory.openSession()) {
            session.getTransaction().begin();

            Notification notification = new Notification();
            notification.setId(notificationId);
            session.delete(notification);
            session.getTransaction().commit();
        }
    }
}
