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
		
		return ${modelNameLowerCamel}Dao.getPageInfo(dto);
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
<<<<<<< HEAD

=======
		
		
		
>>>>>>> 6888635b9cf0c8668db6f55ffda0ad216c7b1da8
	}
}
