package com.doAnQuanLiDeTai.utils;

import java.lang.reflect.InvocationTargetException;
import java.nio.charset.StandardCharsets;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

public class FormUtil {

    @SuppressWarnings("unchecked")
    public static <T> T toModel(Class<T> clazz, HttpServletRequest request) {
        T object = null;
        try {
            object = clazz.getDeclaredConstructor().newInstance();
            BeanUtils.populate(object, request.getParameterMap());
        } catch (InstantiationException | IllegalAccessException | InvocationTargetException |NoSuchMethodException e) {
            System.out.print(e.getMessage());
        }
        return object;
    }
    public static String parseStringUTF8(String obj){
        byte[] bytes = obj.getBytes(StandardCharsets.ISO_8859_1);
        obj = new String(bytes, StandardCharsets.UTF_8);
        return obj;
    }
}
