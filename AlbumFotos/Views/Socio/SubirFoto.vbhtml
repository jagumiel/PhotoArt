@Code
    ViewData("Title") = "SubirFoto"
End Code


<script type="text/javascript">
    function enviarFoto(){
        document.getElementById("form1").action = "http://localhost:50418/Socio/SubirFoto?";
        document.getElementById("form1").action = document.getElementById("form1").action + document.getElementById("miArchivo").value;
        return true;
    }
</script>
<!--onsubmit="return enviarFoto();"-->
<h2>SubirFoto</h2>
<div>
    <form id="form1" onsubmit="return enviarFoto();" method="post" enctype="multipart/form-data" action="http://localhost:50418/Socio/SubirFoto/">
    <b><u>File Upload in MVC3 By Using Razor</u></b>
        Select Image
        <input id="miArchivo" type="file" name="file" />&nbsp;&nbsp;&nbsp;
        <input type="submit" value="Upload Image"/>
    </form>
</div>
