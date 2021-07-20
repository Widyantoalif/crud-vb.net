Imports System.Data.SqlClient
Public Class delete_course
    Inherits System.Web.UI.Page

    Dim connect As New SqlConnection("Data Source=GUNN-002;Initial Catalog=contoso_db;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim checkid = Request.QueryString("CourseID")

            'If checkid <> "" Then

            Using cmd As SqlCommand = New SqlCommand("select * from Course where CourseID = '" & checkid & "'")
                cmd.CommandType = CommandType.Text
                cmd.Connection = connect
                connect.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    sdr.Read()

                    courseid.Text = sdr("CourseID")
                    title.Text = sdr("Title")
                    credits.Text = sdr("Credits")
                End Using
                connect.Close()
            End Using
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim course_id = courseid.Text
        Dim title_course = title.Text
        Dim credits_course = credits.Text
        connect.Open()
        Dim command As New SqlCommand("Delete course where Courseid= '" & course_id & "'", connect)
        command.ExecuteNonQuery()
        MsgBox("Data course berhasil di hapus!", MsgBoxStyle.Information, "Message")
        connect.Close()
        Response.Redirect("/Course.aspx")
    End Sub
End Class