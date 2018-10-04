package com.yonyou.jmev.web.controller.VS;
import com.yonyou.jmev.model.VS.TtVsRemittance;
import com.yonyou.jmev.service.VS.TtVsRemittanceService;
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
 * Created by yzy on 2018/10/04.
 */
@Controller
@RequestMapping("/ttVsRemittance/")
public class TtVsRemittanceController {

    @Autowired
    TtVsRemittanceService ttVsRemittanceService;

    @RequestMapping("add")
    @ResponseBody
    public String add(TtVsRemittance ttVsRemittance) {
        ttVsRemittanceService.save(ttVsRemittance);
        return "";
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestParam Integer id) {
	    ttVsRemittanceService.deleteById(id);
	    return "";
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(TtVsRemittance ttVsRemittance) {
	    ttVsRemittanceService.update(ttVsRemittance);
	    return "";
    }

    @RequestMapping("detail")
    @ResponseBody
    public String detail(@RequestParam Integer id) {
        TtVsRemittance ttVsRemittance = ttVsRemittanceService.findById(id);
        return ttVsRemittance.toString();
    }

    @RequestMapping("list")
    @ResponseBody
    public String list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<TtVsRemittance> list = ttVsRemittanceService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return list.toString();
    }
}
