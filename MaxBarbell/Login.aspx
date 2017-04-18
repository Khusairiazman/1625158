<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MaxBarbell.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Log in</h1>

    Username: 
    <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
    <br />
    <br />

    Password: 

    <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
    <br />
    <br />

   
    <asp:Button ID="loginButton" Text="Registeration" OnClick="loginButtonClick" runat="server" />
    <br />
    <br />

    <asp:Literal ID="litLoginError" runat="server"></asp:Literal>


    


</asp:Content>
