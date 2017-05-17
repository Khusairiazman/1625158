<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MaxBarbell.Default" %>

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
   <a href="product-romaleos.aspx"><img src="Images/product-romaleos.jpg" alt="Romaleos"/></a>

        
</div>

</asp:Content>
