<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Customer.Master" AutoEventWireup="true" CodeBehind="TableReserve.aspx.cs" Inherits="Template.Templates.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    body
    {
    	width:1468px;
    	height:600px;
    	
    } 
    
   .Container
   {
   	          
       	    height:886px;
            width:681px;
            margin-top:0px;
            margin-left: 400px;
            position:relative;
            left:0%;
            right:0%;
            top:2%;
            background-color:White;
            font-weight:700;
            opacity:0.8;          
            
    }
    .Check
    {
        	background:Blue;
    	    color:White;
    	    font-size:20px;
        	font-family:Calibri;
        	padding:6px 10px;
        	border-bottom:3px solid #925b08;
        	border:none;
        	border-radius:10px;	
    	
    	
    }
    
    
    
    .Reserve
    {
     	    font-size:40px;
        	font-family:Calibri;
        	color:Navy;
        	
    }
    
   
    
    
    
    
      
    
    
    
    .style1
    {
        width: 74%;
        margin-left: 115px;
        height: 670px;
    }
    .style2
    {
        width: 142px;
    }
    .style3
    {
        width: 142px;
        height: 34px;
    }
    .style4
    {
        height: 34px;
    }
    .style5
    {
        width: 142px;
        height: 16px;
    }
    .style6
    {
        height: 16px;
    }
    
   
    
    
    
    
      
    
    
    
    .style7
    {
        width: 142px;
        height: 27px;
    }
    .style8
    {
        height: 27px;
    }
    
   
    
    
    
    
      
    
    
    
    .style9
    {
        width: 142px;
        height: 164px;
    }
    .style10
    {
        height: 164px;
    }
    .style11
    {
        width: 142px;
        height: 80px;
    }
    .style12
    {
        height: 80px;
    }
    
   
    
    
    
    
      
    
    
    
    .style13
    {
        width: 142px;
        height: 44px;
    }
    .style14
    {
        height: 44px;
    }
    
   
    
    
    
    
      
    
    
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 920px; background-image: url('images/pic%203.jpg'); background-repeat: no-repeat;">

<div class="Container">


    &nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label2" runat="server" Text="Make your Reservation" CssClass="Reserve" ></asp:Label>


    <br />
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name : </td>
            <td class="style4">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Booking Id :&nbsp;</td>
            <td class="style6"><asp:TextBox ID="txtBookingID" runat="server" style="margin-left: 2px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;&nbsp;&nbsp;&nbsp; Select Date :</td>
            <td class="style10">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select&nbsp;&nbsp;Time :</td>
            <td class="style12">
                &nbsp;<br />
&nbsp;Start Time :
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>9:30 AM</asp:ListItem>
                    <asp:ListItem>10:30 AM</asp:ListItem>
                    <asp:ListItem>11:30 AM</asp:ListItem>
                    <asp:ListItem>12:30 PM</asp:ListItem>
                    <asp:ListItem>1:00 PM</asp:ListItem>
                    <asp:ListItem>2:00 PM</asp:ListItem>
                    <asp:ListItem>3:00 PM</asp:ListItem>
                    <asp:ListItem>4:00 PM</asp:ListItem>
                    <asp:ListItem>5:00 PM</asp:ListItem>
                    <asp:ListItem>6:00 PM</asp:ListItem>
                    <asp:ListItem>7:00 PM</asp:ListItem>
                    <asp:ListItem>8:00PM</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<br />
                <br />
&nbsp;End Time :&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>10:00 AM</asp:ListItem>
                    <asp:ListItem>10:30 AM</asp:ListItem>
                    <asp:ListItem>11:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>12:30PM</asp:ListItem>
                    <asp:ListItem>1:30 PM</asp:ListItem>
                    <asp:ListItem>2:00 PM</asp:ListItem>
                    <asp:ListItem>2:30 PM</asp:ListItem>
                    <asp:ListItem>3:30 PM</asp:ListItem>
                    <asp:ListItem>4:30 PM</asp:ListItem>
                    <asp:ListItem>5:30 PM</asp:ListItem>
                    <asp:ListItem>6:30 PM</asp:ListItem>
                    <asp:ListItem>7:30 PM</asp:ListItem>
                    <asp:ListItem>9:00 PM</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCheck" runat="server" Text="Check Availability" 
                    Width="176px" CssClass="Check" onclick="btnCheck_Click" />
                <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp; Table Type :&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="table_type" 
                    DataValueField="table_type" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TastyBitesConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [table_type] FROM [tblManage] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Capacity :&nbsp;</td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="capacity" 
                    DataValueField="capacity" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TastyBitesConnectionString %>" 
                    SelectCommand="SELECT [capacity] FROM [tblManage] WHERE (([table_type] = @table_type) AND ([status] = @status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="table_type" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:Parameter DefaultValue="true" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Table Id :&nbsp;</td>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList5" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="table_id" 
                    DataValueField="table_id" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp; 
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TastyBitesConnectionString %>" 
                    SelectCommand="SELECT [table_id] FROM [tblManage] WHERE (([table_type] = @table_type) AND ([capacity] = @capacity) AND ([status] = @status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="table_type" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList4" Name="capacity" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:Parameter DefaultValue="true" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="User Id :" Enabled="False" 
                    Visible="False"></asp:Label>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnBook" runat="server" Text="Book Now" Width="110px"  
                    CssClass="Check" onclick="btnBook_Click" />
            &nbsp;&nbsp;
                <asp:TextBox ID="txtId" runat="server" Enabled="False" Visible="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</div>
</div>
</asp:Content>
