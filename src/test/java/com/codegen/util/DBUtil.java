package com.codegen.util;

import com.codegen.service.CodeGeneratorManager;


import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBUtil  extends CodeGeneratorManager {

    private static String url ;
    private static String userName ;
    private static String passWord ;
    private static Connection conn = null;
    private static Statement statement;

    static{
        url = JDBC_URL;
        userName = JDBC_USERNAME;
        passWord = JDBC_PASSWORD;
        loadDriver();
        getConnection();
        getStatement();
    }

    private static void loadDriver(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private static Connection getConnection(){

        try {
            conn  =  DriverManager.getConnection(url,  userName,  passWord);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return conn;
    }

    private static Statement getStatement(){

        try {
            statement = (Statement) conn.createStatement();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return statement;
    }

    public static List<Map<String,String>> find(String sql, List<Object> queryParam){

        List<Map<String,String>> resultList = new ArrayList<>();
        ResultSet resultSet = null;
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            ResultSetMetaData metaData = resultSet.getMetaData();
            String[] columns = getColumns(metaData);
            while (resultSet.next()){
                Map<String,String> map = new HashMap<>();
                for (String column : columns){
                    String columnVal = resultSet.getString(column);
                    logger.info(column);
                    map.put(column,columnVal);
                }
                resultList.add(map);
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return resultList;
    }

    private static String[] getColumns(ResultSetMetaData metaData){
        String[] columns = null;
        try {
            int num = metaData.getColumnCount();
            columns = new String[num];
            for (int i = 1; i < num; i++){

                String column = metaData.getColumnName(i);
         //       logger.info(column);
                columns[i] = column;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return columns;
    }

    public static List<Map<String, String>> getColumnTypeSql(String sql, List<Object> queryParam){

        List<Map<String, String>> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            queryParam.add(conn.getCatalog());
            // 填充sql语句中的占位符
            int index = 1;
            if(queryParam != null && !queryParam.isEmpty()) {
                for(int i = 0; i < queryParam.size(); i++) {
                    preparedStatement.setObject(index++, queryParam.get(i));
                }
            }
            ResultSet resultSet = preparedStatement.executeQuery();
            ResultSetMetaData metaData = resultSet.getMetaData();
            int cols_len = metaData.getColumnCount();
            while (resultSet.next()){
                Map<String, String> map = new HashMap<>();
                for(int i = 0; i < cols_len; i++) {
                    String cols_name = metaData.getColumnName(i + 1);
                    String cols_value = resultSet.getString(cols_name);
                    if (cols_value == null) {
                        cols_value = "";
                    }
                    map.put(cols_name, cols_value);
                }
                list.add(map);
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return list;
    }


    public static void main(String[] args) {
    }
}
