<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Admin.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Template.Templates.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .Delete
    {
        	background:White;
    	    color:Black;
    	    font-size:20px;
        	font-family:Calibri;
        	padding:6px 10px;
        	border-bottom:3px solid #925b08;
        	border:none;
        	border-radius:10px;	
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height: 544px; background-image: url('images/Unpost.jpg'); background-repeat: no-repeat;">


    <br />


    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp; Enter the Table Id to Delete :&nbsp;
    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="86px" 
        CssClass="Delete" onclick="btnDelete_Click"  />
    <br />


</div>
</asp:Content>
