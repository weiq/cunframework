
package org.cunframework.modules.common.web.bind.annotation;

import java.lang.annotation.*;

/**
 * <p>默认的分页数据，先从参数找，参数找不到从方法上找</p>
 *
 */
@Target({ElementType.METHOD, ElementType.PARAMETER}) 
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface PageableDefaults {


    /**
     * The default-size the injected {@link org.springframework.data.domain.Pageable} should get if no corresponding
     * parameter defined in request (default is 10).
     */
    int value() default 10;

    /**
     * The default-pagenumber the injected {@link org.synyx.hades.domain.Pageable} should get if no corresponding
     * parameter defined in request (default is 0).
     */
    int pageNumber() default 0;

    /**
     * 默认的排序 格式为{"a=desc, a.b=desc"}
     */
    String[] sort() default {};

}
