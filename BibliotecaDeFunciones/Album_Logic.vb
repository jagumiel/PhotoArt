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
End Class