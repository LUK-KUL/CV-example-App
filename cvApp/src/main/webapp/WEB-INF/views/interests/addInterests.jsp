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
                    <h2 class="mb-5">Add Experience</h2>
            <form method="post" action='<c:url value="/addInterests"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Zainteresowanie</label>
                                    <div class="col-10">
                                <textarea class="form-control" rows="5" name="interestsDescription"
                                          placeholder="Napisz kilka słów o tym czym się interesujesz..."></textarea>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <input class="btn btn-outline-primary pull-left" type="submit" value="Zapisz" id="searchButton"></input>
            </form>
                </div>
            </section>
        </div>
        <!-- Bootstrap core JS-->
        <%@include file="../dynamic/footer.jspf" %>
