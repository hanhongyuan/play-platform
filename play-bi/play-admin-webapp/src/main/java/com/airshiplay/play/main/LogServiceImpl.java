package com.airshiplay.play.main;

import com.airshiplay.play.main.api.LogService;
import com.airshiplay.play.main.service.LogEntityService;
import com.airlenet.play.util.BrowserUtil;
import com.airlenet.play.util.IpUtil;
import com.airlenet.play.util.LogUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@Service
public class LogServiceImpl implements LogService {
	@Autowired
	LogEntityService logEntityService;

	/**
	 * 日志记录
	 * 
	 * @param operateType
	 * @param level
	 * @param content
	 */
	public void addLog(OperateType operateType, LogLevel level, String content) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		String browser = BrowserUtil.checkBrowse(request);
		logEntityService.addLog(browser, operateType, level, IpUtil.getIpAddr(request), content);
	}

	@Override
	public void addLog(OperateType operateType, LogLevel level, Throwable thr) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		String browser = BrowserUtil.checkBrowse(request);
		logEntityService.addLog(browser, operateType, level, IpUtil.getIpAddr(request), LogUtil.getThrowableString(thr));
	}

	@Override
	public void addLog(OperateType operateType, LogLevel level, String content, Throwable thr) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		String browser = BrowserUtil.checkBrowse(request);
		logEntityService.addLog(browser, operateType, level, IpUtil.getIpAddr(request), content + "\n\n" + LogUtil.getThrowableString(thr));
	}
}
