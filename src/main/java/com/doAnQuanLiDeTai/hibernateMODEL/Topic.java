package com.doAnQuanLiDeTai.hibernateMODEL;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "topic")
public class Topic implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "name_topic")
    private String nameTopic;
    private String target;
    private int number;
    private String status;

    private int rate;

    @ManyToOne (fetch = FetchType.EAGER)
    @JoinColumn(name = "typeid")
    private TypeOfTopic type;

    @ManyToOne
    @JoinColumn(name = "create_userid")
    private User usercreate;

    @OneToMany(mappedBy = "topicRegis",fetch = FetchType.EAGER, cascade= CascadeType.ALL)
    private Set<User> users;

    private Timestamp createddate;
    private Timestamp modifieddate;
    private String createdby;
    private String modifiedby;

    public User getUsercreate() {
        return usercreate;
    }

    public void setUsercreate(User usercreate) {
        this.usercreate = usercreate;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNameTopic() {
        return nameTopic;
    }

    public void setNameTopic(String nameTopic) {
        this.nameTopic = nameTopic;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public TypeOfTopic getType() {
        return type;
    }

    public void setType(TypeOfTopic type) {
        this.type = type;
    }


    public Timestamp getCreateddate() {
        return createddate;
    }

    public void setCreateddate(Timestamp createddate) {
        this.createddate = createddate;
    }

    public Timestamp getModifieddate() {
        return modifieddate;
    }

    public void setModifieddate(Timestamp modifieddate) {
        this.modifieddate = modifieddate;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public String getModifiedby() {
        return modifiedby;
    }

    public void setModifiedby(String modifiedby) {
        this.modifiedby = modifiedby;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }
}
