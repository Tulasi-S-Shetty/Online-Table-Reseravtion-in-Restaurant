<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Customer.Master" AutoEventWireup="true" CodeBehind="TableReserve1.aspx.cs" Inherits="Template.Templates.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        body
        {
        	background-image:url("Images/Reserve1.jpg");
        	background-repeat:no-repeat;
        	height:716px;
        }
        #form1
        {
        	height:705px;
        	width:1517px;
        	background-color:White;
        	opacity:0.8;
        	
        	
        }
        .Book
        {
        	border-style: none;
            border-color: inherit;
            border-width: medium;
            background: Blue;
            color:White;
    	    font-size:20px;
        	font-family:Calibri;
        	padding:6px 10px;
        	border-radius:10px;
            height: 44px;
        }
        .Cancel
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
        
        .Feedback
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
        	font-family:Arabic Transparent;
        	color:Navy;	
        }
        
        .container
        {
            height: 593px;
            font-weight:800;
            width:1036px;
        }
        .style1
        {
            width: 100%;
            height: 968px;
        }
        .style2
        {
            width: 303px;
            font-weight: bold;
        }
        .style3
        {
            width: 649px;
        }
        .style4
        {
            width: 303px;
            height: 111px;
        }
        .style6
        {
            width: 303px;
            height: 272px;
        }
        .style7
        {
            width: 649px;
            height: 272px;
        }
        .style8
        {
            width: 303px;
            font-weight: bold;
            height: 108px;
        }
        .style9
        {
            width: 649px;
            height: 108px;
        }
        .style10
        {
            width: 303px;
            font-weight: bold;
            height: 79px;
        }
        .style11
        {
            width: 649px;
            height: 79px;
        }
        .style12
        {
            width: 303px;
            font-weight: bold;
            height: 139px;
        }
        .style13
        {
            width: 649px;
            height: 139px;
        }
        .style14
        {
            width: 649px;
            height: 111px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height: 968px">
 <br />


    
        &nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Reserve  Table Here" CssClass="Reserve" ></asp:Label>


    
        <br />
        <table class="style1">
            <tr>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <b>&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name :<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                <td class="style14">
                    &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
                        Text="User Id :"></asp:Label>
                    <b>&nbsp;</b>
                    <asp:TextBox ID="txtUser" runat="server" Width="88px" Enabled="False"></asp:TextBox>
                    &nbsp;<b>Table Id :<asp:DropDownList ID="DropDownList5" runat="server" 
                        AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="table_id" 
                        DataValueField="table_id">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;<br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Booking ID :"></asp:Label>
&nbsp;
                    <asp:TextBox ID="txtBookingId" runat="server"></asp:TextBox>
                    <br />
                    <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
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
                    &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><br />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <b>&nbsp;&nbsp; Select Date :</b></td>
                <td class="style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Calendar ID="Calendar1" runat="server">
                    </asp:Calendar>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Time :&nbsp;</td>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp; Start Time : 
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>10:00 AM</asp:ListItem>
                        <asp:ListItem>10:30 AM</asp:ListItem>
                        <asp:ListItem>11:00 AM</asp:ListItem>
                        <asp:ListItem>11:30 AM</asp:ListItem>
                        <asp:ListItem>12:00 PM</asp:ListItem>
                        <asp:ListItem>12:30 PM</asp:ListItem>
                        <asp:ListItem>1:00 PM</asp:ListItem>
                        <asp:ListItem>1:30 PM</asp:ListItem>
                        <asp:ListItem>2:00 PM</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    End Time :&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>10:30 AM</asp:ListItem>
                        <asp:ListItem>11:00 AM</asp:ListItem>
                        <asp:ListItem>11:30AM</asp:ListItem>
                        <asp:ListItem>12:00 PM</asp:ListItem>
                        <asp:ListItem>12:30 PM</asp:ListItem>
                        <asp:ListItem>1:00 PM</asp:ListItem>
                        <asp:ListItem>1:30 PM</asp:ListItem>
                        <asp:ListItem>2:00 PM</asp:ListItem>
                        <asp:ListItem>2:30 PM</asp:ListItem>
                        <asp:ListItem>3:00 PM</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCheck" runat="server" Text="Check" 
                        Width="85px" />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Table Type :&nbsp;</td>
                <td class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="table_type" 
                        DataValueField="table_type">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TastyBitesConnectionString %>" 
                        
                        
                        SelectCommand="SELECT DISTINCT [table_type] FROM [tblManage] WHERE ([status] = @status)" >
                        <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
&nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                    Capacity :&nbsp;</td>
                <td class="style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="capacity" 
                        DataValueField="capacity">
                    </asp:DropDownList>
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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
                <td class="style12">
                    </td>
                <td class="style13">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBook" runat="server" Text="Book Now " Width="108px"  CssClass="Book" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="View Booking" CssClass="Cancel" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Give Feedback" Width="148px" 
                        CssClass="Feedback" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnDelete" runat="server"
                        Text="Cancel Booking" style="margin-left: 31px" CssClass="Cancel" />
                    <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>


    
        <br />
        &nbsp;<br />
        <br />
&nbsp;&nbsp;


    
        <br />
        <br />
&nbsp;


    
    </div>
    </form>
</body>
</html>


    


</div>

</asp:Content>
