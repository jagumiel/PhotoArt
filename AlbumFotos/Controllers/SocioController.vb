Imports System.IO

Public Class SocioController
    Inherits System.Web.Mvc.Controller
    Dim logicaUsuario As New BibliotecaDeFunciones.Usuario_Logic
    Dim logicaAlbum As New BibliotecaDeFunciones.Album_Logic
    Dim logicaFoto As New BibliotecaDeFunciones.Foto_Logic
    Dim m As New AlbumFotos.PhotoArtEntitiesT_Album


    '
    ' GET: /Socio

    Function Index() As ActionResult
        'Si no hay rol, no está registrado. No puede entrar.
        If Session("Rol") Is Nothing Then
            'Return View(Denegado)
            Return RedirectToAction("Denegado")
        End If
        Dim nombreUsuario As String = CType(Session.Item("Nick"), String)
        ViewData("Message") = "Bienvenido " + nombreUsuario + "."
        Return View()
    End Function


    Function Denegado() As ActionResult
        ViewData("Message") = "No has iniciado sesión."
        Return View()
    End Function

    Function FormNuevoAlbum() As ActionResult
        'ViewData("Message") = "Añade un nuevo álbum a tu colección."
        Return View()
    End Function

    <HttpPost()> _
    Function FormNuevoAlbum(ByVal miNuevoAlbum As Albumes) As ActionResult
        Try
            Dim miNick As String = CType(Session.Item("Nick"), String)
            Dim nombreAlbum As String = miNuevoAlbum.nombre
            Dim miAcceso As String = miNuevoAlbum.acceso
            Dim miPortada As String = "/Default"
            'Comprobar que no exista el álbum
            If (logicaAlbum.CrearAlbum(miNick, nombreAlbum, miAcceso, miPortada)) Then
                MsgBox("Album creado correctamente")
            Else
                MsgBox("No se ha podido crear el álbum")
            End If

        Catch x As Exception
            MsgBox(x.Message)
        End Try
        Return RedirectToAction("Index")
    End Function


    <HttpPost()> _
    Function MisAlbumes(ByVal miAlbum As Albumes) As ActionResult
        Try
            Dim miNick As String = CType(Session.Item("Nick"), String)
            Dim nombreAlbum As String = miAlbum.nombre
            'MsgBox("El album seleccionado es: " + nombreAlbum)
            Session("Album") = nombreAlbum
        Catch x As Exception
            MsgBox(x.Message)
        End Try
        'Return RedirectToAction("Fotos?album=")S
        'Return RedirectToAction("VerAlbum", new { id = 99 });
        Return RedirectToAction("VerAlbum")
    End Function


    Function MisAlbumes() As ActionResult
        'ViewData("Message") = "Añade un nuevo álbum a tu colección."
        Return View()
    End Function


    '
    ' GET: /Socio/Details/5

    Function Details(ByVal miAlbum As Albumes) As ActionResult
        Return View(miAlbum)
        'string Url = "/Home/Details?AlbumID={0}";

    End Function

    '
    ' GET: /Socio/Create

    Function Create() As ActionResult
        Return View()
    End Function

    '
    ' POST: /Socio/Create

    <HttpPost()> _
    Function Create(ByVal collection As FormCollection) As ActionResult
        Try
            ' TODO: Add insert logic here
            Return RedirectToAction("Index")
        Catch
            Return View()
        End Try
    End Function

    '
    ' GET: /Socio/Edit/5

    Function Edit(ByVal id As Integer) As ActionResult
        Return View()
    End Function

    '
    ' POST: /Socio/Edit/5

    <HttpPost()> _
    Function Edit(ByVal id As Integer, ByVal collection As FormCollection) As ActionResult
        Try
            ' TODO: Add update logic here

            Return RedirectToAction("Index")
        Catch
            Return View()
        End Try
    End Function

    '
    ' GET: /Socio/Delete/5

    Function Delete(ByVal id As Integer) As ActionResult
        Return View()
    End Function

    '
    ' POST: /Socio/Delete/5

    <HttpPost()> _
    Function Delete(ByVal id As Integer, ByVal collection As FormCollection) As ActionResult
        Try
            ' TODO: Add delete logic here

            Return RedirectToAction("Index")
        Catch
            Return View()
        End Try
    End Function

    '
    ' GET: /Socio/Delete/5

    Function SubirFoto() As ActionResult
        Return View()
    End Function

    'En nuestro controlador vamos a crear un método post añadiendo el atributo [ HttpPost ] 

    <HttpPost()> _
    Function SubirFoto(ByVal miArchivo As HttpPostedFile) As ActionResult
        'Problema, aqui se pueden subir archivos genéricos.
        Try
            'Obtener info user y album
            Dim nombreUsuario As String = CType(Session.Item("Nick"), String)
            Dim nombreAlbum As String = CType(Session.Item("Album"), String)
            'Obteniendo el nombre del fichero
            Dim nombreFich As String = System.IO.Path.GetFileName(miArchivo.FileName)
            'Guardando la foto en el servidor
            miArchivo.SaveAs(Server.MapPath("~/Images/" + nombreFich))
            'Ya hemos guardado la foto. Hay que referenciarlo en la BD.
            Dim miRuta As String = "Images/" + nombreFich
            logicaFoto.AgregarFoto(nombreUsuario, miRuta, nombreAlbum)
            MsgBox("Foto subida con éxito.")
            Return View("SubirFoto")
        Catch
            Return View("SubirFoto")
        End Try
    End Function

    Function VerAlbum() As ActionResult
        Return View()
    End Function

End Class