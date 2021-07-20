<%@ Page Title="Edit" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit_student.aspx.vb" Inherits="contoso_vb.edit_student" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container">
        <h2><%: Title %></h2>

        <h4>Student</h4>

        <div class="form-horizontal">
            <hr />
            <table class="nav-justified">
                    <td style="height: 48px" hidden>
                        <asp:TextBox ID="StudentID" runat="server" CssClass="form-control col-md-10"></asp:TextBox>
                    </td>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">Last Name</td>
                    <td>
                        <asp:TextBox ID="LastName1" runat="server" CssClass="form-control col-md-10"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">First Mid Name</td>
                    <td>
                        <asp:TextBox ID="FirstMidName1" runat="server" CssClass="form-control col-md-10" style="left: 0px; top: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">Enrollment Date</td>
                    <td>
                        <asp:TextBox ID="Enrollment" runat="server" CssClass="form-control col-md-10" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Create" CssClass="btn btn-default"/>
                    </td>
                </tr>
            </table>
            <hr />
        </div>
        <a href="Student.aspx">Back To List</a>

            </div>


</asp:Content>
