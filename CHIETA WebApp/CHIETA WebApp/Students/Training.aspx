<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Training.aspx.cs" Inherits="CHIETA_WebApp.Students.Training" MasterPageFile="~/Students/ChietaWebMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Training</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentWrapper" runat="server">                                                          
    <asp:Label ID="Heading" runat="server" Text="Training" class="Heading"></asp:Label>
    <iframe class="watchbox" src="https://youtu.be/CrRsfAPAzEA"></iframe>
    <asp:Button ID="btnback" runat="server" Text="Back" CssClass="btnback" />
    
</asp:Content>
