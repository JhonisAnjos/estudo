<%@page import="java.text.SimpleDateFormat"%>
<%@ page
	import="java.util.*,
                  br.com.caelum.jdbc.dao.*,
                  br.com.caelum.jdbc.modelo.*"%>
<html>
<body>
	<table>
		<%
			ContatoDAO dao = new ContatoDAO();
			List<Contato> contatos = dao.getLista();

			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=new SimpleDateFormat().format(contato.getDataNascimento().getTime())%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>
