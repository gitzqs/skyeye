package com.tianmu.openplatform;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.HttpMessageConverters;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.core.MessageProducer;
import org.springframework.integration.mqtt.core.DefaultMqttPahoClientFactory;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;
import org.springframework.messaging.MessagingException;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.context.request.RequestContextListener;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.tianmu.openplatform.common.utils.ParserUtil;
import com.tianmu.openplatform.config.NormalConfig;
import com.tianmu.openplatform.config.SpringContextHolder;
import com.tianmu.openplatform.service.BusinessService;

@SpringBootApplication
@EnableTransactionManagement
@Configuration
@Import({ NormalConfig.class })
@MapperScan("com.tianmu")
@ComponentScan("com.tianmu")
@ServletComponentScan("com.tianmu.openplatform.listeners")
public class ApplicationConfiguration {

	private static final Logger log = LoggerFactory.getLogger(ApplicationConfiguration.class);

	private static String ISPRO;//是正式环境Y：是 N：不是

	private static String HOST;
	private static String TOPIC;
	private static String clientid;

	@Bean
	public HttpMessageConverters fastJsonHttpMessageConverters() {
		FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();
		FastJsonConfig fastJsonConfig = new FastJsonConfig();
		SerializerFeature[] serializerFeatures = { SerializerFeature.WriteNullListAsEmpty, SerializerFeature.WriteNullNumberAsZero, SerializerFeature.WriteNullStringAsEmpty };
		fastJsonConfig.setSerializerFeatures(serializerFeatures);
		fastConverter.setFastJsonConfig(fastJsonConfig);
		HttpMessageConverter<?> converter = fastConverter;
		return new HttpMessageConverters(converter);
	}

	@Autowired
	private RestTemplateBuilder builder;

	public static void main(String[] args) throws Exception {
		SpringApplication.run(ApplicationConfiguration.class, args);
	}

	@Bean
	public RestTemplate restTemplate() {
		return builder.build();
	}

	@Bean
	public RequestContextListener requestContextListener() {
		return new RequestContextListener();
	}

	@Bean
	public MqttPahoClientFactory mqttClientFactory() {
		initMqConfig();
		DefaultMqttPahoClientFactory factory = new DefaultMqttPahoClientFactory();
		factory.setServerURIs(HOST);
		//		factory.setUserName(userName);//用户名
		//		factory.setPassword(passWord);//密码
		return factory;
	}

	@Bean
	public MessageProducer inbound() {
		MqttPahoMessageDrivenChannelAdapter adapter = new MqttPahoMessageDrivenChannelAdapter(clientid, mqttClientFactory(), TOPIC);
		//		adapter.setRecoveryInterval(10000);//恢复间隔--控制在故障之后适配器会尝试重新连接的时间间隔，默认为10000ms（10s）
		adapter.setCompletionTimeout(5000);
		adapter.setConverter(new DefaultPahoMessageConverter());
		adapter.setQos(1);
		adapter.setOutputChannel(mqttInputChannel());
		return adapter;
	}

	@Bean
	public MessageChannel mqttInputChannel() {
		return new DirectChannel();
	}

	@Bean
	@ServiceActivator(inputChannel = "mqttInputChannel")
	public MessageHandler handler() {
		return new MessageHandler() {
			@Override
			public void handleMessage(Message<?> message) throws MessagingException {
				try {
					BusinessService businessService = SpringContextHolder.getBean("businessService", BusinessService.class);
					String monitorStr = message.getPayload().toString();
					log.info("接收消息主题 : " + TOPIC + " 接收消息内容 : \n" + monitorStr);
					if (ParserUtil.isJson(monitorStr)) {
						@SuppressWarnings("unchecked")
						Map<String, Object> dataMap = JSON.parseObject(JSON.toJSON(monitorStr).toString(), Map.class);
						businessService.process_business(dataMap);
					}
				} catch (Exception e) {
					log.error("handler error:", e);
				}
			}
		};
	}

	private static void initMqConfig() {

		ISPRO = SpringContextHolder.getProperties("ispro");
		TOPIC = SpringContextHolder.getProperties("topic");
		HOST = SpringContextHolder.getProperties("host");

		log.info("-------------------------> ispro = " + ISPRO);
		log.info("-------------------------> host  = " + HOST);
		log.info("-------------------------> topic = " + TOPIC);

		if (StringUtils.isBlank(ISPRO) || !ISPRO.equals("Y")) {
			clientid = "dev_mqtt_clientid";
		} else {
			clientid = "pro_mqtt_clientid";
		}
		log.info("-------------------------> clientid = " + clientid);

	}

}