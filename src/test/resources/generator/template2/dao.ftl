package ${basePackage}.dao.${sign};

import com.yonyou.dcs.common.bean.ElemBean;
import com.yonyou.dcs.common.util.DcsDaoUtil;
import com.yonyou.dmsgms.framework.DAO.PageInfoDto;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;
import java.util.List;


@Repository
public class ${modelNameUpperCamel}Dao {

  
    /**
	 *    初始化数据
	 * @param condition
	 * @return
	 */
    public PageInfoDto getPageInfo(ElemBean condition) {
			
		 StringBuffer query = new StringBuffer();
		 List<Object> queryParam = new ArrayList<Object>();
		 getSql(query,queryParam,condition);
		 return DcsDaoUtil.pageQuery(query.toString(), queryParam);
	 }
	 
	 public void getSql(StringBuffer query,List<Object> queryParam,ElemBean condition) {
		 
		 getSqlWhere(query,queryParam,condition);
	 }
	 
     public void getSqlWhere(StringBuffer query,List<Object> queryParam,ElemBean condition) {
		 
	 }
}
