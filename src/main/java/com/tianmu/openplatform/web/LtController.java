//package com.tianmu.openplatform.web;
//
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.io.PrintWriter;
//import java.net.Socket;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.apache.commons.lang.StringUtils;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//@Controller
//public class LtController {
//
//	@SuppressWarnings("resource")
//	@RequestMapping(value = "/pMonitor", method = RequestMethod.POST)
//	public @ResponseBody String pMonitor(HttpServletRequest request, HttpSession httpSession) {
//		String info = null;
//		try {
//			String pInfo = request.getParameter("pInfo");
//			log.info("pinfo = " + pInfo);
//			if (StringUtils.isNotBlank(pInfo)) {
//				Socket socket = new Socket(serverIpAddress, serverPort);// 1.创建客户端Socket，指定服务器地址和端口号
//				OutputStream os = socket.getOutputStream();// 2.获取输出流，用来向服务器发送信息 字节输出流
//				PrintWriter pw = new PrintWriter(os);// 转换为打印流
//				pw.write(pInfo);
//				pw.flush();// 刷新缓存，向服务器端输出信息
//				socket.shutdownOutput();// 关闭输出流
//				InputStream is = socket.getInputStream();// 3.获取输入流，用来读取服务器端的响应信息
//				BufferedReader br = new BufferedReader(new InputStreamReader(is));
//				while ((info = br.readLine()) != null) {
//					log.info("我是客户端，服务器端返回的信息是：" + info);
//					return info;
//				}
//				br.close();// 4.关闭资源
//				is.close();
//				pw.close();
//				os.close();
//				socket.close();
//			}
//
//		} catch (IOException ex) {
//			log.error("pMonitor error:", ex);
//		}
//		return info;
//	}
//
//	private final Logger log = LoggerFactory.getLogger(getClass());
//
//	@Value("${SERVERIPADDRESS}")
//	private String serverIpAddress;
//
//	@Value("${SERVERPORT}")
//	private Integer serverPort;
//
//}
