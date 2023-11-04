<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigation.jspf" %>
<!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- Interests-->
            <section class="resume-section" id="interests">
                <div class="resume-section-content">
                    <h2 class="mb-5">Interests</h2>
                    <security:authorize access="hasAnyRole('ADMIN')">
                        <a href='<c:url value="/addInterests"/>' class="btn btn-outline-primary">
                            <span class="text">Dodaj pozycję</span>
                        </a>
                    </security:authorize>
                    <c:forEach items="${interestsModel}" var="interestsItem">
                        <p class="mb-0">${interestsItem.interestsDescription}</p>
                        <security:authorize access="hasAnyRole('ADMIN')">
                            <a href='<c:url value="/editInterests/${interestsItem.id}"/>' class="btn btn-outline-primary">
                                <span class="text">Edytuj</span>
                            </a>
                        </security:authorize>
                        <br>
                        <br>
                        <br>
                    </c:forEach>

                </div>
            </section>
        </div>
        <!-- Bootstrap core JS-->
        <%@include file="../dynamic/footer.jspf" %>
