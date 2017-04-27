<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="product-resistancebands.aspx.cs" Inherits="MaxBarbell.product_resistancebands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <img src="Images/resized-resistancebands.jpg" />
    <h4> Resistance Bands </h4>
    <p> $50 </p>
    <p>  Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here</p>

    <select name="bands-variations">
        <option value="red">Red</option>
        <option value="blue">Blue</option>
        <option value="green">Green</option>
        <option value="purple">Purple</option>
    </select>

    <input type="submit" value="Add to Cart"/>
</asp:Content>
