<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin-Default.aspx.cs" Inherits="MaxBarbell.Admin_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Home</h1>

<p>
Max Barbell is a central for gym rats and enthusiasts alike. We provide top notch facilities, specialty equipments, consumables and many more. We also provide personal training and seminars from notable trainers. We also take special orders and requests all can be made through our contact page. 
</p>

    <h1> Here is what we have in store </h1>


<div class="product-wrapper">

   <a href="product-resistancebands.aspx"><img src="Images/product-bands.jpg" alt="Resistance Band" /></a> 
   <a href="product-wheyprotein.aspx"><img src="Images/product-whey.jpg" alt="Whey Protein" /></a>
   <a href="#"><img src="Images/product-plates.jpg" alt="Bumper Plates" /></a>&nbsp;<a href="#"><img src="Images/product-powerlift.jpg" alt="Powerlift 2"/></a>
   <a href="#"><img src="Images/product-romaleos.jpg" alt="Romaleos"/></a>
   <a href="#"><img src="Images/product-sleeves.jpg" alt="Knee Sleeves"/></a>
   <a href="#"><img src="Images/product-slingshot.jpg" alt="Mark Bell Slngshot"/></a>
        
</div>

</asp:Content>
