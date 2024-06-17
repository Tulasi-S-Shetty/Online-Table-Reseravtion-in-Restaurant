<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback1.aspx.cs" Inherits="Template.Templates.Feedback1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         body
         {
         	background-image:url('');
         	background-repeat:no-repeat;
         	height:701px;
         	width:1485px;
         	 	
         }
         
         
         #form1
        {
        	height:562px;
        	width:585px;
        	background-color:White;
        	margin-left:506px;
        	margin-right:auto;	
        	opacity:0.9;
            margin-top: 0px;
        }
        .container
        {
        	
        	
            height: 486px;
            font-weight: 700;
            width: 582px;
            margin-top: 1px;
        } 
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 557px">
    
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            Width="564px" Height="500px" style="margin-top: 0px" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F7DE" />
            <ItemTemplate>
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                comment:
                <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TastyBitesConnectionString %>" 
            SelectCommand="SELECT [name], [comment] FROM [tblfeedback] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
