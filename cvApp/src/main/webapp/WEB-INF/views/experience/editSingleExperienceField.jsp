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
                    <h2 class="mb-5">Edit Single Experience Field</h2>
            <form name="job" method="post" action='<c:url value="/editExpJob/${experienceModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Stanowisko</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="job" placeholder="${experienceModel.job}">
                                    </div>
                                </div>
                                <input class="btn btn-outline-primary pull-left" type="submit" value="Zapisz zmianę"></input>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

                    <form name="company" method="post" action='<c:url value="/editExpCompany/${experienceModel.id}"/>'>
                        <!-- Content Row -->
                        <div class="row">
                            <div class="col-xl-12 col-md-12 mb-12">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Firma</label>
                                            <div class="col-10">
                                                <input class="form-control" type="text" name="company" placeholder="${experienceModel.company}">
                                            </div>
                                        </div>
                                        <input class="btn btn-outline-primary pull-left" type="submit" value="Zapisz zmianę"></input>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                    <form name="description" method="post" action='<c:url value="/editExpDescription/${experienceModel.id}"/>'>
                        <!-- Content Row -->
                        <div class="row">
                            <div class="col-xl-12 col-md-12 mb-12">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Czym się zajmujesz?</label>
                                            <div class="col-10">
                                <textarea class="form-control" type="text" rows="5" name="description"
                                          placeholder="${experienceModel.description}"></textarea>
                                            </div>
                                        </div>
                                        <input class="btn btn-outline-primary pull-left" type="submit" value="Zapisz zmianę"></input>
                                    </div>

                                </div>

                            </div>

                        </div>

                    </form>

                    <form name="startDate" method="post" action='<c:url value="/editExpStartDate/${experienceModel.id}"/>'>
                        <!-- Content Row -->
                        <div class="row">
                            <div class="col-xl-12 col-md-12 mb-12">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Od kiedy pracujesz?</label>
                                            <div class="col-10">
                                                <input class="form-control" type="date" name="startDate">
                                            </div>
                                        </div>
                                        <input class="btn btn-outline-primary pull-left" type="submit" value="Zapisz zmianę"></input>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>


                    <form name="endDate" method="post" action='<c:url value="/editExpEndDate/${experienceModel.id}"/>'>
                        <!-- Content Row -->
                        <div class="row">
                            <div class="col-xl-12 col-md-12 mb-12">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Kiedy skończyłeś?</label>
                                            <div class="col-10">
                                                <input class="form-control" type="date" name="endDate">
                                            </div>
                                        </div>
                                        <input class="btn btn-outline-primary pull-left" type="submit" value="Zapisz zmianę"></input>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
            </section>
        </div>
        <!-- Bootstrap core JS-->
        <%@include file="../dynamic/footer.jspf" %>
