<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assessments.aspx.cs" Inherits="CHIETA_WebApp.Students.Assessments" MasterPageFile="~/Students/ChietaWebMaster.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Assessments</title>
    <style>
        .wrapper1 {
    margin-top: 8vh;
    display: flex;
    justify-content: space-evenly;
    flex-wrap: wrap;
    align-content: flex-end;
    align-items: center;
}



.access-btn1 {
    /*height: 45vh;*/
    min-height: 35vh;
    box-shadow: 2px 2px 6px grey;
    border-radius: 10px;
    border: none;
    width: 35%;
    min-width: 40vh;
    max-width: 55vh;
    margin: 0.8rem;
    color: #ffffff;
    font-size: 1.5rem;
    font-weight: bold;
    white-space: normal;
    word-wrap: break-word;
    display: flex;
    align-items: flex-end;
    align-content: flex-end;
    justify-content: flex-end;
    flex-wrap: wrap;
    background-repeat: no-repeat;
    background-position: center center;
    background-size: 100% 100%;
    padding: 0.8rem;
    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

    .access-btn1:hover {
        transform: scale(1.1);
        z-index: 1;
        transition: all 250ms;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentWrapper" runat="server">  
    <div>
    <div class="wrapper1">
         <asp:Label ID="lblMock" runat="server" Text="Label" CssClass="topTitle">Assessments</asp:Label>
    </div>
    
    <div class="wrapper1">
        
    <asp:Button ID="btn3" runat="server" class="access-btn1" Text="Assessment 1" style="background-image: url('images/chietaImages/ass1.jpg')" OnClick=" btnAssess_Click"/>     
    <asp:Button ID="btn4" runat="server" class="access-btn1" Text="Assessment 2" style="background-image: url('images/chietaImages/ass2.jpg')" OnClick=" btnAssess2_Click"/>   
        <asp:Button ID="Button1" runat="server" class="access-btn1" Text="Assessment 3" style="background-image: url('images/chietaImages/ass3.jpg')" OnClick=" btnAssess3_Click"/>   

    </div>
    <div>     
        <button ID="btnBack" runat="server" onserverclick="btnBack_ServerClick" Class="Backbtn">Back</button>
    </div>

    </div>

   
</asp:Content>
