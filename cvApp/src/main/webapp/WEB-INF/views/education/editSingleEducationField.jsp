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
            <form name="major" method="post" action='<c:url value="/editEduMajor/${educationModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Kierunek</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="major" placeholder="${educationModel.major}">
                                    </div>
                                </div>
                                <input class="btn btn-outline-primary pull-left" type="submit"
                                       value="Zapisz zmianę"></input>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <form name="degree" method="post" action='<c:url value="/editEduDegree/${educationModel.id}"/>'>
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Uzyskane wykształcenie</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="degree"
                                               placeholder="${educationModel.degree}">
                                    </div>
                                </div>
                                <input class="btn btn-outline-primary pull-left" type="submit"
                                       value="Zapisz zmianę"></input>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <form name="company" method="post" action='<c:url value="/editEduAcademy/${educationModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Szkoła/uczelnia</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="academy" placeholder="${educationModel.academy}">
                                    </div>
                                </div>
                                <input class="btn btn-outline-primary pull-left" type="submit"
                                       value="Zapisz zmianę"></input>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <form name="description" method="post" action='<c:url value="/editEduDescription/${educationModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Opis</label>
                                    <div class="col-10">
                                <textarea class="form-control" rows="5" name="eduDescription"
                                          placeholder="${educationModel.eduDescription}"></textarea>
                                    </div>
                                </div>
                                <input class="btn btn-outline-primary pull-left" type="submit"
                                       value="Zapisz zmianę"></input>
                            </div>

                        </div>

                    </div>

                </div>

            </form>

            <form name="startDate" method="post" action='<c:url value="/editEduStartDate/${educationModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Od kiedy?</label>
                                    <div class="col-10">
                                        <input class="form-control" type="date" name="startEduDate">
                                    </div>
                                </div>
                                <input class="btn btn-outline-primary pull-left" type="submit"
                                       value="Zapisz zmianę"></input>
                            </div>
                        </div>
                    </div>
                </div>

            </form>


            <form name="endDate" method="post" action='<c:url value="/editEduEndDate/${educationModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Do Kiedy?</label>
                                    <div class="col-10">
                                        <input class="form-control" type="date" name="endEduDate">
                                    </div>
                                </div>
                                <input class="btn btn-outline-primary pull-left" type="submit"
                                       value="Zapisz zmianę"></input>
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
