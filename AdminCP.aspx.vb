Imports System.Data.SqlClient
Imports System.Data

Partial Class AdminCP
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
       
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)



        Dim theWebSite As String
        theWebSite = "http://localhost:11767/asp.netwebadminfiles/security/security.aspx"
        Call Shell("explorer.exe " & theWebSite, vbNormalFocus)



    End Sub

    Protected Sub btnUpload_Click(sender As Object, e As System.EventArgs) Handles btnUpload.Click
     
       
    End Sub
End Class
