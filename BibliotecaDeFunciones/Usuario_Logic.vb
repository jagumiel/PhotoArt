Imports System.Security.Cryptography
Imports System.Text
Imports System.Data.SqlClient

Public Class Usuario_Logic

    Public md5Hash As MD5 = MD5.Create()
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
        Dim rol As String = "socio"
        Dim confirmado As String = "No"
        Dim baja As String = "No"
        Try
            misFuncionesBD.abrirConexion()
            misFuncionesBD.enviarQuery("INSERT INTO Usuarios (nick, pass, email, rol, confirmado, nombre, apellido, pregunta, respuesta, avatar, baja) VALUES ('" & nick & "', '" & hashearPass(md5Hash, pass) & "', '" & email & "', '" & rol & "', '" & confirmado & "', '" & nombre & "', '" & apellido & "', '" & pregunta & "', '" & respuesta & "', '" & avatar & "', '" & baja & "')")
            Return True
        Catch ex As Exception
            'No se ha podido insertar el usuario.
        End Try
        misFuncionesBD.cerrarConexion()
        Return False
    End Function

    Function iniciarSesion(email As String, pass As String) As Boolean
        'Dim passCifrada As String = hashearPass(md5Hash, pass)
        Dim passCifrada As String = pass 'No está hasheada, el hash se hace en la línea anterior que está comentada
        Dim miQuery As String = "Select email from Usuarios where email='" & email & "' and pass ='" & passCifrada & "';"
        Try
            Dim miLectura As SqlDataReader
            misFuncionesBD.abrirConexion()
            miLectura = misFuncionesBD.obtenerQuery(miQuery)
            While (miLectura.Read)
                Dim miCorreo As String = miLectura("email")
                If (String.Equals(miCorreo, email)) Then
                    misFuncionesBD.cerrarConexion()
                    Return True
                Else
                    misFuncionesBD.cerrarConexion()
                    Return False
                End If
            End While
            miLectura.Close()
        Catch ex As Exception
            misFuncionesBD.cerrarConexion()
            Return False
            'No se ha podido iniciar sesión.
            Return False
        End Try
    End Function

    Function obtenerRol(email As String) As String
        misFuncionesBD.abrirConexion()
        Dim miQuery As String = "Select rol from Usuarios where email='" & email & "';"
        Dim rol As String = "error"
        Try
            Dim miLectura As SqlDataReader
            miLectura = misFuncionesBD.obtenerQuery(miQuery)
            While (miLectura.Read)
                Dim miRol As String = miLectura("rol")
                If (String.Equals(miRol, "socio")) Then
                    rol = "socio"
                ElseIf (String.Equals(miRol, "admin")) Then
                    rol = "admin"
                End If
            End While
        Catch ex As Exception
            'No se ha podido obtener un resultado.
        End Try
        Return rol
    End Function


    Function obtenerNick(email As String) As String
        misFuncionesBD.abrirConexion()
        Dim miQuery As String = "Select nick from Usuarios where email='" & email & "';"
        Dim nick As String = "N/A"
        Try
            Dim miLectura As SqlDataReader
            miLectura = misFuncionesBD.obtenerQuery(miQuery)
            While (miLectura.Read)
                nick = miLectura("nick")
            End While
        Catch ex As Exception
            'No se ha podido obtener el nick.
        End Try
        Return nick
    End Function

End Class
