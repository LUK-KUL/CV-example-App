<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>
<%@ page import="java.util.*" %>



<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigation.jspf" %>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- Experience-->
            <section class="resume-section" id="experience">
                <div class="resume-section-content">
                    <h2 class="mb-5">Experience</h2>
                    <security:authorize access="hasAnyRole('ADMIN')">
                        <a href='<c:url value="/addExperience"/>' class="btn btn-outline-primary">
                            <span class="text">Dodaj pozycję</span>
                        </a>
                    </security:authorize>

                    <br>
                    <br>
                    <br>
                    <div>
                    <c:forEach items="${experienceModel}" var="experienceItem">
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0">${experienceItem.job}</h3>
                            <div class="subheading mb-3">${experienceItem.company}</div>
                            <p>${experienceItem.description}</p>
                        </div>
                        <div class="flex-shrink-0"><span class="text-primary"><fmt:formatDate pattern="yyyy-MM" value = "${experienceItem.startDate}"/> -
                        <c:choose>
                            <c:when test="${experienceItem.endDate.year != null}">
                                <fmt:formatDate pattern="yyyy-MM" value = "${experienceItem.endDate}"/>
                            </c:when>
                            <c:otherwise>
                                Present
                            </c:otherwise>
                        </c:choose></span>
                        </div>
                    </div>
                        <security:authorize access="hasAnyRole('ADMIN')">
                        <a href='<c:url value="/editExpSingleField/${experienceItem.id}"/>' class="btn btn-outline-primary">
                            <span class="text">Edytuj pojedyncze pola</span>
                        </a>
                        <a href='<c:url value="/editExperience/${experienceItem.id}"/>' class="btn btn-outline-primary">
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