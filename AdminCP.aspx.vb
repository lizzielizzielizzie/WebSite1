
Partial Class AdminCP
    Inherits System.Web.UI.Page

    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click

        Dim bldgIDNum As Int32 = FormView_Building.SelectedValue
        If imgUpload.PostedFile IsNot Nothing AndAlso imgUpload.PostedFile.FileName <> "" Then
            Dim imageSize As Byte() = New Byte(imgUpload.PostedFile.ContentLength - 1) {}
            Dim uploadedImage__1 As HttpPostedFile = imgUpload.PostedFile
            uploadedImage__1.InputStream.Read(imageSize, 0, CInt(imgUpload.PostedFile.ContentLength))

            ' Create SQL Connection 
            Dim con As New SqlConnection()
            con.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

            ' Create SQL Command 

            Dim cmd As New SqlCommand()
            cmd.CommandText = "INSERT INTO Table (PrimaryKey,ImageData) VALUES (@PrimaryKey,@ImageData)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con

            Dim PrimaryKey As New SqlParameter("@PrimaryKey", SqlDbType.Int, 32)
        PrimaryKey.Value = (however you want to get it)

            Dim UploadedImage__2 As New SqlParameter("@ImageData", SqlDbType.Image, imageSize.Length)
            UploadedImage__2.Value = imageSize
            cmd.Parameters.Add(UploadedImage__2)
            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()
            If result > 0 Then
                lblMessage.Text = "File Uploaded"
            End If

        End If

        ListView_BldgImages.DataBind()

    End Sub
    End Sub
End Class
