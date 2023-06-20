<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SectionA.aspx.cs" Inherits="CHIETA_WebApp.Students.SectionA" MasterPageFile="~/Students/ChietaWebMaster.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Section A</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentWrapper" runat="server">                                                          
    <asp:Label ID="lblheading" runat="server" Text="Section A" class="Sectionheading"></asp:Label>
    <asp:Label ID="lblsubheadding" runat="server" Text="(Choose the correct answer by marking the column on the left.)" class="subhead"></asp:Label>
    <div class="Timerbox">
        
    </div>
    <div>

    </div>
    <asp:Button ID="btnback" runat="server" Text="Back" CssClass="btnback" />
    
</asp:Content>