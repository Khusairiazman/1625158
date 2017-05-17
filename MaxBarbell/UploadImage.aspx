<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="MaxBarbell.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:FileUpload ID="imageFileUploadControl" runat="server" />

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    <asp:Image ID="CurrentImage" runat="server" />

</asp:Content>
