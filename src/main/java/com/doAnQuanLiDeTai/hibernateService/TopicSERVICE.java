package com.doAnQuanLiDeTai.hibernateService;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.TypeOfTopic;
import com.doAnQuanLiDeTai.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class TopicSERVICE {
    public static List<TypeOfTopic> findAllTypeOfTopic() {
        List<TypeOfTopic> result = new ArrayList<TypeOfTopic>();
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try (Session session = factory.openSession()) {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<TypeOfTopic> query = builder.createQuery(TypeOfTopic.class);
            Root<TypeOfTopic> root = query.from(TypeOfTopic.class);
            query.select(root);

            Query<TypeOfTopic> q = session.createQuery(query);
            result = q.getResultList();
            return result;
        } finally {
            if (result.isEmpty()) {
                return null;
            }
        }
    }

    public static int getTotalType() {
        int result = 0;
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try (Session session = factory.openSession()) {
            CriteriaBuilder builder = factory.getCriteriaBuilder();
            CriteriaQuery<TypeOfTopic> query = builder.createQuery(TypeOfTopic.class);
            Root<TypeOfTopic> root = query.from(TypeOfTopic.class);
            query.select(root);
            Query<TypeOfTopic> q = session.createQuery(query);

            result = q.getResultList().size();
            return result;
        } finally {
            if (result == 0) {
                return result;
            }
        }
    }
}
