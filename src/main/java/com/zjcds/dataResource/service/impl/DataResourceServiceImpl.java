package com.zjcds.dataResource.service.impl;

import com.zjcds.dataResource.dao.DataResourceDao;
import com.zjcds.dataResource.service.DataResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("DataResourceService")
public class DataResourceServiceImpl implements DataResourceService {

	@Autowired
	private DataResourceDao dataResourceDao;

	/**
	 * 查询资源信息列表
	 * @return
	 */
	public List<Map<String,Object>> getDataResourceList() {
		return dataResourceDao.getDataResourceList();
	}
}
