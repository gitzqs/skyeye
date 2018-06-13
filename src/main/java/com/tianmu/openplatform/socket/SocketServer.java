package com.tianmu.openplatform.socket;

import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

/**
 * 基于TCP协议的Socket通信，实现用户登陆 服务器端
 */
//@Component
//@EnableScheduling
public class SocketServer {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Value("${SERVERPORT}")
	private Integer serverPort;

	/**
	 * 启动socket服务器 by haibinwang 2017年11月1日 09:51:13
	 */
	//	@Scheduled(fixedDelay = 2000)
	public void startScheduled() {
		ServerSocket server = null;
		try {
			server = new ServerSocket(serverPort);// 服务端在20006端口监听客户端请求的TCP连接
			Socket client;
			Executor service = Executors.newCachedThreadPool();// 通过调用Executors类的静态方法，创建一个ExecutorService实例 ExecutorService接口是Executor接口的子接口
			int count = 0;
			boolean f = true;
			log.info("------->服务器监听中.........");
			while (f) {

				client = server.accept();// 等待客户端的连接
				SocketAddress address = client.getRemoteSocketAddress();
				count++;// 统计客户端的数量
				log.info("------->与客户端连接成功,当前客户端的IP：[" + address.toString() + "] 客户端请求次数：[" + count + "]");
				service.execute(new ServerThread(client));// 调用execute()方法时，如果必要，会创建一个新的线程来处理任务，但它首先会尝试使用已有的线程，如果一个线程空闲60秒以上，则将其移除线程池；另外，任务是在Executor的内部排队，而不是在网络中排队
			}
		} catch (Exception e) {
			log.error("Exception error:", e);
		} finally {
			try {
				if (server != null) {
					server.close();
				}
			} catch (Exception e) {
				log.error("Exception error:", e);
			}
		}
	}

}