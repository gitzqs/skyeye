//package com.tianmu.openplatform.common.utils;
//
//import java.util.Map;
//
//import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
//import org.eclipse.paho.client.mqttv3.MqttCallback;
//import org.eclipse.paho.client.mqttv3.MqttMessage;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import com.alibaba.fastjson.JSON;
//import com.tianmu.openplatform.config.SpringContextHolder;
//import com.tianmu.openplatform.service.BusinessService;
//
///**
// * 发布消息的回调类
// * 
// * 必须实现MqttCallback的接口并实现对应的相关接口方法CallBack 类将实现 MqttCallBack。
// * 每个客户机标识都需要一个回调实例。在此示例中，构造函数传递客户机标识以另存为实例数据。 在回调中，将它用来标识已经启动了该回调的哪个实例。
// * 必须在回调类中实现三个方法：
// * 
// * public void messageArrived(MqttTopic topic, MqttMessage message)接收已经预订的发布。
// * 
// * public void connectionLost(Throwable cause)在断开连接时调用。
// * 
// * public void deliveryComplete(MqttDeliveryToken token)) 接收到已经发布的 QoS 1 或 QoS 2
// * 消息的传递令牌时调用。 由 MqttClient.connect 激活此回调。
// * 
// */
//public class PushCallback implements MqttCallback {
//
//	private final Logger log = LoggerFactory.getLogger(getClass());
//
//	private final static BusinessService businessService = SpringContextHolder.getBean("businessService", BusinessService.class);
//
//	@Override
//	public void connectionLost(Throwable cause) {
//		// 连接丢失后，一般在这里面进行重连  
//		//		log.info("连接断开...重连中...");
//		//		ClientMQTT client = new ClientMQTT();
//		//		log.info("ApplicationRunner.start()...");
//		//		client.start();
//	}
//
//	@Override
//	public void deliveryComplete(IMqttDeliveryToken token) {
//		log.info("deliveryComplete---------" + token.isComplete());
//	}
//
//	@Override
//	public void messageArrived(String topic, MqttMessage message) throws Exception {
//
//		try {
//			String monitorStr = new String(message.getPayload());
//			log.info("接收消息主题 : " + topic + " 接收消息Qos : " + message.getQos() + " 接收消息内容 : " + monitorStr);
//			if (ParserUtil.isJson(monitorStr)) {
//				@SuppressWarnings("unchecked")
//				Map<String, Object> dataMap = JSON.parseObject(JSON.toJSON(monitorStr).toString(), Map.class);
//				businessService.process_business(dataMap);
//			}
//		} catch (Exception e) {
//			log.error("messageArrived error:", e);
//		}
//	}
//}