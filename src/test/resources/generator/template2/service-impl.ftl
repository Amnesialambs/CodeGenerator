package ${basePackage}.service.impl.${sign};

import ${basePackage}.dao.mapper.${sign}.${modelNameUpperCamel}Mapper;
import ${basePackage}.model.${sign}.${modelNameUpperCamel};
import ${basePackage}.service.${sign}.${modelNameUpperCamel}Service;
import ${basePackage}.service.AbstractService;
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
    public PageInfoDto getPageInfo(${modelNameLowerCamel}Dto dto) {
		
		return ${modelNameLowerCamel}Dao.getPageInfo(dto);
	}
	
	 /**
	 *  修改数据
	 * @param dto
	 */ 
	public void modifyRemittance(@RequestBody ttVsRemittanceDto dto) {
		
		TtVsRemittancePO po = TtVsRemittancePO.findById(dto.getRemittanceId());
		if(StringUtils.checkNull(po)) {
			po = new TtVsRemittancePO();
		}
		try {
			poUtil.copyToPO(dto, po);
		} catch (Exception e) {
			throw new ServiceBizException("dto转po报错，请联系管理员");
		}
		po.saveIt();
		
	}
}
