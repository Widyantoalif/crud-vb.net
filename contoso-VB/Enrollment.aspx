<%@ Page Title="Enrollment" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollment.aspx.vb" Inherits="contoso_VB.Enrollment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
        <a href ="">Create New</a>
    <hr />
    <div  style="padding:15px">

        <div class="form-horizontal">
            <br />
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
                <td class="col-sm-2 control-label" style="width: 246px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Insert" Width="71px" />
                &nbsp;
<%--                    <asp:Button ID="Button2" runat="server" Text="Update" Width="74px" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClientClick="return confirm(&quot;Are You Sure to delete?&quot;)" Text="Delete" Width="74px" />--%>
&nbsp;
                    </td>
            </tr>
            
        </table>
            </div>
       <hr />

        <div  style="15px">
            <div class="form-horizontal">
            <table class="nav-justified">
                <tr>
                    <td class="col-sm-2 modal-sm" style="width: 243px">Title&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txttitle2" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="col-sm-2 modal-sm" style="width: 270px">Last Name&nbsp;&nbsp;
                        <asp:TextBox ID="txtlast" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="col-sm-2" style="width: 233px">Grade&nbsp;&nbsp;
                        <asp:TextBox ID="txtgrad" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <table class="nav-justified" style="width: 180%">
                            <tr>
                                <td>
                    <asp:Button ID="Button4" runat="server" Text="Search" Width="74px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
                </div>

        </div>
        
        <div align ="center">
            <hr />
            <asp:GridView ID="GridView1" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" runat="server" Width="80%" align="center"  class="table table-striped" >
                 <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#191919" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#cbcbcb" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="Grade" HeaderText="Grade" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="enrollment_edit.aspx?EnrollmentID=<%# Eval("ID") %>" class="btn btn-default" >Edit</a>
                        <a href="delete_enrollment.aspx?EnrollmentID=<%# Eval("ID") %>" class="btn btn-default" >Hapus</a>
                        <%--<asp:button datafield="studentid" id="btnedit" runat="server" commandname="edit" text="edit" controlstyle-cssclass="btn btn-default"/>--%>
                        <%--<asp:Button DataField="StudentID" ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" ControlStyle-CssClass="btn btn-default" CommandArgument="<%# Container.DataItemIndex %>"/>--%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>
        </div>
    </div>

    
</asp:Content>
