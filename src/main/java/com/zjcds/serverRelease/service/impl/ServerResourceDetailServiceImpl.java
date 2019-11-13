package com.zjcds.serverRelease.service.impl;

import com.zjcds.dataResource.dao.DataResourceDetailDao;
import com.zjcds.dataResource.service.DataResourceDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service()
public class ServerResourceDetailServiceImpl implements DataResourceDetailService {
	
	@Autowired(required = false)
	private DataResourceDetailDao dataResourceDetailDao;


}
