Imports System.Data.SqlClient
Public Class delete_student
    Inherits System.Web.UI.Page

    Dim connect As New SqlConnection("Data Source=DESKTOP-T0MS1O2;Initial Catalog=contoso_db;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim checkid = Request.QueryString("ID")

            'If checkid <> "" Then

            Using cmd As SqlCommand = New SqlCommand("select * from Student where ID = '" & checkid & "'")
                cmd.CommandType = CommandType.Text
                cmd.Connection = connect
                connect.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    sdr.Read()

                    StudentID.Text = sdr("ID").ToString()
                    LastName1.Text = sdr("LastName").ToString()
                    FirstMidName1.Text = sdr("FirstMidName").ToString()
                    Enrollment.Text = sdr("EnrollmentDate").ToString()
                End Using
                connect.Close()
            End Using
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim studenid As Integer = StudentID.Text
        Dim lastname As String = LastName1.Text
        Dim firstmidname As String = FirstMidName1.Text
        Dim enrollmentdate As String = Enrollment.Text

        connect.Open()
        Dim command As New SqlCommand("Delete student where ID= '" & studenid & "'", connect)
        command.ExecuteNonQuery()
        MsgBox("Data siswa berhasil di hapus!", MsgBoxStyle.Information, "Message")
        connect.Close()
        Response.Redirect("/Student.aspx")
    End Sub
End Class