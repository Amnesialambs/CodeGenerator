package ${basePackage}.web.controller.${sign};
import ${basePackage}.model.${sign}.${modelNameUpperCamel};
import ${basePackage}.service.${sign}.${modelNameUpperCamel}Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 *
 * Created by ${author} on ${date}.
 */
@Controller
@RequestMapping("/${baseRequestMapping}/")
public class ${modelNameUpperCamel}Controller {

    @Autowired
    ${modelNameUpperCamel}Impl ${modelNameLowerCamel}Impl;

    /**
	 *    初始化数据
	 * @param dto
	 * @return
	 */
	@RequestMapping(method=RequestMethod.GET)
    @ResponseBody
	public PageInfoDto getPageInfo(@RequestParam ${modelNameLowerCamel}Dto dto) {
		
		return ${modelNameLowerCamel}Impl.getPageInfo(dto);
	}

    /**
	 *  修改数据
	 * @param dto
	 */
	@RequestMapping(method=RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	public void modify${modelNameUpperCamel}(@RequestBody ${modelNameUpperCamel}Dto dto) {
		
		${modelNameLowerCamel}Impl.modify${modelNameUpperCamel}(dto);
	}

}
