package com.codegen.service.impl;


import com.codegen.service.CodeGenerator;
import com.codegen.service.CodeGeneratorManager;
import com.codegen.util.StringUtils;
import freemarker.template.Configuration;

import java.io.File;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.Map;

public class DtoGenerator extends CodeGeneratorManager implements CodeGenerator {

    @Override
    public void genCode(String tableName, String modelName, String sign) {
        Configuration cfg = getFreemarkerConfiguration();
        String customMapping = "/" + sign + "/";
        String modelNameUpperCamel = StringUtils.isNullOrEmpty(modelName) ? tableNameConvertUpperCamel(tableName) : modelName;

        Map<String, Object> data = getDataMapInit(modelName, sign, modelNameUpperCamel);
        try {

            // 创建 Service 接口的实现类
            File dtoFile = new File(PROJECT_PATH + JAVA_PATH + PACKAGE_PATH_BASE + PACKAGE_PATH_DTO + modelNameUpperCamel + "Dto.java");
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
    private Map<String, Object> getDataMapInit(String modelName, String sign, String modelNameUpperCamel) {
        Map<String, Object> data = new HashMap<>();
        data.put("date", DATE);
        data.put("author", AUTHOR);
        data.put("sign", sign);
        data.put("modelNameUpperCamel", modelNameUpperCamel);
        data.put("modelNameLowerCamel", StringUtils.toLowerCaseFirstOne(modelNameUpperCamel));
        data.put("basePackage", BASE_PACKAGE);

        return data;
    }
}
