package com.doAnQuanLiDeTai.utils;

import com.doAnQuanLiDeTai.hibernateMODEL.*;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;

public class HibernateUtil {
    private final static SessionFactory FACTORY;

    // khối khởi động tỉnh chỉ nạp một lần duy nhất khi lớp được nạp lần đầu tiên
    static {
        Configuration conf = new Configuration();

        Properties pros = new Properties();

        pros.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect");
        pros.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
        pros.put(Environment.URL, "jdbc:mysql://remotemysql.com:3306/xYzAsjsbvM");
        pros.put(Environment.USER, "xYzAsjsbvM");
        pros.put(Environment.PASS, "C7XDlXYnDA");
        conf.setProperties(pros);

        conf.addAnnotatedClass(Role.class);
        conf.addAnnotatedClass(User.class);
        conf.addAnnotatedClass(Notification.class);
        conf.addAnnotatedClass(Topic.class);
        conf.addAnnotatedClass(TypeOfTopic.class);
        conf.addAnnotatedClass(Comment.class);

        ServiceRegistry registry = new StandardServiceRegistryBuilder().applySettings(conf.getProperties()).build();
        FACTORY = conf.buildSessionFactory();
    }

    public static SessionFactory getSessionFactory() {
        return FACTORY;
    }

}
