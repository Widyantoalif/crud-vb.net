Imports System.Data.SqlClient
Public Class delete_enrollment
    Inherits System.Web.UI.Page
    Dim connect As New SqlConnection("Data Source=GUNN-002;Initial Catalog=contoso_db;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim checkid = Request.QueryString("EnrollmentID")

            'If checkid <> "" Then

            Using cmd As SqlCommand = New SqlCommand("select * from Enrollment where EnrollmentID = '" & checkid & "'")
                cmd.CommandType = CommandType.Text
                cmd.Connection = connect
                connect.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    sdr.Read()

                    txtenroll.Text = sdr("EnrollmentID")
                End Using
                connect.Close()
            End Using
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim txtenrol = txtenroll.Text
        connect.Open()
        Dim command As New SqlCommand("Delete Enrollment where EnrollmentID= '" & txtenrol & "'", connect)
        command.ExecuteNonQuery()
        MsgBox("Data Enrollmennt berhasil di hapus!", MsgBoxStyle.Information, "Message")
        connect.Close()
        Response.Redirect("/Enrollment.aspx")
    End Sub
End Class