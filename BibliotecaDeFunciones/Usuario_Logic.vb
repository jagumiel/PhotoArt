Imports System.Security.Cryptography
Imports System.Text

Public Class Usuario_Logic

    Dim misFuncionesBD As New BibliotecaDeFunciones.DB_Logic

    Shared Function hashearPass(ByVal md5Hash As MD5, ByVal input As String) As String
        ' Convierte la entrada en tipo Byte y computa.
        Dim data As Byte() = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input))
        'Crea una estructura
        Dim sBuilder As New StringBuilder()
        ' Cicla por cada byte del hash y le asigna un valor hexadecimal
        Dim i As Integer
        For i = 0 To data.Length - 1
            sBuilder.Append(data(i).ToString("x2"))
        Next i
        ' Devuelve el resumen MD5
        Return sBuilder.ToString()
    End Function 'Fuente:https://msdn.microsoft.com/es-es/library/system.security.cryptography.md5%28v=vs.110%29.aspx


    Function insertarUsuario(nick As String, pass As String, email As String, nombre As String, apellido As String, pregunta As String, respuesta As String, avatar As String) As Boolean
        Dim md5Hash As MD5 = MD5.Create()
        Dim rol As String = "socio"
        Dim confirmado As String = "No"
        Dim baja As String = "No"
        Try
            misFuncionesBD.abrirConexion()
            misFuncionesBD.enviarQuery("INSERT INTO Usuarios (nick, pass, email, rol, confirmado, nombre, apellido, pregunta, respuesta, avatar, baja) VALUES ('" & nick & "', '" & pass & "', '" & email & "', '" & rol & "', '" & confirmado & "', '" & nombre & "', '" & apellido & "', '" & pregunta & "', '" & respuesta & "', '" & hashearPass(md5Hash, pass) & "', '" & avatar & "', '" & baja & "')")
            Return True
        Catch ex As Exception
            'No se ha podido insertar el usuario.
        End Try
        misFuncionesBD.cerrarConexion()
        Return False
    End Function

End Class
