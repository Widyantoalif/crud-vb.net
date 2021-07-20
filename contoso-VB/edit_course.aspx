<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="edit_course.aspx.vb" Inherits="contoso_VB.edit_course" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container">


        <h4>Course Update</h4>

        <div class="form-horizontal">
            <hr />
            <table class="nav-justified">
                    <td style="height: 48px" hidden>
                      <asp:TextBox ID="courseid" runat="server" CssClass="form-control col-md-10"></asp:TextBox>
                    </td>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">title</td>
                    <td>
                        <asp:TextBox ID="title" runat="server" CssClass="form-control col-md-10"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">credits</td>
                    <td>
                        <asp:TextBox ID="credits" runat="server" CssClass="form-control col-md-10" style="left: 0px; top: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-default"/>
                    </td>
                </tr>
            </table>
            <hr />
        </div>
        <a href="Course.aspx">Back To List</a>

            </div>


</asp:Content>
