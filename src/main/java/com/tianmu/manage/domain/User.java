package com.tianmu.manage.domain;

import java.util.List;

/**
 * 用户登录信息表
 */
public class User {
	// id
	private String id;
	// 用户名
	private String userName;
	// 登陆密码
	private String password;
	// 角色ID
	private String roleId;
	private String roleName;// 非表字段：角色名称
	// 用户状态
	private String status;
	//
	private String reqTime;

	private String realName;

	private int auth;

	private List<String> custIds;

	private String company;
	
	private String companyId;

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setReqTime(String reqTime) {
		this.reqTime = reqTime;
	}

	public String getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getRoleId() {
		return roleId;
	}

	public String getStatus() {
		return status;
	}

	public String getReqTime() {
		return reqTime;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleName() {
		return roleName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public List<String> getCustIds() {
		return custIds;
	}

	public void setCustIds(List<String> custIds) {
		this.custIds = custIds;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

}
