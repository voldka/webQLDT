package com.doAnQuanLiDeTai.model;

import java.sql.Timestamp;
import java.util.List;

public class NotificationModel extends AbstractModel<NotificationModel> {

    private String title;
    private String content;
    private long teacherid;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public long getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(long teacherid) {
        this.teacherid = teacherid;
    }
}
