package com.zjcds.dao;


import com.zjcds.entity.ServiceInfo;

import java.util.HashMap;
import java.util.List;

public interface DataServiceDao {

		/**
		 *
		 * @description 根据条件查找数据服务相关信息
		 *
		 * @Param:
		 * @author: wwl
		 * @createDate: 2019-09-19
		 * @updateDate: 2019-09-19
		 * @return ModelAndView
		 *
		 */
		public List<ServiceInfo> findServiceInfo(HashMap param);



		/**
		 *
		 * @description 保存服务相关信息
		 *
		 * @Param:
		 * @author: wwl
		 * @createDate: 2019-09-19
		 * @updateDate: 2019-09-19
		 * @return 返回保存服务信息操作的状态
		 *
		 */
		public int saveServiceInfo(ServiceInfo serviceInfo);

}
