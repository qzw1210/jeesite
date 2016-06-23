/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.ourfuture.order.order.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.ourfuture.order.order.entity.Businessinfo;
import com.ourfuture.order.order.service.BusinessinfoService;

/**
 * 代码生成测试Controller
 * @author qzw1210
 * @version 2016-06-22
 */
@Controller
@RequestMapping(value = "${adminPath}/order/businessinfo")
public class BusinessinfoController extends BaseController {

	@Autowired
	private BusinessinfoService businessinfoService;
	
	@ModelAttribute
	public Businessinfo get(@RequestParam(required=false) String id) {
		Businessinfo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = businessinfoService.get(id);
		}
		if (entity == null){
			entity = new Businessinfo();
		}
		return entity;
	}
	
	@RequiresPermissions("order:businessinfo:view")
	@RequestMapping(value = {"list", ""})
	public String list(Businessinfo businessinfo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Businessinfo> page = businessinfoService.findPage(new Page<Businessinfo>(request, response), businessinfo); 
		model.addAttribute("page", page);
		return "order/order/businessinfoList";
	}

	@RequiresPermissions("order:businessinfo:view")
	@RequestMapping(value = "form")
	public String form(Businessinfo businessinfo, Model model) {
		model.addAttribute("businessinfo", businessinfo);
		return "order/order/businessinfoForm";
	}

	@RequiresPermissions("order:businessinfo:edit")
	@RequestMapping(value = "save")
	public String save(Businessinfo businessinfo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, businessinfo)){
			return form(businessinfo, model);
		}
		businessinfoService.save(businessinfo);
		addMessage(redirectAttributes, "保存业务信息成功");
		return "redirect:"+Global.getAdminPath()+"/order/businessinfo/?repage";
	}
	
	@RequiresPermissions("order:businessinfo:edit")
	@RequestMapping(value = "delete")
	public String delete(Businessinfo businessinfo, RedirectAttributes redirectAttributes) {
		businessinfoService.delete(businessinfo);
		addMessage(redirectAttributes, "删除业务信息成功");
		return "redirect:"+Global.getAdminPath()+"/order/businessinfo/?repage";
	}

}