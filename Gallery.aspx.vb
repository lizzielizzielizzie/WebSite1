Imports System.IO

Partial Class Gallery
    Inherits System.Web.UI.Page

    Protected Sub Thumbnails_Load(sender As Object, e As EventArgs)
        '      Dim di As New IO.DirectoryInfo("~/imagestorage/")Server.MapPath("~/imagestorage/")
        '      Dim diar1 As IO.FileInfo() = di.GetFiles()
        '     Dim dra As IO.FileInfo
        Dim HTMLStrings As String = ""
        Dim files As String() = Directory.GetFiles(Server.MapPath("~/imagestorage/"))

        For Each Name As String In files
            HTMLStrings &= "<a href='" & Name & "' target='_blank' class='thumbnail'>"
            HTMLStrings &= vbCrLf
            HTMLStrings &= "<img alt='Cranberry Cupboard' class='img-rounded' height='200' src='" & Name & "' width='160'/> </a>"
        Next
        'list the names of all files in the specified directory
        '    For Each dra In diar1
        '         HTMLStrings &= "<a href='/WebSite1/img/" & dra.ToString & "' target='_blank' class='thumbnail'>"
        '          HTMLStrings &= vbCrLf
        '           HTMLStrings &= "<img alt='Cranberry Cupboard' class='img-rounded' height='200' src='img/" & dra.ToString & "' width='160'/>"
        '   Next

        Thumbnails.InnerHtml = HTMLStrings
    End Sub
End Class
