Public Class Foto_Logic

    Dim misFuncionesBD As New BibliotecaDeFunciones.DB_Logic

    Function AgregarFoto(nick As String, ruta As String, album As String) As Boolean
        Try
            misFuncionesBD.abrirConexion()
            misFuncionesBD.enviarQuery("INSERT INTO Fotos (nick, ruta, album) VALUES ('" & nick & "', '" & ruta & "', '" & album & "')")
            Return True
        Catch ex As Exception
            'No se ha podido crear el album.
        End Try
        misFuncionesBD.cerrarConexion()
        Return False
    End Function

    'Obtener Albumes Publicos
    'SELECT ruta FROM Fotos INNER JOIN Albumes ON Fotos.album=Albumes.nombre WHERE Albumes.acceso='Publico';

End Class
