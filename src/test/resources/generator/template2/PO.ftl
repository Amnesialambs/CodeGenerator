package ${basePackage}.po;

import org.javalite.activejdbc.annotations.IdName;
import org.javalite.activejdbc.annotations.Table;

import com.yonyou.dcs.common.po.DcsBaseModel;

@Table("${tableName}")
@IdName("ID")
public class ${modelNameUpperCamel}PO extends DcsBaseModel {

}
