package com.yonyou.jmev.web.controller.VS;
import com.yonyou.jmev.model.VS.TmVsDealerAccount;
import com.yonyou.jmev.service.VS.TmVsDealerAccountService;
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
@RequestMapping("/tmVsDealerAccount/")
public class TmVsDealerAccountController {

    @Autowired
    TmVsDealerAccountService tmVsDealerAccountService;

    @RequestMapping("add")
    @ResponseBody
    public String add(TmVsDealerAccount tmVsDealerAccount) {
        tmVsDealerAccountService.save(tmVsDealerAccount);
        return "";
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestParam Integer id) {
	    tmVsDealerAccountService.deleteById(id);
	    return "";
    }

    @RequestMapping("update")
    @ResponseBody
    public String update(TmVsDealerAccount tmVsDealerAccount) {
	    tmVsDealerAccountService.update(tmVsDealerAccount);
	    return "";
    }

    @RequestMapping("detail")
    @ResponseBody
    public String detail(@RequestParam Integer id) {
        TmVsDealerAccount tmVsDealerAccount = tmVsDealerAccountService.findById(id);
        return tmVsDealerAccount.toString();
    }

    @RequestMapping("list")
    @ResponseBody
    public String list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<TmVsDealerAccount> list = tmVsDealerAccountService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return list.toString();
    }
}
