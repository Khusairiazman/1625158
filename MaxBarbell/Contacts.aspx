<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="MaxBarbell.Pages.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="contact-container">
    
    <h1>Keep in touch!</h1>
    <h2>Send us your questions and suggestions, we will get back to you soon!</h2>
        
      <div>
          Your Name:
          <asp:TextBox ID="textName" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="textName" ErrorMessage="This field must be filled."></asp:RequiredFieldValidator>
          <br />
          <br />

          Email:
          <asp:TextBox ID="textEmail" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ControlToValidate="textEmail" ErrorMessage="This field must be filled."></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegExprtChkEmail" runat="server" ControlToValidate="textEmail" ErrorMessage="Wrong Email Format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          <br />
          <br />

          Subject: &nbsp; 
          <asp:TextBox ID="textSubject" runat="server"></asp:TextBox>
          <br />
          <br />

          Message:
          <br />
          <asp:TextBox ID="textMessage" runat="server" Height="100px" TextMode="MultiLine" Width="350px"></asp:TextBox>
          <br />
          <br />
          <asp:Button ID="sendMessage" Text="Send" runat="server" OnCick="sendMessageClick" />
          <br />
          <br />
          <asp:Literal ID="litResult" runat="server"></asp:Literal>
          <br />
      </div>

</div>    

    <h1>Our Location</h1>



<div id="googleMap" style="width:100%;height:400px;"></div>

<script src="Scripts/maps.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXUExcshWYUCABgf2Tg2FW2siFZYw1-Vk&callback=myMap"></script>

</asp:Content>
