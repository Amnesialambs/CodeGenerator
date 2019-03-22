package ${basePackage}.dao.${sign};

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * Created by ${author} on ${date}.
 */
@Repository
public class ${modelNameUpperCamel}Dao{

  
    /**
	 *    初始化数据
	 * @param dto
	 * @return
	 */
    public PageInfoDto getPageInfo(${modelNameUpperCamel}Dto dto) {
			
		 StringBuffer query = new StringBuffer();
		 List<Object> queryParam = new ArrayList<Object>();
		 getSql(query,queryParam,dto);
		 return DcsDaoUtil.pageQuery(query.toString(), queryParam);
	 }
	 
	 public void getSql(StringBuffer query,List<Object> queryParam,${modelNameUpperCamel}Dto dto) {
		 
		 getSqlWhere(query,queryParam,dto);
	 }
	 
     public void getSqlWhere(StringBuffer query,List<Object> queryParam,${modelNameUpperCamel}Dto dto) {
		 
	 }
}
