package com.tianmu.openplatform.socket;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.tianmu.openplatform.config.SpringContextHolder;
import com.tianmu.openplatform.connector.TCPSocketUtil;
import com.tianmu.openplatform.service.BusinessService;

/**
 * 服务器线程处理类
 */
public class ServerThread implements Runnable {

	private final Logger log = LoggerFactory.getLogger(getClass());

	private BusinessService businessService = (BusinessService) SpringContextHolder.getBean("businessService");

	private Socket socket;// 和本线程相关的Socket

	public ServerThread(Socket socket) {
		this.socket = socket;
	}

	@Override
	public void run() {// 线程执行的操作，响应客户端的请求
		InputStream is = null;
		InputStreamReader isr = null;
		BufferedReader br = null;
		OutputStream os = null;
		PrintWriter pw = null;
		Boolean writeFlag = false;
		try {
			// 获取输入流，并读取客户端信息
			is = socket.getInputStream();

			byte[] readByte = TCPSocketUtil.readStream(is);
			String recvBodyMsg = new String(readByte, "UTF-8");
			log.info("------->当前线程：[" + Thread.currentThread().getName() + "] 服务器接收的数据：" + recvBodyMsg);
			@SuppressWarnings("unchecked")
			Map<String, Object> inputMap = JSON.parseObject(recvBodyMsg, Map.class);
			// log.info("jsontMap = " + inputMap);
			if ((inputMap != null) && (inputMap.size() > 0)) {
				try {
					insert_business(inputMap);
					writeFlag = true;
				} catch (Exception e) {
					writeFlag = false;
					log.error("Exception error:", e);
				}
			}
			socket.shutdownInput();// 关闭输入流
			os = socket.getOutputStream();// 获取输出流，响应客户端的请求
			pw = new PrintWriter(os);
			if (writeFlag) {
				pw.write("--------->数据传输成功！");
			} else {
				pw.write("--------->数据写入异常！");
			}
		} catch (Exception e) {
			log.error("Exception error:", e);
			if (pw != null) {
				pw.write("数据写入异常！");
				pw.flush();// 调用flush()方法将缓冲输出
				pw.close();
			}
		} finally {// 关闭资源
			try {
				if (pw != null)
					pw.flush();// 调用flush()方法将缓冲输出
				if (os != null)
					os.close();
				if (br != null)
					br.close();
				if (isr != null)
					isr.close();
				if (is != null)
					is.close();
				if (socket != null)
					socket.close();
			} catch (Exception e) {
				log.error("IOException error:", e);
				if (pw != null) {
					pw.write("数据写入异常！");
					pw.close();
				}
			}
		}
	}

	/**
	 * 接收监控列表数据
	 * 
	 * @throws Exception
	 */
	public void insert_business(Map<String, Object> inputMap) throws Exception {
		businessService.process_business(inputMap);
	}
}