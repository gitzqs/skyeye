//package com.tianmu.openplatform.common.utils;
//
//import org.apache.commons.lang.StringUtils;
//import org.eclipse.paho.client.mqttv3.MqttClient;
//import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
//import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.boot.ApplicationArguments;
//import org.springframework.boot.ApplicationRunner;
//import org.springframework.stereotype.Component;
//
//import com.tianmu.openplatform.config.SpringContextHolder;
//
///**
// * 客户端接收消息
// */
//@Component
//public class ClientMQTT implements ApplicationRunner {
//
//	private static final Logger log = LoggerFactory.getLogger(ClientMQTT.class);
//
//	private static String ISPRO;//是正式环境Y：是 N：不是
//	private static String DSURL;
//	public static String HOST;
//	public static String TOPIC;
//	private static String clientid;
//	private static String userName;
//	private MqttClient client;
//	private MqttConnectOptions options;
//	private String passWord = "password";
//
//	@Override
//	public void run(ApplicationArguments var1) throws Exception {
//		ClientMQTT client = new ClientMQTT();
//		ClientMQTT.initMqConfig();
//		client.start();
//	}
//
//	private static void initMqConfig() {
//
//		ISPRO = SpringContextHolder.getProperties("ispro");
//		DSURL = SpringContextHolder.getProperties("spring.datasource.url");
//		TOPIC = SpringContextHolder.getProperties("topic");
//		HOST = SpringContextHolder.getProperties("host");
//
//		log.info("-------------------------> ispro = " + ISPRO);
//		log.info("-------------------------> host = " + HOST);
//		log.info("-------------------------> topic = " + TOPIC);
//		log.info("-------------------------> dsurl = " + DSURL);
//
//		if (StringUtils.isBlank(ISPRO) || !ISPRO.equals("Y")) {
//			clientid = "dev_mqtt_clientid";
//			userName = "dev_mqtt_user";
//		} else {
//			clientid = "pro_mqtt_clientid";
//			userName = "pro_mqtt_user";
//		}
//		log.info("-------------------------> clientid = " + clientid);
//		log.info("-------------------------> userName = " + userName);
//
//	}
//
//	private void start() {
//		try {
//			// host为主机名，clientid即连接MQTT的客户端ID，一般以唯一标识符表示，MemoryPersistence设置clientid的保存形式，默认为以内存保存
//			client = new MqttClient(HOST, clientid, new MemoryPersistence());
//			log.info("-------------------------> ClientMQTT.start");
//			// MQTT的连接设置
//			options = new MqttConnectOptions();
//			// 设置是否清空session,这里如果设置为false表示服务器会保留客户端的连接记录，设置为true表示每次连接到服务器都以新的身份连接
//			options.setCleanSession(false);
//			// 设置连接的用户名
//			options.setUserName(userName);
//			// 设置连接的密码
//			options.setPassword(passWord.toCharArray());
//			// 设置超时时间 单位为秒
//			options.setConnectionTimeout(10);
//			// 设置会话心跳时间 单位为秒 服务器会每隔1.5*20秒的时间向客户端发送个消息判断客户端是否在线，但这个方法并没有重连的机制
//			options.setKeepAliveInterval(60);
//			// 设置回调
//			client.setCallback(new PushCallback());
//			// MqttTopic topic = client.getTopic(TOPIC);
//			// setWill方法，如果项目中需要知道客户端是否掉线可以调用该方法。设置最终端口的通知消息
//			// options.setWill(topic, "close".getBytes(), 2, true);
//			client.connect(options);
//			// 订阅消息
//			int[] Qos = { 1 };
//			String[] topic1 = { TOPIC };
//			client.subscribe(topic1, Qos);
//
//		} catch (Exception e) {
//			log.error("ClientMQTT ERROR:", e);
//		}
//	}
//
//}