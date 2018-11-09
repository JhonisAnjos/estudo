<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="dp"%>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDAO" />

	<table>
		<tr bgcolor="grey">
			<th>Nome</th>
			<th>E-mail</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		</tr>
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr bgcolor="#${id.count%2==0?'e9e9e9' : 'ffffff'}">
				<td>${contato.nome}</td>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
                          E-mail não informado
                     </c:if></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>
			</tr>
		</c:forEach>
	</table>
	<dp:table >
	
	</dp:table>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>