<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assessments.aspx.cs" Inherits="CHIETA_WebApp.Students.Assessments" MasterPageFile="~/Students/ChietaWebMaster.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Assessments</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentWrapper" runat="server">                                                          
    <asp:Label ID="Heading" runat="server" Text="Assessments" class="Heading"></asp:Label>
    <asp:Button ID="Btnass1" runat="server" class="Assbtn1" />
    <asp:Label ID="Lblass1" runat="server" Text="Assessment 1" CssClass="Asslbl1"></asp:Label>
    <asp:Button ID="Btnass2" runat="server" class="Assbtn2"  />
    <asp:Label ID="Lblass2" runat="server" Text="Assessment 2" CssClass="Asslbl2" ></asp:Label>
    <asp:Button ID="btnback" runat="server" Text="Back" CssClass="btnback" />
    
</asp:Content>
