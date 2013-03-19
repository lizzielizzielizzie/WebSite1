Imports System.Data.SqlClient
Imports System.Data

Partial Class AdminCP
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)

        Dim strFilePath As String = Server.MapPath("\immagestorage\")

        '   Dim strBasePath As String
        '    Dim strFilePath As String
        '   Dim strFileName As String

        '   strFileName = "A.jpg"
        '  strBasePath = Application.StartupPath & "\imagestorage"
        ' >> Check if Folder Exists 
        '  If Directory.Exists(strBasePath) = False Then
        '  Call Directory.CreateDirectory(strBasePath)
        '  End If
        ' >> Save Picture 
        ' Call PictureBox1.Image.Save(strBasePath & "\" & strFileName, System.Drawing.Imaging.ImageFormat.Jpeg)



    End Sub

    Protected Sub btnUpload_Click(sender As Object, e As System.EventArgs) Handles btnUpload.Click
        Dim savePath As String = "~\imagestorage\"
        Dim fileName As String = imgUpload.FileName

        savePath += fileName

        imgUpload.SaveAs(savePath)



        lbldisplayimage.Text = savePath



        '   If imgUpload.HasFile Then
        'somefileNameWithExtension = "imagestorage" ' Replace this with  a valid file name
        '  imgUpload.PostedFile.SaveAs(somefileNameWithExtension)
        ' End If
    End Sub


End Class
