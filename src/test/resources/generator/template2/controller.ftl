package ${basePackage}.action.${sign};

import com.yonyou.dcs.common.bean.ElemBean;
import com.yonyou.dmsgms.framework.DAO.PageInfoDto;
import com.yonyou.f4.mvc.annotation.TxnConn;
import com.yonyou.f4.mvc.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


/**
* Copyright: Copyright (c)
* @description
*               该类的功能描述
* @author ${author}
* @date ${date}
* @version v1.0.0
*
* Modification History:
* Date         Author          Version            Description
*-------------------------------------------------------------*
* ${date}    ${author}          v1.0.0             修改原因
*/
/**
 *
 * Created by  on .
 */
@Controller
@TxnConn
@RequestMapping("/${modelNameUpperCamel}Mng")
public class ${modelNameUpperCamel}Mng extends BaseController {

    @Autowired
    private ${modelNameUpperCamel}Impl ${modelNameLowerCamel}Impl;

    /**
	 *    初始化数据
	 * @param queryParam
	 * @return
	 */
	@RequestMapping(method=RequestMethod.GET)
    @ResponseBody
	public PageInfoDto getPageInfo(@RequestParam Map<String,String> queryParam) {
		ElemBean condition = new ElemBean(queryParam);
		return ${modelNameLowerCamel}Impl.getPageInfo(condition);
	}

	/**
	*  新增
	* @param queryParam
	*/
	@RequestMapping(method=RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	public void add(@RequestBody Map queryParam) {
	    ElemBean condition = new ElemBean(queryParam);
	    ${modelNameLowerCamel}Impl.modify(condition);
	}

    /**
	 *  修改数据
	 * @param queryParam
	 */
	@RequestMapping(method=RequestMethod.PUT)
	@ResponseStatus(HttpStatus.CREATED)
	public void modify(@RequestBody Map queryParam) {
		ElemBean condition = new ElemBean(queryParam);
		${modelNameLowerCamel}Impl.modify(condition);
	}

}
