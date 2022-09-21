<%@page import="com.jacaranda.ArithmeticException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Arithmetic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<% 
	Arithmetic numbers = new Arithmetic(Double.parseDouble(request.getParameter("operand1")), Double.parseDouble(request.getParameter("operand2")));
	String operacion = request.getParameter("calculator");
	
	double result = 0.0;
	if(operacion.equalsIgnoreCase("sumar")) {
		result = numbers.addition();
	}else if(operacion.equalsIgnoreCase("restar")) {
		result = numbers.substraction();
	}else if(operacion.equalsIgnoreCase("multiplicar")) {
		result = numbers.multiplication();
	}else {
		try {
			result = numbers.division();
		}catch(Exception e) {
			response.sendRedirect("error.html");
		}
	}
	%>
	
	
	<div class="login-root">
    <div class="box-root flex-flex flex-direction--column" style="min-height: 100vh;flex-grow: 1;">
      <div class="box-root padding-top--24 flex-flex flex-direction--column" style="flex-grow: 1; z-index: 9;">
        <div class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
          <h1><a href="index.html" rel="dofollow">Mi calculadora</a></h1>
        </div>
        <div class="formbg-outer">
          <div class="formbg">
            <div class="formbg-inner padding-horizontal--48">
				<div class="field padding-bottom--24" style="text-align:center">
					<h1>El resultado es <%=result%> </h1>
				</div>
              	<div class="field padding-bottom--24">
                  <input type="submit" value="Principal" onclick="location.href='index.html'">
                </div>
            </div>
          </div>
          <div class="footer-link padding-top--24">
            <div class="listing padding-top--24 padding-bottom--24 flex-flex center-center">
              <span><a href="index.html">© MiCalculadora</a></span>
              <span><a href="#">Contacto</a></span>
              <span><a href="#">Privacidad y Términos de uso</a></span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>