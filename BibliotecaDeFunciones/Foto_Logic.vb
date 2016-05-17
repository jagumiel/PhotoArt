Public Class Foto_Logic

    Dim misFuncionesBD As New BibliotecaDeFunciones.DB_Logic

    Function AgregarFoto(nick As String, ruta As String, album As String) As Boolean
        Try
            misFuncionesBD.abrirConexion()
            misFuncionesBD.enviarQuery("INSERT INTO Albumes (nick, ruta, album) VALUES ('" & nick & "', '" & ruta & "', '" & album & "')")
            Return True
        Catch ex As Exception
            'No se ha podido crear el album.
        End Try
        misFuncionesBD.cerrarConexion()
        Return False
    End Function



End Class
