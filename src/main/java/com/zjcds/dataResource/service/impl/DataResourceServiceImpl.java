package com.zjcds.dataResource.service.impl;

import com.zjcds.dataResource.dao.DataResourceDao;
import com.zjcds.dataResource.pojo.DataResourcePojo;
import com.zjcds.dataResource.service.DataResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataResourceServiceImpl implements DataResourceService {
	@Autowired
	private DataResourceDao serverResourceDao;

	public List<DataResourcePojo> getDataResourceList() {
		return serverResourceDao.getDataResourceList();
	}
}
