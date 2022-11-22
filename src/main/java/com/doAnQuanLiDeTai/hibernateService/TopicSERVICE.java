package com.doAnQuanLiDeTai.hibernateService;

import com.doAnQuanLiDeTai.hibernateMODEL.Notification;
import com.doAnQuanLiDeTai.hibernateMODEL.Topic;
import com.doAnQuanLiDeTai.hibernateMODEL.TypeOfTopic;
import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.utils.HibernateUtil;
import com.doAnQuanLiDeTai.utils.SessionUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.annotations.Where;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
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
    public static void deleteTypeOfTopic(long TypeOfTopicId){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try (Session session = factory.openSession()) {
            session.getTransaction().begin();

            TypeOfTopic typeOfTopic = new TypeOfTopic();
            typeOfTopic.setId(TypeOfTopicId);

            session.delete(typeOfTopic);
            session.getTransaction().commit();
        }
    }
    public static void addNewTypeOfTopic(String name,User user){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try(Session session= factory.openSession()) {
            session.getTransaction().begin();
            TypeOfTopic typeOfTopic = new TypeOfTopic();
            typeOfTopic.setName(name);
            Date date =new Date();
            typeOfTopic.setCreateddate(new Timestamp(date.getTime()));
            typeOfTopic.setCreatedby(user.getUsername());
            session.save(typeOfTopic);
            session.getTransaction().commit();
        }
    }
    public static void findTypeOfTopicById(long id){

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

    public static  void addTopic(long typeId, String name, String target, int number, String status, int rate, User user){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try(Session session = factory.openSession()){
            session.getTransaction().begin();

            Topic topic = new Topic();
            topic.setNameTopic(name);
            topic.setTarget(target);
            topic.setNumber(number);
            topic.setStatus(status);
            topic.setRate(rate);
            TypeOfTopic type = new TypeOfTopic();
            type.setId(typeId);
            topic.setType(type);
            topic.setUsercreate(user);
            Date date = new Date();
            topic.setCreateddate((new Timestamp(date.getTime())));
            topic.setCreatedby(user.getUsername());

            session.save(topic);
            session.getTransaction().commit();
        }
    }
    public static void deleteTopic(long topicId){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try (Session session = factory.openSession()) {
            session.getTransaction().begin();

            Topic topic = new Topic();
            topic.setId(topicId);

            session.delete(topic);
            session.getTransaction().commit();
        }
    }
    public static List<Topic> findAllTopicOfType(long typeId){
        List<Topic> result = new ArrayList<Topic>();
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try (Session session = factory.openSession()) {
            Query q = session.createQuery("from Topic A " + "where A.type.id=:loc");
            q.setParameter("loc",typeId);
            result =q.getResultList();
            return result;
        } finally {
            if (result.isEmpty()) {
                return null;
            }
        }
    }
    public static Topic findTopicById (long id){
        Topic result = new Topic();
        SessionFactory factory = HibernateUtil.getSessionFactory();
        try (Session session = factory.openSession()) {
            Query q = session.createQuery("from Topic A " + "where A.id=:loc");
            q.setParameter("loc",id);
            result = (Topic) q.getSingleResult();
            return result;
        } finally {
            if (result==null) {
                return null;
            }
        }
    }

//    public static List<Topic> findTopicByIdPlus(long id){
//        List<Topic> result = new ArrayList<>();
//        SessionFactory factory = HibernateUtil.getSessionFactory();
//        try (Session session = factory.openSession()) {
//            Topic model = findTopicById(id);
//            Query q = session.createQuery("from Topic A " + "where A.nameTopic=:nameTopic");
//            return result;
//        } finally {
//            if (result==null) {
//                return null;
//            }
//        }
//    }
    public static int regisTopic(long id,User user) {
        Topic topic = findTopicById(id);
        SessionFactory factory = HibernateUtil.getSessionFactory();
        if(user.getTopicRegis() == null){
            try (Session session = factory.openSession()) {
                int number = topic.getNumber();
                if (number < 3) {
                    session.getTransaction().begin();
                    topic.setNumber(number+1);
                    session.update(topic);
                    session.getTransaction().commit();

                    session.getTransaction().begin();
                    user.setTopicRegis(topic);
                    session.update(user);
                    session.getTransaction().commit();
                    return 1;
                } else {
                    return 2;
                }
            }
        }
        else{
            return 3;
        }
    }
}

