Imports System.Data.SqlClient
Public Class Course
    Inherits System.Web.UI.Page
    Dim connect As New SqlConnection("Data Source=GUNN-002;Initial Catalog=Contoso_DB;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            ListProduct()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Courseid As Integer = txtcourseid.Text
        Dim title As String = txttitle.Text
        Dim credit As String = txtcredits.Text
        connect.Open()

        Dim command As New SqlCommand("Insert into course values ('" & Courseid & "', '" & title & "', '" & credit & "')", connect)
        command.ExecuteNonQuery()
        MsgBox("Successfully Inserted", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduct()
    End Sub
    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from course", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

    'Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '    Dim Courseid As Integer = txtcourseid.Text
    '    Dim title As String = txttitle.Text
    '    Dim credit As String = txtcredits.Text
    '    connect.Open()

    '    Dim command As New SqlCommand("update course set title =  '" & title & "', credits = '" & credit & "' where courseid= '" & Courseid & "'  ", connect)
    '    command.ExecuteNonQuery()
    '    MsgBox("Successfully Updated", MsgBoxStyle.Information, "Message")
    '    connect.Close()
    '    ListProduct()
    'End Sub

    'Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
    '    Dim Courseid As Integer = txtcourseid.Text

    '    connect.Open()

    '    Dim command As New SqlCommand("Delete course where Courseid= '" & Courseid & "'  ", connect)
    '    command.ExecuteNonQuery()
    '    MsgBox("Successfully Deleted", MsgBoxStyle.Information, "Message")
    '    connect.Close()
    '    ListProduct()
    'End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim title As String = txttitle1.Text
        Dim creditfrom As String = txtfrom.Text


        If creditfrom = "" Then
            Dim command As New SqlCommand("select * from course where Title='" & title & "'", connect)
            Dim sd As New SqlDataAdapter(command)
            Dim dt As New DataTable
            sd.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

        ElseIf title = "" Then
            Dim command1 As New SqlCommand("select * from course where Credits='" & creditfrom & "' ", connect)
            Dim sd1 As New SqlDataAdapter(command1)
            Dim dt1 As New DataTable
            sd1.Fill(dt1)
            GridView1.DataSource = dt1
            GridView1.DataBind()
        End If

    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Me.DataBind()
    End Sub
End Class