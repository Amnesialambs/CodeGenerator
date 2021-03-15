package com.codegen.service.impl;


import com.codegen.service.CodeGenerator;
import com.codegen.service.CodeGeneratorManager;
import com.codegen.util.DBUtil;
import com.codegen.util.StringUtils;
import freemarker.template.Configuration;

import java.io.File;
import java.io.FileWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DtoGenerator extends CodeGeneratorManager implements CodeGenerator {

    @Override
    public void genCode(String tableName, String modelName, String sign) {

        Configuration cfg = getFreemarkerConfiguration();
        String customMapping = "/" + sign + "/";
        String modelNameUpperCamel = StringUtils.isNullOrEmpty(modelName) ? tableNameConvertUpperCamel(tableName) : modelName;
        List<Object> queryParam = new ArrayList<>();
        String sql = "    select column_name,data_type,column_comment from information_schema.columns where table_name = ? and table_schema = ? ";
        queryParam.add(tableName);
        List<Map<String, String>> columnType = DBUtil.getColumnTypeSql(sql,queryParam);
       // Map<String, Object> data = getDataMapInit(modelName, sign, modelNameUpperCamel);
        Map<String, Object> data = getDataMapInit(modelName, sign, modelNameUpperCamel,columnType);
        try {

            // 创建 Service 接口的实现类
            File dtoFile = new File(OUTFILE_PROJECT_PATH + JAVA_PATH + PACKAGE_PATH_BASE + PACKAGE_PATH_DTO + modelNameUpperCamel + "Dto.java");
            // 查看父级目录是否存在, 不存在则创建

            if (!dtoFile.getParentFile().exists()) {
                dtoFile.getParentFile().mkdirs();
            }
            cfg.getTemplate("dto.ftl").process(data, new FileWriter(dtoFile));
            logger.info(modelNameUpperCamel + "dto.java 生成成功!");
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("dto 生成失败!", e);
        }
    }

    /**
     * 预置页面所需数据
     * @param
     * @param modelName 自定义实体类名, 为null则默认将表名下划线转成大驼峰形式
     * @param sign 区分字段, 规定如表 gen_test_demo, 则 test 即为区分字段
     * @param modelNameUpperCamel 首字为大写的实体类名
     * @return
     */
    private Map<String, Object> getDataMapInit(String modelName, String sign, String modelNameUpperCamel,List<Map<String, String>> columnTypes) {
        Map<String, Object> data = new HashMap<>();
        data.put("date", DATE);
        data.put("author", AUTHOR);
        data.put("sign", sign);
        data.put("modelNameUpperCamel", modelNameUpperCamel);
        data.put("modelNameLowerCamel", StringUtils.toLowerCaseFirstOne(modelNameUpperCamel));
        data.put("basePackage", BASE_PACKAGE);
        data.put("columns", paresMap(columnTypes));

        return data;
    }

    private static String paresMap(List<Map<String, String>> columnTypes)  {

        StringBuilder stringBuilder = new StringBuilder();
        for (Map<String, String> columnType:columnTypes){
            //column_name,data_type,column_comment
            String columnName = columnType.get("COLUMN_NAME");
            String dataType = columnType.get("DATA_TYPE");
            String columnComment = columnType.get("COLUMN_COMMENT");
            stringBuilder.append("\tprivate ").append(StringUtils.changeType(dataType)).append(" ").append(StringUtils.underScoreCase2CamelCase(columnName)).append(" ;//").append(columnComment).append(" \n");

        }

        return stringBuilder.toString();
    }
}
