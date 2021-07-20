Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Public Class Enrollment
    Inherits System.Web.UI.Page
    Dim connect As New SqlConnection("Data Source=GUNN-002;Initial Catalog=Contoso_DB;Integrated Security=True")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then

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
        ListProduct()
    End Sub

    Private Sub ListProduct()
        Dim command As New SqlCommand("select enrollment.EnrollmentID As ID, course.Title, student.FirstMidName As Name, enrollment.Grade from enrollment inner join student on enrollment.StudentID=student.ID inner join course on enrollment.CourseID=course.CourseID", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim enrollmentid As Integer = txtenroll.Text
        Dim studentid As String = ddlstudent.Text
        Dim courseid As String = ddlcourse.Text
        Dim grade As String = txtgrade.Text
        connect.Open()

        Dim command As New SqlCommand("Insert into enrollment values ('" & enrollmentid & "', '" & studentid & "', '" & courseid & "', '" & grade & "')", connect)
        command.ExecuteNonQuery()
        MsgBox("Successfully Inserted", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduct()
    End Sub

    'Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '    Dim enrollmentid As Integer = txtenroll.Text
    '    Dim studentid As String = ddlstudent.Text
    '    Dim courseid As String = ddlcourse.Text
    '    Dim grade As String = txtgrade.Text
    '    connect.Open()

    '    Dim command As New SqlCommand("update enrollment set StudentID =  '" & studentid & "', CourseID = '" & courseid & "', Grade = '" & grade & "' where EnrollmentID= '" & enrollmentid & "'  ", connect)
    '    command.ExecuteNonQuery()
    '    MsgBox("Successfully Updated", MsgBoxStyle.Information, "Message")
    '    connect.Close()
    '    ListProduct()
    'End Sub

    'Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
    '    Dim enrollmentid As Integer = txtenroll.Text

    '    connect.Open()

    '    Dim command As New SqlCommand("Delete Enrollment  where EnrollmentID = '" & enrollmentid & "'  ", connect)
    '    command.ExecuteNonQuery()
    '    MsgBox("Successfully Deleted", MsgBoxStyle.Information, "Message")
    '    connect.Close()
    '    ListProduct()
    'End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim title As String = txttitle2.Text
        Dim name As String = txtlast.Text
        Dim grade As String = txtgrad.Text

        If title = "" Then

            If name = "" Then
                Dim command As New SqlCommand("select enrollment.EnrollmentID As ID, course.Title, student.FirstMidName As Name, enrollment.Grade from enrollment inner join student on enrollment.StudentID=student.ID inner join course on enrollment.CourseID=course.CourseID where enrollment.Grade = '" & grade & "'", connect)
                Dim sd As New SqlDataAdapter(command)
                Dim dt As New DataTable
                sd.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            Else
                Dim command1 As New SqlCommand("select enrollment.EnrollmentID As ID, course.Title, student.FirstMidName As Name, enrollment.Grade from enrollment inner join student on enrollment.StudentID=student.ID inner join course on enrollment.CourseID=course.CourseID where student.FirstMidName = '" & name & "'", connect)
                Dim sd1 As New SqlDataAdapter(command1)
                Dim dt1 As New DataTable
                sd1.Fill(dt1)
                GridView1.DataSource = dt1
                GridView1.DataBind()
            End If
        Else
            Dim command2 As New SqlCommand("select enrollment.EnrollmentID As ID, course.Title, student.FirstMidName As Name, enrollment.Grade from enrollment inner join student on enrollment.StudentID=student.ID inner join course on enrollment.CourseID=course.CourseID where course.Title = '" & title & "'", connect)
            Dim sd2 As New SqlDataAdapter(command2)
            Dim dt2 As New DataTable
            sd2.Fill(dt2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
        End If
    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Me.DataBind()
    End Sub
End Class