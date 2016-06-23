/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.ourfuture.order.order.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 代码生成测试Entity
 * @author qzw1210
 * @version 2016-06-22
 */
public class Businessinfo extends DataEntity<Businessinfo> {
	
	private static final long serialVersionUID = 1L;
	private String busId;		// bus_id
	
	public Businessinfo() {
		super();
	}

	public Businessinfo(String id){
		super(id);
	}

	@Length(min=0, max=64, message="bus_id长度必须介于 0 和 64 之间")
	public String getBusId() {
		return busId;
	}

	public void setBusId(String busId) {
		this.busId = busId;
	}
	
}