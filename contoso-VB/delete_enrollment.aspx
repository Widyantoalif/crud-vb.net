<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="delete_enrollment.aspx.vb" Inherits="contoso_VB.delete_enrollment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container">


        <h4>do you want to delete this data??</h4>

        <div class="form-horizontal">
            <hr />
            <table class="nav-justified">
                               <tr>
                <td class="col-sm-2 control-label" style="width: 246px">Enrollment ID</td>
                <td>
                    <asp:TextBox ID="txtenroll" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </td>
            </tr>
                <tr>
                    <td class="modal-sm control-label col-md-2" style="width: 293px; font-weight: bold;">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn btn-default"/>
                    </td>
                </tr>
            </table>
            <hr />
        </div>
        <a href="Enrollment.aspx">Back To List</a>

            </div>


</asp:Content>
