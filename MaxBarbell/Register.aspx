<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MaxBarbell.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Registration</h1>

    Username: 
    <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
    <br />
    <br />

    Password: 

    <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
    <br />
    <br />

   
    <asp:Button ID="registerButton" Text="Submit" OnClick="registerButtonClick" runat="server" />
    <br />
    <br />

    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

</asp:Content>
