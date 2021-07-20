<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="contoso_VB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
            <asp:GridView ID="GridView1" runat="server" style="margin-left: 20px" Width="1138px" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table" AutoGenerateColumns="false">
               <FooterStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#191919" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#191919" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#cbcbcb" />
                                    <Columns>
                <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" ControlStyle-CssClass="col-md-5 text-center"/>
                <asp:BoundField DataField="Student" HeaderText="Student" ControlStyle-CssClass="col-md-5 text-center"/>
            </Columns>
        </asp:GridView>
</asp:Content>
