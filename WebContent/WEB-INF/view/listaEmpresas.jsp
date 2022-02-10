<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logout-parcial.jsp"/>
	
	Usuario logado: ${usuario.login }
	<br>

	<c:if test="${not empty nomeEmpresa}">
		Empresa ${ nomeEmpresa } cadastrada com sucesso! <br/>
	</c:if>
Lista de Empresas: <br/>

<ul>
	<c:forEach items="${empresas}" var="empresa">
		<li>
			${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" /> 
			<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id }">edita</a>
			<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id }">remove</a>
		</li>
	</c:forEach>
</ul>



</body>
</html>