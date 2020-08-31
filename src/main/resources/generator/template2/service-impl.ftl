package ${basePackage}.service.impl.${sign};

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * Created by ${author} on ${date}.
 */
@Service
public class ${modelNameUpperCamel}Impl{

    @Autowired
    private ${modelNameUpperCamel}Dao ${modelNameLowerCamel}Dao;

    @Autowired
	private POUtil poUtil;
	
    /**
	 *    初始化数据
	 * @param dto
	 * @return
	 */
    public PageInfoDto getPageInfo(ElemBean condition) {
		
		return ${modelNameLowerCamel}Dao.getPageInfo(dto);
	}
	
	 /**
	 *  修改数据
	 * @param dto
	 */ 
	public void modify(ElemBean condition) {
		
		
		
	}
}
