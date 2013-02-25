
Partial Class VendorLogin
    Inherits System.Web.UI.Page


    Protected Sub LoginButton_Click(sender As Object, e As System.EventArgs)


      


        If Roles.IsUserInRole("admin") Then
            Dim theWebSite As String
            Response.Redirect("/WebSite1/AdminCP.aspx")

        End If

        If Roles.IsUserInRole("vendors") Then
            Dim thewebsite As String

            Response.Redirect("/WebSite1/vendorCP.aspx")


        End If


    End Sub

    Protected Sub UserName_TextChanged(sender As Object, e As System.EventArgs)

    End Sub
End Class
