<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Admin.Master" AutoEventWireup="true" CodeBehind="ViewBooking.aspx.cs" Inherits="Template.Templates.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
    .Container
    {        height: 596px;
    }
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('images/pexels-photo-316466.jpg'); background-repeat: no-repeat; height: 603px;">
<div class="Container">





    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="booking_id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="402px" style="margin-left: 219px" 
        Width="818px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="user_id" 
                SortExpression="user_id" />
            <asp:BoundField DataField="table_id" HeaderText="table_id" 
                SortExpression="table_id" />
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" 
                SortExpression="booking_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="starttime" HeaderText="starttime" 
                SortExpression="starttime" />
            <asp:BoundField DataField="endtime" HeaderText="endtime" 
                SortExpression="endtime" />
            <asp:BoundField DataField="table_type" HeaderText="table_type" 
                SortExpression="table_type" />
            <asp:BoundField DataField="capacity" HeaderText="capacity" 
                SortExpression="capacity" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TastyBitesConnectionString %>" 
        SelectCommand="SELECT * FROM [tblreserve]"></asp:SqlDataSource>





</div>


    <br />



</div>

</asp:Content>
