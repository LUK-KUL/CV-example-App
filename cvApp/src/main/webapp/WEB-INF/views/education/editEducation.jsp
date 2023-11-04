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
                    <h2 class="mb-5">Edit Education</h2>
            <form method="post" action='<c:url value="/editEdu/${educationModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Kierunek</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="major" placeholder="Wpisz kierunek">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Uzyskane wykształcenie</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="degree" placeholder="Wpisz wykształcenie">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Szkoła/uczelnia</label>
                                    <div class="col-10">
                                        <input class="form-control" type="text" name="academy" placeholder="Uzupełnij nazwę szkoły / uczelni">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Opis</label>
                                    <div class="col-10">
                                <textarea class="form-control" rows="5" name="eduDescription"
                                          placeholder="Opis..."></textarea>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Od kiedy?</label>
                                    <div class="col-10">
                                        <input class="form-control" type="date" name="startEduDate">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Do Kiedy?</label>
                                    <div class="col-10">
                                        <input class="form-control" type="date" name="endEduDate">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <input class="btn btn-outline-primary pull-left" type="submit" value="Zapisz zmiany" id="searchButton"></input>
                <!-- Button to Open the Modal -->
                <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#myModal">
                    Usuń
                </button>
            </form>
                    <!-- The Modal -->
                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Czy na pewno chcesz usunąć pozycję?</h4>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    Jeżeli usuniesz - dane zostaną bezpowrotnie utracone
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-primary" data-bs-dismiss="modal">Anuluj</button>
                                    <form method="post" action='<c:url value="/delEdu/${educationModel.id}"/>'>
                                        <input type="submit" class="btn btn-outline-danger pull-left" value="Tak"/>
                                    </form>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- Bootstrap core JS-->
        <%@include file="../dynamic/footer.jspf" %>