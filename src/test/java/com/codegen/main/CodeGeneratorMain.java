package com.codegen.main;

import com.codegen.service.CodeGeneratorManager;

/**
 * 代码生成器启动项
 * Created by zhh on 2017/09/20.
 */
public class CodeGeneratorMain {
	
<<<<<<< HEAD
	private static final String TABLE = "tm_industry_commissioned_model";
	
	private static final String MODEL_NAME = "IndustryCommissionedModel";
=======
	private static final String TABLE = "tm_external_change_box_certificate_apply";
	
	private static final String MODEL_NAME = "ExternalChangeBoxCertificateApplyMng";
>>>>>>> 6888635b9cf0c8668db6f55ffda0ad216c7b1da8
	
	private static final String[] TABLES = {
			"tt_fl_car_remove"
	};
	
	/**
	 * 说明:
	 * 以表名 gen_test_demo 为例子, 主要是以下几种情况:
	 * 		1. gen_test_demo ==> Demo 可以传入多表
	 * 		genCodeWithSimpleName("gen_test_demo");
	 * 		
	 * 		2. gen_test_demo ==> GenTestDemo 可以传入多表
	 * 		genCodeWithDetailName("gen_test_demo");
	 * 
	 * 		3. gen_test_demo ==> IDemo 自定义名称
	 * 		genCodeWithCustomName("gen_test_demo", "IDemo");
	 */
	public static void main(String[] args) {
		CodeGeneratorManager cgm = new CodeGeneratorManager();
		
//	 	cgm.genCodeWithSimpleName(TABLE);
		
//		cgm.genCodeWithDetailName(TABLES);
		
		cgm.genCodeWithCustomName(TABLE, MODEL_NAME);
	}
}
