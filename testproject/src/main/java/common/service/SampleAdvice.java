package common.service;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class SampleAdvice {

	private static final Logger logger = LoggerFactory.getLogger(SampleAdvice.class); 
	
	@Before("execution(* com.company.member.controller.*.*(..))")
	public void startLog(JoinPoint jp) {
		logger.info(jp.getSignature().toString());
		logger.info(Arrays.toString(jp.getArgs()));
	}
}
