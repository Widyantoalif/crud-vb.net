Imports System.Data.SqlClient
Public Class Student
    Inherits System.Web.UI.Page
    Dim connect As New SqlConnection("Data Source=DESKTOP-T0MS1O2;Initial Catalog=Contoso_DB;Integrated Security=True")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ID As Integer = txtid.Text
        Dim lastname As String = txtlastname.Text
        Dim firstmidname As String = txtfirstmidname.Text
        Dim enrollmentdate As String = txtenrollmentdate.Text
        connect.Open()

        Dim command As New SqlCommand("Insert into student values ('" & ID & "', '" & lastname & "', '" & firstmidname & "', '" & enrollmentdate & "')", connect)
        command.ExecuteNonQuery()
        MsgBox("Successfully Inserted", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduct()
    End Sub
    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from student", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            ListProduct()
        End If
    End Sub

    'Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '    Dim ID As Integer = txtid.Text
    '    Dim lastname As String = txtlastname.Text
    '    Dim firstmidname As String = txtfirstmidname.Text
    '    Dim enrollmentdate As String = txtenrollmentdate.Text
    '    connect.Open()

    '    Dim command As New SqlCommand("update student set lastname =  '" & lastname & "', firstmidname = '" & firstmidname & "', enrollmentdate = '" & enrollmentdate & "' where ID= '" & ID & "'  ", connect)
    '    command.ExecuteNonQuery()
    '    MsgBox("Successfully Updated", MsgBoxStyle.Information, "Message")
    '    connect.Close()
    '    ListProduct()
    'End Sub

    'Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
    '    Dim ID As Integer = txtid.Text

    '    connect.Open()

    '    Dim command As New SqlCommand("Delete student where ID= '" & ID & "'  ", connect)
    '    command.ExecuteNonQuery()
    '    MsgBox("Successfully Deleted", MsgBoxStyle.Information, "Message")
    '    connect.Close()
    '    ListProduct()
    'End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim lastname As String = txtlast1.Text
        Dim firstmidname As String = txtfirst1.Text
        Dim enrollmentdate As String = txtdate1.Text

        If lastname = "" And firstmidname = "" Then
            Dim command1 As New SqlCommand("select * from student where EnrollmentDate='" & enrollmentdate & "'", connect)
            Dim sd1 As New SqlDataAdapter(command1)
            Dim dt1 As New DataTable
            sd1.Fill(dt1)
            GridView1.DataSource = dt1
            GridView1.DataBind()

        ElseIf lastname = "" And enrollmentdate = "" Then
            Dim command2 As New SqlCommand("select * from student where FirstMidName='" & firstmidname & "'", connect)
            Dim sd2 As New SqlDataAdapter(command2)
            Dim dt2 As New DataTable
            sd2.Fill(dt2)
            GridView1.DataSource = dt2
            GridView1.DataBind()

        ElseIf firstmidname = "" And enrollmentdate = "" Then
            Dim command3 As New SqlCommand("select * from student where LastName='" & lastname & "' And FirstMidName ='" & firstmidname & "'", connect)
            Dim sd3 As New SqlDataAdapter(command3)
            Dim dt3 As New DataTable
            sd3.Fill(dt3)
            GridView1.DataSource = dt3
            GridView1.DataBind()

        ElseIf enrollmentdate = "" Then
            Dim command5 As New SqlCommand("select * from student where FirstMidName='" & firstmidname & "' LastName='" & lastname & "'", connect)
            Dim sd5 As New SqlDataAdapter(command5)
            Dim dt5 As New DataTable
            sd5.Fill(dt5)
            GridView1.DataSource = dt5
            GridView1.DataBind()

        ElseIf lastname = "" Then
            Dim command6 As New SqlCommand("select * from student where FirstMidName='" & firstmidname & "' And enrollmentdate ='" & enrollmentdate & "'", connect)
            Dim sd6 As New SqlDataAdapter(command6)
            Dim dt6 As New DataTable
            sd6.Fill(dt6)
            GridView1.DataSource = dt6
            GridView1.DataBind()

        Else

            Dim command4 As New SqlCommand("select * from student where LastName='" & lastname & "' And firstmidname='" & firstmidname & "' And enrollmentdate ='" & enrollmentdate & "'", connect)
            Dim sd4 As New SqlDataAdapter(command4)
            Dim dt4 As New DataTable
            sd4.Fill(dt4)
            GridView1.DataSource = dt4
            GridView1.DataBind()

        End If


    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Me.DataBind()

    End Sub
End Class