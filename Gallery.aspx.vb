Imports System.IO

Partial Class Gallery
    Inherits System.Web.UI.Page

    Public Function MapURL(ByVal Path As String) As String
        Dim AppPath As String = _
        HttpContext.Current.Server.MapPath("~")
        Dim url As String = String.Format("~{0}" _
        , Path.Replace(AppPath, "").Replace("\", "/"))
        Return url
    End Function

    Protected Sub Thumbnails_Load(sender As Object, e As EventArgs)
        ''      Dim di As New IO.DirectoryInfo("~/imagestorage/")Server.MapPath("~/imagestorage/")
        ''      Dim diar1 As IO.FileInfo() = di.GetFiles()
        ''     Dim dra As IO.FileInfo
        Dim HTMLStrings As String = ""
        'Dim files As String() = Directory.GetFiles("~/imagestorage/")

        'For Each Name As String In files
        '    HTMLStrings &= "<a href='" & Name & "' target='_blank' class='thumbnail'>"
        '    HTMLStrings &= vbCrLf
        '    HTMLStrings &= "<asp:image CssClass='img-rounded' height='200' ImageUrl='" & Name & "' width='160'/> </a>"
        'Next

        ''list the names of all files in the specified directory
        ''For Each test2 In test
        ''    HTMLStrings &= "<a href='/WebSite1/" & test2.ToString & "' target='_blank' class='thumbnail'>"
        ''    HTMLStrings &= vbCrLf
        ''    HTMLStrings &= "<img alt='Cranberry Cupboard' class='img-rounded' height='200' src='" & test2.ToString & "' width='160'/>"
        ''Next


        Dim di As New IO.DirectoryInfo("~/imagestorage/")
        Dim diar1 As IO.FileInfo() = di.GetFiles()
        Dim dra As IO.FileInfo

        'list the names of all files in the specified directory
        For Each dra In diar1
            HTMLStrings &= "<a href='" & dra.ToString & "' target='_blank' class='thumbnail'>"
            HTMLStrings &= vbCrLf
            HTMLStrings &= "<asp:image CssClass='img-rounded' height='200' ImageUrl='" & dra.ToString & "' width='160'/> </a>"
        Next

        Thumbnails.InnerHtml = HTMLStrings
    End Sub
End Class
