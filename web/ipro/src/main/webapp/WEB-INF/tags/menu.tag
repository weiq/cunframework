<%@tag pageEncoding="UTF-8" description="构建子菜单" %>
<%@ attribute name="menu" type="org.cunframework.web.ipro.admin.resource.entity.tmp.Menu" required="true" description="当前菜单" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="cun" tagdir="/WEB-INF/tags" %>
<c:choose>
    <c:when test="${!menu.hasChildren}">
        <li><a href="<c:url value="${menu.url}"/>"><i class="${menu.icon}"></i> <span>${menu.name}</span></a></li>
    </c:when>
    <c:otherwise>
        <li class="nav-parent"><a href="#"><i class="${menu.icon}"></i> <span>${menu.name}</span></a>
            <ul class="children">
                <c:forEach items="${menu.children}" var="menu2">
                	<c:choose>
	                    <c:when test="${!menu2.hasChildren}">
					        <li><a href="<c:url value="${menu2.url}"/>"><i class="fa fa-angle-right"></i> ${menu2.name}</a></li>
					    </c:when>
					    <c:otherwise>
					        <li class="nav-parent"><a href="#"><i class="fa fa-angle-double-right"></i> <span>${menu2.name}</span></a>
					            <ul class="children">
					                <c:forEach items="${menu2.children}" var="menu3">
					                    <li><a href="<c:url value="${menu3.url}"/>"><i class="fa fa-angle-right"></i> ${menu3.name}</a></li>
					                </c:forEach>
					            </ul>
					        </li>
					    </c:otherwise>
				    </c:choose>
                </c:forEach>
            </ul>
        </li>
    </c:otherwise>
</c:choose>
