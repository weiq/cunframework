package org.cunframework.modules.common.web.interceptor;

import java.io.Serializable;
import java.util.Date;

import org.apache.shiro.SecurityUtils;
import org.hibernate.EmptyInterceptor;
import org.hibernate.type.Type;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

/**
 * Hibernate拦截器： 实现创建人，创建时间自动注入; 修改人,修改时间自动注入;
 */
@Component
public class MyHibernateInterceptor extends EmptyInterceptor {
	private static final Logger logger = LoggerFactory.getLogger(MyHibernateInterceptor.class);
	private static final long serialVersionUID = 1L;

	// 保存数据时
	public boolean onSave(Object entity, Serializable id, Object[] state,
			String[] propertyNames, Type[] types) {
		try {
			// 添加数据
			for (int index = 0; index < propertyNames.length; index++) {
				/* 找到名为"创建时间"的属性 */
				if ("createDate".equals(propertyNames[index])) {
					/* 使用拦截器将对象的"创建时间"属性赋上值 */
					if (StringUtils.isEmpty(state[index])) {
						state[index] = new Date();
					}
					continue;
				}
				/* 找到名为"创建人"的属性 */
				else if ("createBy".equals(propertyNames[index])) {
					/* 使用拦截器将对象的"创建人"属性赋上值 */
					if (StringUtils.isEmpty(state[index])) {
						state[index] = (String) SecurityUtils.getSubject().getPrincipal();
					}
					continue;
				}
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return true;
	}

	// 更新数据时
	public boolean onFlushDirty(Object entity, Serializable id,
			Object[] currentState, Object[] previousState,
			String[] propertyNames, Type[] types) {
		// 添加数据
		for (int index = 0; index < propertyNames.length; index++) {
			/* 找到名为"修改时间"的属性 */
			if ("updateDate".equals(propertyNames[index])) {
				/* 使用拦截器将对象的"修改时间"属性赋上值 */
				currentState[index] = new Date();
				continue;
			}
			/* 找到名为"修改人"的属性 */
			else if ("updateBy".equals(propertyNames[index])) {
				/* 使用拦截器将对象的"修改人"属性赋上值 */
				currentState[index] = (String) SecurityUtils.getSubject().getPrincipal();
				continue;
			}
		}
		return true;
	}
}
