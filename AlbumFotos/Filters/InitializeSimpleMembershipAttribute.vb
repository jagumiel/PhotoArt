Imports System.Data.Entity
Imports System.Data.Entity.Infrastructure
Imports System.Threading
Imports WebMatrix.WebData

<AttributeUsage(AttributeTargets.Class Or AttributeTargets.Method, AllowMultiple:=False, Inherited:=True)>
Public NotInheritable Class InitializeSimpleMembershipAttribute
    Inherits ActionFilterAttribute

    Private Shared _initializer As SimpleMembershipInitializer
    Private Shared _initializerLock As New Object
    Private Shared _isInitialized As Boolean

    Public Overrides Sub OnActionExecuting(filterContext As ActionExecutingContext)
        ' Asegúrese de que ASP.NET Simple Membership se inicialice solo una vez por inicio de la aplicación
        LazyInitializer.EnsureInitialized(_initializer, _isInitialized, _initializerLock)
    End Sub

    Private Class SimpleMembershipInitializer
        Public Sub New()
            Database.SetInitializer(Of UsersContext)(Nothing)

            Try
                Using context As New UsersContext()
                    If Not context.Database.Exists() Then
                        ' Crear la base de datos SimpleMembership sin el esquema de migración de Entity Framework
                        CType(context, IObjectContextAdapter).ObjectContext.CreateDatabase()
                    End If
                End Using

                WebSecurity.InitializeDatabaseConnection("DefaultConnection", "UserProfile", "UserId", "UserName", autoCreateTables:=True)
            Catch ex As Exception
                Throw New InvalidOperationException("No se pudo inicializar la base de datos de ASP.NET Simple Membership. Para obtener más información, consulte http://go.microsoft.com/fwlink/?LinkId=256588", ex)
            End Try
        End Sub
    End Class
End Class
