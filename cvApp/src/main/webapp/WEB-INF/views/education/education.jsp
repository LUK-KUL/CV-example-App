<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigation.jspf" %>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- Education-->
            <section class="resume-section" id="education">
                <div class="resume-section-content">
                    <h2 class="mb-5">Education</h2>
                    <security:authorize access="hasAnyRole('ADMIN')">
                        <a href='<c:url value="/addEducation"/>' class="btn btn-outline-primary">
                            <span class="text">Dodaj pozycję</span>
                        </a>
                    </security:authorize>

                    <br>
                    <br>
                    <br>
                    <div>
                        <c:forEach items="${educationModel}" var="educationItem">
                            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                                <div class="flex-grow-1">
                                    <h3 class="mb-0">${educationItem.major}</h3>
                                    <div class="subheading mb-3">${educationItem.academy}</div>
                                    <div class="subheading mb-3">${educationItem.degree}</div>
                                    <p>${educationItem.eduDescription}</p>
                                </div>
                                <div class="flex-shrink-0"><span class="text-primary"><fmt:formatDate pattern="yyyy-MM" value = "${educationItem.startEduDate}"/> -
                        <c:choose>
                            <c:when test="${educationItem.endEduDate != null}">
                                <fmt:formatDate pattern="yyyy-MM" value = "${educationItem.endEduDate}"/>
                            </c:when>
                            <c:otherwise>
                                Present
                            </c:otherwise>
                        </c:choose></span>
                                </div>
                            </div>
                            <security:authorize access="hasAnyRole('ADMIN')">
                                <a href='<c:url value="/editEduSingleField/${educationItem.id}"/>' class="btn btn-outline-primary">
                                    <span class="text">Edytuj pojedyncze pola</span>
                                </a>
                                <a href='<c:url value="/editEducation/${educationItem.id}"/>' class="btn btn-outline-primary">
                                    <span class="text">Edytuj całą pozycję</span>
                                </a>
                            </security:authorize>
                            <br>
                            <br>
                            <br>
                        </c:forEach>
                    </div>
                </div>
            </section>
        </div>
        <!-- Bootstrap core JS-->
        <%@include file="../dynamic/footer.jspf" %>
