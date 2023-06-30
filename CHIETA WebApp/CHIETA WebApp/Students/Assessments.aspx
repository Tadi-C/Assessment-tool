<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assessments.aspx.cs" Inherits="CHIETA_WebApp.Students.Assessments" MasterPageFile="~/Students/ChietaWebMaster.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Assessments</title>
    <style>
        .btn3 {
            margin-top: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentWrapper" runat="server">                                                          
    <asp:Label ID="Heading" runat="server" Text="Assessments" class="Heading"></asp:Label>
    <asp:Button ID="Btnass1" runat="server" class="Assbtn1" OnClick="btn_Assessment1_Click" />
    <asp:Label ID="Lblass1" runat="server" Text="Assessment 1" CssClass="Asslbl1"></asp:Label>
    <asp:Button ID="Btnass2" runat="server" class="Assbtn2" OnClick="btn_Assessment2_Click"  />
    <asp:Label ID="Lblass2" runat="server" Text="Assessment 2" CssClass="Asslbl2" ></asp:Label>
    
   
   
    
</asp:Content>
