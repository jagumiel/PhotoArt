Imports System.Data.SqlClient

Public Class Album_Logic

    Dim misFuncionesBD As New BibliotecaDeFunciones.DB_Logic

    Function CrearAlbum(nick As String, nombre As String, acceso As String, portada As String) As Boolean
        Try
            misFuncionesBD.abrirConexion()
            misFuncionesBD.enviarQuery("INSERT INTO Albumes (nick, nombre, acceso, portada) VALUES ('" & nick & "', '" & nombre & "', '" & acceso & "', '" & portada & "')")
            Return True
        Catch ex As Exception
            'No se ha podido crear el album.
        End Try
        misFuncionesBD.cerrarConexion()
        Return False
    End Function


    Function obtenerTipoAcceso(nick As String, nombreAlbum As String) As String
        misFuncionesBD.abrirConexion()
        Dim miQuery As String = "Select acceso from Albumes where nick='" & nick & "'and nombre='" & nombreAlbum & "';"
        Dim miTipoAcceso As String = "error"
        Try
            Dim miLectura As SqlDataReader
            miLectura = misFuncionesBD.obtenerQuery(miQuery)
            While (miLectura.Read)
                Dim miAcceso As String = miLectura("acceso")
                If (String.Equals(miAcceso, "Privado")) Then
                    miTipoAcceso = "Privado"
                ElseIf (String.Equals(miAcceso, "Limitado")) Then
                    miTipoAcceso = "miTipoAcceso"
                ElseIf (String.Equals(miAcceso, "Publico")) Then
                    miTipoAcceso = "Publico"
                End If
            End While
        Catch ex As Exception
            'No se ha podido obtener un resultado.
        End Try
        Return miTipoAcceso
    End Function
End Class