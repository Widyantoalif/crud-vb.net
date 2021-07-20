<%@ Page Title="Course" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.vb" Inherits="contoso_VB.Course" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <a href ="">Create New</a>
    <hr />
    <div  style="padding:15px">

        <div class="form-horizontal">
            <br />
        <table class="nav-justified">
            <tr>
                <td class="col-sm-2 control-label" style="width: 246px">Course ID</td>
                <td>
                    <asp:TextBox ID="txtcourseid" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="col-sm-2 control-label" style="width: 246px">Title</td>
                <td>
                    <asp:TextBox ID="txttitle" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </td>
            </tr>
      
            <tr>
                <td class="col-sm-2 control-label" style="width: 246px; height: 20px">Credits</td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtcredits" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </td>
            </tr>

            <tr>
                <td class="col-sm-2 control-label" style="width: 246px">&nbsp;</td>
                <td>
                    &nbsp;</td>
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
               <%--     <asp:Button ID="Button2" runat="server" Text="Update" Width="74px" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClientClick="return confirm(&quot;Are You Sure to delete?&quot;)" Text="Delete" Width="74px" />--%>
&nbsp;
                    </td>
            </tr>
            
        </table>
            </div>
       <br />

        <div  style="15px">
            <div class="form-horizontal">
            <table class="nav-justified">
                <tr>
                    <td class="col-sm-2 modal-sm" style="width: 243px">Title&nbsp;&nbsp;&nbsp; 
                        <asp:TextBox ID="txttitle1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="col-sm-2 modal-sm" style="width: 270px">Credits from&nbsp;&nbsp;
                        <asp:TextBox ID="txtfrom" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="col-sm-2" style="width: 266px" class="modal-sm">&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Search" Width="74px" />
                    </td>
                    <td>
                        <table class="nav-justified" style="width: 180%">
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
                </div>

        </div>
        
        <div align ="center">


            <hr />
            <asp:GridView ID="GridView1" AllowPaging="true" runat="server" Width="80%" align="center" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging"  class="table table-striped" PageSize="5">
             <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#191919" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#cbcbcb" />
            <Columns>
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Credits" HeaderText="Credits" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="edit_course.aspx?CourseID=<%# Eval("CourseID") %>" class="btn btn-default" >Edit</a>
                        <a href="delete_course.aspx?CourseID=<%# Eval("CourseID") %>" class="btn btn-default" >Hapus</a>
                        <%--<asp:button datafield="studentid" id="btnedit" runat="server" commandname="edit" text="edit" controlstyle-cssclass="btn btn-default"/>--%>
                        <%--<asp:Button DataField="StudentID" ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" ControlStyle-CssClass="btn btn-default" CommandArgument="<%# Container.DataItemIndex %>"/>--%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>


        </div>
        

    </div>
    
</asp:Content>
