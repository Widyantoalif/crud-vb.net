<%@ Page Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="enrollment_edit.aspx.vb" Inherits="contoso_VB.enrollment_edit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container">


        <h4>Enrollment Update</h4>

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
                <td class="col-sm-2 control-label" style="width: 246px">Student ID</td>
                <td>
                    <asp:DropDownList ID="ddlstudent" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
      
            <tr>
                <td class="col-sm-2 control-label" style="width: 246px; height: 20px">Course ID</td>
                <td style="height: 20px">
                    <asp:DropDownList ID="ddlcourse" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>

            <tr>
                <td class="col-sm-2 control-label" style="width: 246px">Grade</td>
                <td>
                    <asp:TextBox ID="txtgrade" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 246px">&nbsp;</td>
                <td>&nbsp;</td>
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
        <a href="Enrollment.aspx">Back To List</a>

            </div>


</asp:Content>
