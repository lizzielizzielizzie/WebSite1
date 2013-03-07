Imports System.Net.Mail
Partial Class Gallery
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Using message As New MailMessage()
            message.From = New MailAddress(YourEmail.Text.ToString())
            message.[To].Add(New MailAddress("Admin@crancup.net"))
            message.Subject = "Message from " + YourName.Text.ToString() & " via contact page"
            message.Body = Comments.Text.ToString()
            Dim client As New SmtpClient()
            client.Host = "127.0.0.1"
            client.Send(message)
        End Using
    End Sub
End Class
