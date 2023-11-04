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
            <form method="post" action='<c:url value="/addExperience"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Stanowisko</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="job" placeholder="Wpisz swoje stanowisko">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Firma</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="company" placeholder="Uzupełnij nazwę firmy">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Czym się zajmujesz?</label>
                                    <div class="col-10">
                                <textarea class="form-control" rows="5" name="description"
                                          placeholder="Napisz kilka słów o tym czym się zajmowałeś..."></textarea>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Od kiedy pracujesz?</label>
                                    <div class="col-10">
                                        <input class="form-control" type="date" name="startDate">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Kiedy skończyłeś pracę?</label>
                                    <div class="col-10">
                                        <input class="form-control" type="date" name="endDate">
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
