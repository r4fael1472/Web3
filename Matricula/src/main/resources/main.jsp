<!DOCTYPE html>
<html>
<head>
    <title>Tela Principal</title>
</head>

<body>
    <% String nome = session.getAttribute("nome").toString();%>
    <% String cpf = session.getAttribute("cpf").toString();%>
    <% String matricula = session.getAttribute("matricula").toString();%>

    <h1>Nome: <%=nome%></h1>
    <h1>CPF: <%=cpf%></h1>
    <h1>Matrícula: <%=matricula%></h1>
</body>

</html>