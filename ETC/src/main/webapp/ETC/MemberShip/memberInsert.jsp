<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"
	import="backweb.ETC.vo.*"
	import="backweb.ETC.memDao"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ETC 회원정보 등록</title>
<jsp:useBean id="dao" class="backweb.ETC.memDao" />
<jsp:useBean id="ins" class="backweb.ETC.vo.member" />
<jsp:setProperty property="*" name="ins" />
<c:if test="${not empty param.memid}" >
  <c:set var="insCnt" value="${dao.insertMem(ins)}"/>
  <script type="text/javascript">
   var insCnt = ${insCnt}
   if(insCnt>0){
	   if(confirm("회원가입이 완료되었습니다.\n메인페이지로 이동합니다.")){
		       location.href="memberInsert.jsp";//메인페이지로 이동 		   
	         }
	   
         }else{
	           alert("회원정보를 다시 입력해주세요.");
    }
  </script>
</c:if>  
     <!-- Custom fonts for this template-->
    <link href="${path}/a00_com/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${path}/a00_com/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block"><img src="../img/paperwork.png" style="width:500px; height: 515;"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4"><b>ETC 회원정보 등록</b></h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name="memid" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="아이디" value="">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" name="mempwd" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="비밀번호" value="">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name="memgender" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="성별(남자 또는 여자를 입력하세요)" value="">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name="memname" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="이름" value="">
                                    </div>
                                </div>                          
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="Date" name="membirthStr" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="생년월일" value="">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name="memaddress" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="주소" value="">
                                    </div>
                                </div>
                                <button onclick="'메인페이지''" class="btn btn-primary btn-user btn-block" 
                                type="submit">등록 완료</button>

                                <hr>        
                            </form>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>ETC &copy; Your Website 2024</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->
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
</html>