package common.service;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;


@Aspect
public class AroundLog {

	@Pointcut("execution(* com.company.*.*())")
	public void commonServicePointcut() {
		
	}
	
	@Around("commonServicePointcut()")
	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("Aop AroundLog : " + pjp.getThis() + ". " + pjp.getSignature().getName());
		Object[] args = pjp.getArgs();
		for(int i = 0; i<args.length; i++) {
			System.out.println("args["+i+"]: " +args[i]+",\t");
		}
		StopWatch sw = new StopWatch();
		sw.start();

		
		Object returnObject = pjp.proceed();
		sw.stop();
		System.out.println(sw.getTotalTimeMillis()+"ms");
		if(returnObject != null) {
			System.out.println(" aop Around의 결과값 반환 : " + returnObject.toString());
		}
		System.out.println();
		
		return returnObject;
	}
	
}
