package com.yonyou.jmev.service.impl.VS;

import com.yonyou.jmev.dao.mapper.VS.TtVsRemittanceMapper;
import com.yonyou.jmev.model.VS.TtVsRemittance;
import com.yonyou.jmev.service.VS.TtVsRemittanceService;
import com.yonyou.jmev.service.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * Created by yzy on 2018/10/04.
 */
@Service
public class TtVsRemittanceServiceImpl extends AbstractService<TtVsRemittance> implements TtVsRemittanceService {

    @Autowired
    private TtVsRemittanceMapper ttVsRemittanceMapper;

}
