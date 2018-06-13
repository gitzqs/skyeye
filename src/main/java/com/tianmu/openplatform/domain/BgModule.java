package com.tianmu.openplatform.domain;

public class BgModule {
    
    private Integer id;
    
    private String moduleName;
    public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	private String fieldname;
    private String nuitname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setMoudleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public String getFieldname() {
        return fieldname;
    }

    public void setFieldname(String fieldname) {
        this.fieldname = fieldname;
    }

	public String getNuitname() {
		return nuitname;
	}

	public void setNuitname(String nuitname) {
		this.nuitname = nuitname;
	}
    
    

}
