package ${basePackage}.service.impl.${sign};

import com.yonyou.dcs.common.bean.ElemBean;
import com.yonyou.dmsgms.framework.DAO.PageInfoDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ${modelNameUpperCamel}Impl{

    @Autowired
    private ${modelNameUpperCamel}Dao ${modelNameLowerCamel}Dao;
	
    /**
	 *    初始化数据
	 * @param condition
	 * @return
	 */
    public PageInfoDto getPageInfo(ElemBean condition) {
		
		return ${modelNameLowerCamel}Dao.getPageInfo(condition);
	}

	/**
	*    获取明细
	* @param condition
	* @return
	*/
	public Map getInfoById(ElemBean condition) {

		return ${modelNameLowerCamel}Dao.getInfoById(condition);
	}

	/**
	*  新增
	* @param condition
	*/
	public void add(ElemBean condition) {

	}

	 /**
	 *  修改数据
	 * @param condition
	 */ 
	public void modify(ElemBean condition) {

	}
}
