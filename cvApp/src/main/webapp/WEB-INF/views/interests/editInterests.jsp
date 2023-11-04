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
                    <h2 class="mb-5">Edit Experience</h2>
            <form method="post" action='<c:url value="/editInt/${interestsModel.id}"/>'>
                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">
                                    <label class="col-2 col-form-label">Zainteresowanie</label>
                                    <div class="col-10">
                                <textarea class="form-control" rows="5" name="interestsDescription"
                                          placeholder="${interestsModel.interestsDescription}"></textarea>
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
                                    <form method="post" action='<c:url value="/delInt/${interestsModel.id}"/>'>
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