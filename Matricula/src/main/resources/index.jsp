<!DOCTYPE html>
<html>
<head>
    <title>Exemplo AJAX</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div id="myDiv"><h2>Let AJAX change this text</h2></div>
    <button type="button" onclick="loadXMLDoc()">Change Content</button>

    <form action="criarUsuario.do" method="POST">
        <label>
            <input type="text" name="nome">
        </label>
        <br>
        <label>
            <input type="text" name="cpf">
        </label>
        <br>
        <label>
            <input type="text" name="matricula">
        </label>
        <button type="submit">Cadastrar</button>
    </form>

<script>
    function loadXMLDoc() {
        var total = 0;
        for(let i=1;i <= 10000;i++){
            total += 1;
        }

        var xmlhttp;
        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
        }
        else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState === 4 && xmlhttp.status===200) {
                document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "ajax_info.txt", true);
        xmlhttp.send();
    }

</script>
</body>
</html>