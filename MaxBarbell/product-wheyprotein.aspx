<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="product-wheyprotein.aspx.cs" Inherits="MaxBarbell.product_wheyprotein" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <img src="Images/resized-wheyprotein.jpg" />
    <h4> Whey Protein </h4>
    <p> $50 </p>
    <p>  Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here Information on product here</p>

    <select name="protein-flavour">
        <option value="chocolate">Chocolate</option>
        <option value="Vanilla">Vanilla</option>
        <option value="pandan">Pandan</option>
        <option value="strawberry">Strawberry</option>
    </select>

    <input type="submit" value="Add to Cart"/>
</asp:Content>
