Imports System.Data.SqlClient

Public Class About
    Inherits Page

    Dim connect As New SqlConnection("Data Source=GUNN-002;Initial Catalog=contoso_db;Integrated Security=True")

    Private Sub ListData()
        Dim command As New SqlCommand("select EnrollmentDate, COUNT(EnrollmentDate) AS Student FROM Student GROUP BY EnrollmentDate", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ListData()
    End Sub
End Class