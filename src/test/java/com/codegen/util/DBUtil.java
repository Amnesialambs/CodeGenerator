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
    private static PreparedStatement preparedStatement = null;

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

    private static PreparedStatement getStatement(){

        try {
            preparedStatement = (PreparedStatement) conn.createStatement();

        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return preparedStatement;
    }

    public static List<Map<String,String>> find(String sql, List<Object> queryParam){

        List<Map<String,String>> resultList = new ArrayList<>();
        ResultSet resultSet = null;
        try {
            resultSet = preparedStatement.executeQuery(sql);
            ResultSetMetaData metaData = resultSet.getMetaData();
            String[] columns = getColumns(metaData);
            while (resultSet.next()){
                Map<String,String> map = new HashMap<>();
                for (String column : columns){
                    String columnVal = resultSet.getString(column);
                    map.put(column,columnVal);
                }
                resultList.add(map);
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return resultList;
    }

    public static String[] getColumnsBySql(String sql, List<Object> queryParam){
        String[] columns = null;
        try {
            ResultSet resultSet = preparedStatement.executeQuery(sql);
            ResultSetMetaData metaData = resultSet.getMetaData();
            columns = getColumns(metaData);
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return columns;
    }

    private static String[] getColumns(ResultSetMetaData metaData){
        String[] columns = null;
        try {
            int num = metaData.getColumnCount();
            columns = new String[num];
            for (int i = 0; i < num; i++){
                String column = metaData.getColumnName(i);
                columns[i] = column;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return columns;
    }

    public static void main(String[] args) {
    }
}
