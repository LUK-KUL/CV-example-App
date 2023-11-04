<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<body id="page-top">
<!-- Navigation-->>
<%@include file="../dynamic/navigation.jspf" %>
<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- About-->
    <section class="resume-section" id="about">
        <div class="resume-section-content">

            <div class="row">

                <div class="col-lg-12">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Utwórz konto!</h1>
                        </div>
                        <form class="user">
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Imię">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Nazwisko">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="adres Email">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Hasło">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Powtórz ">
                                </div>
                            </div>
                            <a href="login.jsp" class="btn btn-primary btn-user btn-block">
                                Rejestruj
                            </a>
                            <hr>

                        </form>
                        <div class="text-center">
                            <a class="small" href="login.jsp">Masz już konto? Zaloguj się!</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </section>
</div>
<!-- Bootstrap core JS-->
<%@include file="../dynamic/footer.jspf" %>
