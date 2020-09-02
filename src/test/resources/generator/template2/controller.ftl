package ${basePackage}.action.${sign};

ort com.auth.manager.core.dto.UserInfoDto;
import com.auth.manager.core.threadlocal.UserInfoThreadLocal;
import com.yonyou.dcs.common.Constant;
import com.yonyou.dcs.common.bean.ElemBean;
import com.yonyou.dcs.common.dto.ExcelTemplateColum;
import com.yonyou.dcs.common.util.CreateExcelTemplate;
import com.yonyou.dcs.common.util.POUtil;
import com.yonyou.dcs.common.util.UserUtil;
import com.yonyou.dcs.vehicleSale.dto.TtNewgCountryImportDto;
import com.yonyou.dcs.vehicleSale.po.TmDealerInfoPo;
import com.yonyou.dcs.vehicleSale.po.TtSaledReportPO;
import com.yonyou.dcs.vehicleSale.po.newg.TtNewgCountryLandMarkPO;
import com.yonyou.dcs.vehicleSale.service.newg.NewgCountryLandMarkImpl;
import com.yonyou.dmsgms.framework.DAO.PageInfoDto;
import com.yonyou.dmsgms.framework.service.excel.*;
import com.yonyou.dmsgms.framework.service.excel.impl.AbstractExcelReadCallBack;
import com.yonyou.dmsgms.function.domains.DTO.ImportResultDto;
import com.yonyou.dmsgms.function.exception.ServiceBizException;
import com.yonyou.f4.mvc.annotation.TxnConn;
import com.yonyou.f4.mvc.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


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
@Controller
@TxnConn
@RequestMapping("/${modelNameUpperCamel}Mng")
public class ${modelNameUpperCamel}Mng extends BaseController {

    @Autowired
    private ${modelNameUpperCamel}Impl ${modelNameLowerCamel}Impl;

	@Autowired
	private ExcelRead<TtNewgCountryImportDto> excelReadService;

	@Autowired
	private POUtil poUtil;

	@Autowired
	private CreateExcelTemplate createExcelTemplate;

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
	public void modify(@RequestBody Map<String,String> queryParam) {
		ElemBean condition = new ElemBean(queryParam);
		${modelNameLowerCamel}Impl.modify(condition);
	}

	/**
	* @Description: 导入
	*/
	@RequestMapping(value = "/importExcel", method = RequestMethod.POST)
	@ResponseBody
	public List<TtNewgCountryImportDto> importExcel(@RequestParam Map<String, String> queryParam, @RequestParam(value = "file") MultipartFile importFile) throws Exception {
		ImportResultDto<TtNewgCountryImportDto> importResult = null;

		// 解析Excel 表格(如果需要进行回调)
		importResult = excelReadService.analyzeExcelFirstSheet(importFile, new AbstractExcelReadCallBack<TtNewgCountryImportDto>(TtNewgCountryImportDto.class, new ExcelReadCallBack<TtNewgCountryImportDto>() {
				@Override
				public void readRowCallBack(TtNewgCountryImportDto rowDto, boolean isValidateSucess) {


				}
		    }
		));

		if (importResult.isSucess()) {
		    return importResult.getDataList();
		} else {
		    throw new ServiceBizException("导入出错,请见错误列表", importResult.getErrorList());
		}
	}

	/**
	* @param @param  request
	* @param @param  response
	* @param @throws Exception    参数
	* @return void    返回类型
	* @throws
	* @Title: activityAscExport
	* @Description: 股份新能源车辆国标信息模板下载
	*/
	@RequestMapping(value = "/model/exportExcel", method = RequestMethod.GET)
	public void activityAscExport(HttpServletRequest request, HttpServletResponse response) throws Exception {

	    List<ExcelTemplateColum> exportColumnList = new ArrayList<>();
		exportColumnList.add(new ExcelTemplateColum("序号"));
		exportColumnList.add(new ExcelTemplateColum("车牌颜色", "5580"));
		exportColumnList.add(new ExcelTemplateColum("行驶证上所有人"));

		List<String> sampleValueList = new ArrayList<>();
		sampleValueList.add("1（示例）");
		sampleValueList.add("LA9AEPG2XJHLJK005");
		sampleValueList.add("赣AD33555");
		createExcelTemplate.getExcelTemplate("股份新能源车辆国标信息模版.xls", exportColumnList, request, response, sampleValueList);
	}
}
