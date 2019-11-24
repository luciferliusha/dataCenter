package com.zjcds.dataResource.service.impl;

import com.zjcds.dataResource.dao.DataResourceDetailDao;
import com.zjcds.dataResource.service.DataResourceDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service("DataResourceDetailService")
public class DataResourceDetailServiceImpl implements DataResourceDetailService {

    @Autowired
    private DataResourceDetailDao dataResourceDetailDao;


    public Map<String, Object> getDataResourceDetailById(int id) {
        return dataResourceDetailDao.getDataResourceDetailById(id);
    }
}
