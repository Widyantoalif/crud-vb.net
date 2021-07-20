<%@ Page Title="Student" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.vb" Inherits="contoso_VB.Student" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <a href ="">Create New</a>
    <hr />
    <div  style="padding:15px">

        <div class="form-horizontal">
            <br />
        <table class="nav-justified">
            <tr>
                <td class="col-sm-2 control-label" style="width: 246px">ID Student</td>
                <td>
                    <asp:TextBox ID="txtid" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="col-sm-2 control-label" style="width: 246px">Last Name</td>
                <td>
                    <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </td>
            </tr>
      
            <tr>
                <td class="col-sm-2 control-label" style="width: 246px; height: 20px">First Mid Name</td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtfirstmidname" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </td>
            </tr>

            <tr>
                <td class="col-sm-2 control-label" style="width: 246px">Enrollment Date</td>
                <td>
                    <asp:TextBox ID="txtenrollmentdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
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
           <%--         <asp:Button ID="Button2" runat="server" Text="Update" Width="74px" />--%>
&nbsp;
              <%--      <asp:Button ID="Button3" runat="server" OnClientClick="return confirm(&quot;Are You Sure to delete?&quot;)" Text="Delete" Width="74px" />--%>
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
                    <td class="col-sm-2 modal-sm" style="width: 243px">Last Name&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtlast1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="col-sm-2 modal-sm" style="width: 270px">First Mid Name&nbsp;&nbsp;
                        <asp:TextBox ID="txtfirst1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="col-sm-2" style="width: 233px" >Enrollment Date&nbsp;&nbsp;
                        <asp:TextBox ID="txtdate1" runat="server" CssClass="form-control"></asp:TextBox>
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
            <asp:GridView ID="GridView1" AllowPaging="true" runat="server" Width="80%" align="center" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="SpringGreen" class="table table-striped" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                      <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#191919" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#cbcbcb" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Student ID" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="FirstMidName" HeaderText="First Mid Name" />
                <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="edit_students.aspx?id=<%# Eval("ID") %>" class="btn btn-default" >Edit</a>
                        <a href="delete_student.aspx?id=<%# Eval("ID") %>" class="btn btn-default" >Hapus</a>
                        <%--<asp:button datafield="studentid" id="btnedit" runat="server" commandname="edit" text="edit" controlstyle-cssclass="btn btn-default"/>--%>
                        <%--<asp:Button DataField="StudentID" ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" ControlStyle-CssClass="btn btn-default" CommandArgument="<%# Container.DataItemIndex %>"/>--%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>


    
    
</asp:Content>
