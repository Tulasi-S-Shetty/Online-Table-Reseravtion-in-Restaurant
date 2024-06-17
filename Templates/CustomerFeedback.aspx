<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerFeedback.aspx.cs" Inherits="Template.Templates.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
    
    
    .Container
    {
        height: 328px;
        width: 515px;
        margin-left: 450px;
        background-color:Silver;
        opacity:0.8;
        position:relative;
        left:50%;
        top:50%;
        transform:translate(-150%,-70%);
               
    }
    .Submit
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
    
    
    
    
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 568px; background-image: url('images/Feedback3.jpg'); background-repeat: no-repeat;">
 <div class="Container">



     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     User Id&nbsp; :&nbsp;&nbsp;
     <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     Name :&nbsp;&nbsp;
     <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     Comment :&nbsp;
     <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox>
     <br />
&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     <asp:Button ID="btnSubmit" runat="server" Height="32px" Text="Submit" 
         Width="97px" CssClass="Submit" onclick="btnSubmit_Click1" />
     <br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>


    


     &nbsp;&nbsp;



    


 </div>
</asp:Content>
