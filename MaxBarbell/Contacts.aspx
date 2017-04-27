<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="MaxBarbell.Pages.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Keep in touch!</h1>
    <h2>Send us your questions and suggestions, we will get back to you soon!</h2>


<div id="map" style="width:100%;height:400px;"></div>

<script async defer src="Scripts/maps.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXUExcshWYUCABgf2Tg2FW2siFZYw1-Vk&callback=myMap"></script>

    &nbsp;  

    
<div id="Contact-container">
        
      <div class="auto-style1">
            Name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
            <br />
            <br />

            Phone Number:
            <asp:TextBox ID="txtNo" runat="server"></asp:TextBox>
            
            <br />
            <br />

            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />

            Subject:
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            <br />
            <br />

            Message:
            <br />
            <asp:TextBox ID="txtMsg" runat="server" Height="106px" TextMode="MultiLine" Width="359px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSendEmail" runat="server" OnClick="sendMessageClick" Text="Send" />
            <br />
            <br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
            <br />
        </div>

</div>    

</asp:Content>
