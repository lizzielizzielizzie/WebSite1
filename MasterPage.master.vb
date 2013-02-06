
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session.Item("Logged") = "Yes" Then

        End If
    End Sub
End Class

