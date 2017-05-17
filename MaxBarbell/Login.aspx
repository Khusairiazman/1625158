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

    <asp:TextBox ID="txtLoginPassword" runat="server" type="password"></asp:TextBox>
    <br />
    <br />

   
    <asp:Button ID="loginButton" Text="Log In" OnClick="loginButtonClick" runat="server" />
    <br />
    <br />

      <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    <asp:Literal ID="litLoginResult" runat="server"></asp:Literal>


       <h1>Registration</h1>

    Username: 
    <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
    <br />
    <br />

    Password: 

    <asp:TextBox ID="txtRegPassword" runat="server" type="password"></asp:TextBox>
    <br />
    <br />

   
    <asp:Button ID="registerButton" Text="Register" OnClick="registerButtonClick" runat="server" />
    <br />
    <br />

    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    <asp:Literal ID="litRegisterResult" runat="server"></asp:Literal>

 

  

  

    


</asp:Content>
