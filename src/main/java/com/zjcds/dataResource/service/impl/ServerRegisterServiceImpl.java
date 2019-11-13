package com.zjcds.dataResource.service.impl;

import com.zjcds.dataResource.dao.ServerRegisterDao;
import com.zjcds.dataResource.service.ServerRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service()
public class ServerRegisterServiceImpl implements ServerRegisterService {
	
	@Autowired(required = false)
	private ServerRegisterDao serverRegisterDao;


}
