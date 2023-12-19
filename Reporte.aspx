<%@ Page Title="" Language="C#" MasterPageFile="~/MenuEncuesta.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="Examen3_LuisChavesMora.Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="container text-center">
    <div class="mb-4">
                <h4 class="text-uppercase">REPORTE DE ENCUESTA</h4>
                <!-- Solid divider -->
                <hr class="p-1 bg-dark w-100">
    <p>&nbsp;</p>
</div>
<div>
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="center" ItemStyle-Width="100px"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="True"
            style="background-color: #646464; font-family: Arial; color: White; border: none 0px transparent;" >
        </asp:GridView>
        <hr class="p-1 bg-dark w-100">
        <br />
        <br />
    
</div>





</asp:Content>
