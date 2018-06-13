//package com.tianmu.openplatform.common.utils;
//
//import org.eclipse.paho.client.mqttv3.MqttClient;
//import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
//import org.eclipse.paho.client.mqttv3.MqttDeliveryToken;
//import org.eclipse.paho.client.mqttv3.MqttException;
//import org.eclipse.paho.client.mqttv3.MqttMessage;
//import org.eclipse.paho.client.mqttv3.MqttPersistenceException;
//import org.eclipse.paho.client.mqttv3.MqttTopic;
//import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence;
//
///**
// * Title:Server 这是发送消息的服务端 Description: 服务器向多个客户端推送主题，即不同客户端可向服务器订阅相同主题
// */
//public class ServerMQTT {
//
//	//tcp://MQTT安装的服务器地址:MQTT定义的端口号  
//	public static final String HOST = "tcp://39.107.110.92:1883";
//	//定义一个主题  
//	public static final String TOPIC = "testmq";
//	//定义MQTT的ID，可以在MQTT服务配置中指定  
//	private static final String clientid = "server11";
//
//	private MqttClient client;
//	private MqttTopic topic;
//	private String userName = "www"; //非必须
//	private String passWord = ""; //非必须
//
//	private MqttMessage message;
//
//	/**
//	 * 构造函数
//	 * 
//	 * @throws MqttException
//	 */
//	public ServerMQTT() throws MqttException {
//		// MemoryPersistence设置clientid的保存形式，默认为以内存保存  
//		client = new MqttClient(HOST, clientid, new MemoryPersistence());
//		connect();
//	}
//
//	/**
//	 * 用来连接服务器
//	 */
//	private void connect() {
//		MqttConnectOptions options = new MqttConnectOptions();
//		options.setCleanSession(false);
//		options.setUserName(userName);
//		options.setPassword(passWord.toCharArray());
//		// 设置超时时间  
//		options.setConnectionTimeout(10);
//		// 设置会话心跳时间  
//		options.setKeepAliveInterval(20);
//		try {
//			client.setCallback(new PushCallback());
//			client.connect(options);
//
//			topic = client.getTopic(TOPIC);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//	/**
//	 * 
//	 * @param topic
//	 * @param message
//	 * @throws MqttPersistenceException
//	 * @throws MqttException
//	 */
//	public void publish(MqttTopic topic, MqttMessage message) throws MqttPersistenceException, MqttException {
//		MqttDeliveryToken token = topic.publish(message);
//		token.waitForCompletion();
//		System.out.println("message is published completely! " + token.isComplete());
//	}
//
//	/**
//	 * 启动入口
//	 * 
//	 * @param args
//	 * @throws MqttException
//	 * @throws InterruptedException
//	 */
//	public static void main(String[] args) throws MqttException, InterruptedException {
//
//		//		ServerMQTT server = new ServerMQTT();
//		//		server.message = new MqttMessage();
//		//		server.message.setQos(1); //保证消息能到达一次
//		//		server.message.setRetained(true);
//		//		byte[] bb = "{\"ver\":\"1.0\",\"deviceid\":\"12345678123456781234567812345678\",\"devname\":\"DevNode-M1\",\"softver\":\"0.1\",\"type\":0,\"cmd\":1,\"msgid\":10,\"datatype\":\"null\",\"timestamp\":\"040101000533\",\"data\":{\"1\":\"-100.00\",\"2\":\"-100.00\",\"3\":\"-100.00\",\"4\":\"-100.00\",\"5\":\"-100.00\",\"6\":\"-100.00\",\"10\":0,\"11\":0,\"14\":\"0.00\",\"13\":\"0.00\",\"15\":\"0.00\",\"16\":\"0.00\",\"17\":\"0.00\",\"18\":\"0.00\",\"csq\":27}}"
//		//				.getBytes();
//		//		server.message.setPayload(bb);
//		//		server.publish(server.topic, server.message);
//		//		System.out.println(server.message.isRetained() + "------ratained状态");
//
//	}
//
//	public static void excute() throws MqttException, InterruptedException {
//		ServerMQTT server = new ServerMQTT();
//		server.message = new MqttMessage();
//		server.message.setQos(1); //保证消息能到达一次
//		server.message.setRetained(true);
//		byte[] bb = "{\"ver\":\"1.0\",\"deviceid\":\"12345678123456781234567812345678\",\"devname\":\"DevNode-M1\",\"softver\":\"0.1\",\"type\":0,\"cmd\":1,\"msgid\":10,\"datatype\":\"null\",\"timestamp\":\"040101000533\",\"data\":{\"1\":\"-100.00\",\"2\":\"-100.00\",\"3\":\"-100.00\",\"4\":\"-100.00\",\"5\":\"-100.00\",\"6\":\"-100.00\",\"10\":0,\"11\":0,\"14\":\"0.00\",\"13\":\"0.00\",\"15\":\"0.00\",\"16\":\"0.00\",\"17\":\"0.00\",\"18\":\"0.00\",\"csq\":27}}"
//				.getBytes();
//		server.message.setPayload(bb);
//		server.publish(server.topic, server.message);
//		System.out.println(server.message.isRetained() + "------ratained状态");
//	}
//}