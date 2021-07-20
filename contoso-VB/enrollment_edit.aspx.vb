Imports System.Data.SqlClient
Public Class enrollment_edit
    Inherits System.Web.UI.Page
    Dim connect As New SqlConnection("Data Source=GUNN-002;Initial Catalog=contoso_db;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then

            Dim checkid = Request.QueryString("EnrollmentID")

            Using cmd As SqlCommand = New SqlCommand("select * from Enrollment where EnrollmentID = '" & checkid & "'")
                cmd.CommandType = CommandType.Text
                cmd.Connection = connect
                connect.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    sdr.Read()
                    txtenroll.Text = sdr("EnrollmentID").ToString()
                    txtgrade.Text = sdr("Grade").ToString()
                    ddlcourse.Text = sdr("CourseID").ToString()
                    ddlstudent.Text = sdr("StudentID").ToString()
                End Using
                connect.Close()
            End Using

            Using cmd As New SqlCommand("SELECT CourseID, Title FROM course")
                cmd.CommandType = CommandType.Text
                cmd.Connection = connect
                connect.Open()
                ddlcourse.DataSource = cmd.ExecuteReader()
                ddlcourse.DataTextField = "Title"
                ddlcourse.DataValueField = "CourseID"
                ddlcourse.DataBind()
                connect.Close()
            End Using

            Using cmd1 As New SqlCommand("SELECT ID, LastName FROM student")
                cmd1.CommandType = CommandType.Text
                cmd1.Connection = connect
                connect.Open()
                ddlstudent.DataSource = cmd1.ExecuteReader()
                ddlstudent.DataTextField = "LastName"
                ddlstudent.DataValueField = "ID"
                ddlstudent.DataBind()
                connect.Close()
            End Using

            ddlcourse.Items.Insert(0, New ListItem("-- Choose Course --", "0"))
            ddlstudent.Items.Insert(0, New ListItem("-- Choose Student --", "0"))

        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim enrollmentid As Integer = txtenroll.Text
        Dim studentid As String = ddlstudent.Text
        Dim courseid As String = ddlcourse.Text
        Dim grade As String = txtgrade.Text
        connect.Open()
        Dim command As New SqlCommand("update enrollment set StudentID =  '" & studentid & "', CourseID = '" & courseid & "', Grade = '" & grade & "' where EnrollmentID= '" & enrollmentid & "' ", connect)
        command.ExecuteNonQuery()
        MsgBox("Data Enrollment berhasil di ubah!", MsgBoxStyle.Information, "Message")
        connect.Close()
        Response.Redirect("/Enrollment.aspx")
    End Sub
End Class