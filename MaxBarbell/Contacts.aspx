<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="MaxBarbell.Pages.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="contact-container">
  <form id="contact" action="" method="post">
    
    <h1>Keep in touch!</h1>
    <h2>Send us your questions and suggestions, we will get back to you soon!</h2>
   
    <fieldset> <input placeholder="Name" type="text" tabindex="1" required autofocus> </fieldset>
    <fieldset> <input placeholder="Email Address" type="email" tabindex="2" required> </fieldset>
    <fieldset> <input placeholder="Your Phone Number" type="tel" tabindex="3" required> </fieldset>
    <fieldset> <textarea placeholder="Type your Message Here...." tabindex="5" required></textarea> </fieldset>
    <fieldset> <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button> </fieldset>
 
    </form>

    <h1>Our Location</h1>

</div>

<div id="googleMap" style="width:100%;height:400px;"></div>

<script src="Scripts/maps.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXUExcshWYUCABgf2Tg2FW2siFZYw1-Vk&callback=myMap"></script>

</asp:Content>
