package com.tianmu.openplatform.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * 基础配置
 */
@Configuration
public class NormalConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/");
	}
	
	//	@Bean
	//    public PageHelper pageHelper() {
	//        System.out.println("MyBatisConfiguration.pageHelper()");
	//        PageHelper pageHelper = new PageHelper();
	//        Properties p = new Properties();
	//        p.setProperty("offsetAsPageNum", "true");
	//        p.setProperty("rowBoundsWithCount", "true");
	//        p.setProperty("reasonable", "true");
	//        pageHelper.setProperties(p);
	//        return pageHelper;
	//    }

}
