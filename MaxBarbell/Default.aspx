<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MaxBarbell.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Slides {
            text-align: justify;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Home</h1>

	<p>
			Max Barbell is a central for gym rats and enthusiasts alike. We provide top notch facilities, specialty equipments, consumables and many more. We also provide personal training and seminars from notable trainers. We also take special orders and requests all can be made through our contact page. 
	</p>

    <h1> Here is what we have in store </h1>

    <div id="slideshow">
        <img class="Slides" src="Images/resized-powerlift2.jpg" alt="Adidas Powerlift 2.0">
        <img class="Slides" src="Images/resized-kneesleeves.jpg" alt="STrong Kneesleeves"> 
        <img class="Slides" src="Images/resized-romaleos.jpg" alt="Nike Romaleos">
        <img class="Slides" src="Images/resized-slingshot.jpg" alt="Mark Bell Slingshot"> 
        <img class="Slides" src="Images/resized-ssb.jpg" alt="Safety Squat Bar"> 
        <img class="Slides" src="Images/resized-bumperplates.jpg" alt="Bumper Plates">
        <img class="Slides" src="Images/resized-wheyprotein.jpg" alt="Whey Protein">
        <img class="Slides" src="Images/resized-resistancebands.jpg" alt="Westside Bands">
    </div> 

    <script src="Scripts/SlideShowScript.js"></script>

</asp:Content>
