<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"
	import="java.sql.*"
	import="ETC.*"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ETC 로그인</title>
   <!-- Custom fonts for this template-->
    <link href="${path}/a00_com/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${path}/a00_com/css/sb-admin-2.min.css" rel="stylesheet"> 
<%-- <jsp:useBean id="Dao" class="backweb.ETC.memDao" />
     
<script type="text/javascript">
      
 </script>    --%> 
</head>
<body class="bg-gradient-primary">
 <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block"><img src="../img/study.png" style="width: 450px; height: 50;"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4"><b>ETC 로그인</b></h1>
                                    </div>
                                    <form class="user"  method="post">
                                        <div class="form-group">
                                            <input type="text" name="memid" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp" 
                                                placeholder="아이디">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="mempwd" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="비밀번호">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck"><b>로그인 상태 유지하기</b>
                                                </label>
                                            </div>
                                        </div>
                                        <input  type="submit" value="로그인"
                                        class="btn btn-primary btn-user btn-block">
                                    </form>
                                      <% 
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    String memid = request.getParameter("memid");
                    String mempwd = request.getParameter("mempwd");
                    memDao userDAO = new memDao();
                    boolean isValidUser = userDAO.loginUser(memid, mempwd);
                    
                    if (isValidUser) {
                        session.setAttribute("user", memid);
                        response.sendRedirect("main.jsp");
                    } else {
                   %>
<script>
                        alert("아이디와 비밀번호가 틀립니다");
</script>
                  <%
                    }
                }
            %>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Bootstrap core JavaScript-->
    <script src="${path}/a00_com/vendor/jquery/jquery.min.js"></script>
<script
	src="${path}/a00_com/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${path}/a00_com/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${path}/a00_com/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="${path}/a00_com/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="${path}/a00_com/js/demo/chart-area-demo.js"></script>
<script src="${path}/a00_com/js/demo/chart-pie-demo.js"></script>	
</body>
<div class="error-message">
            <c:if test="${not empty errorMessage}">
                ${errorMessage}
            </c:if>
        </div>
</html>