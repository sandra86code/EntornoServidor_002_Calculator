<%@page import="com.jacaranda.ArithmeticException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Arithmetic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora</title>
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
	
	<h1>El resultado es <%=result%> </h1>
	
	<button onclick="location.href='index.html'">Vuelve a la página principal</button></p>
</body>
</html>