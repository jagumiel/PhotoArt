Imports System.Data.SqlClient

Public Class DB_Logic
    Public conexion_bd As New SqlConnection
    Public lector_bd As SqlDataReader
    Public cadenaDeConexion As String = "Server=tcp:photoart.database.windows.net,1433;Database=PhotoArt;User ID=photoart@photoart;Password=J0s3B3g0;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"


    Function abrirConexion()
        'Código
        conexion_bd = New SqlConnection(cadenaDeConexion)
        Try
            conexion_bd.Open()
        Catch ex As Exception
            'No se ha podido conectar con la base de datos.
        End Try
        Return conexion_bd
    End Function


    Public Sub cerrarConexion()
        Try
            conexion_bd.Close()
        Catch ex As Exception
            'Error al cerrar la conexion.
        End Try
    End Sub


    'Exclusivo para hacer Select. Es decir, esperamos recoger datos.
    Public Function obtenerQuery(ByVal miQuery As String) As SqlDataReader
        Try
            Dim comando As New SqlCommand(miQuery, conexion_bd)
            lector_bd = comando.ExecuteReader()
        Catch ex As Exception
            'Error al recoger datos.
            lector_bd.Close()
        End Try
        Return lector_bd
    End Function


    'Para Insert, Update y Delete. Es decir, esperamos añadir o modificar entradas a la BD.
    Public Sub enviarQuery(ByVal miQuery As String)
        Try
            Dim comando As New SqlCommand(miQuery, conexion_bd)
            lector_bd = comando.ExecuteReader()
            lector_bd.Close()
        Catch ex As Exception
            'No se ha podido guardar en la BD
            lector_bd.Close()
            Exit Sub
        End Try
    End Sub

End Class
