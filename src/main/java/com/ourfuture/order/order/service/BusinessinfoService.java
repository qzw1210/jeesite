/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.ourfuture.order.order.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.ourfuture.order.order.entity.Businessinfo;
import com.ourfuture.order.order.dao.BusinessinfoDao;

/**
 * 代码生成测试Service
 * @author qzw1210
 * @version 2016-06-22
 */
@Service
@Transactional(readOnly = true)
public class BusinessinfoService extends CrudService<BusinessinfoDao, Businessinfo> {

	public Businessinfo get(String id) {
		return super.get(id);
	}
	
	public List<Businessinfo> findList(Businessinfo businessinfo) {
		return super.findList(businessinfo);
	}
	
	public Page<Businessinfo> findPage(Page<Businessinfo> page, Businessinfo businessinfo) {
		return super.findPage(page, businessinfo);
	}
	
	@Transactional(readOnly = false)
	public void save(Businessinfo businessinfo) {
		super.save(businessinfo);
	}
	
	@Transactional(readOnly = false)
	public void delete(Businessinfo businessinfo) {
		super.delete(businessinfo);
	}
	
}