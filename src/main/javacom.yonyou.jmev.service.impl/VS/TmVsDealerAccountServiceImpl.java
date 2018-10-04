package com.yonyou.jmev.service.impl.VS;

import com.yonyou.jmev.dao.mapper.VS.TmVsDealerAccountMapper;
import com.yonyou.jmev.model.VS.TmVsDealerAccount;
import com.yonyou.jmev.service.VS.TmVsDealerAccountService;
import com.yonyou.jmev.service.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * Created by yzy on 2018/10/04.
 */
@Service
public class TmVsDealerAccountServiceImpl extends AbstractService<TmVsDealerAccount> implements TmVsDealerAccountService {

    @Autowired
    private TmVsDealerAccountMapper tmVsDealerAccountMapper;

}
