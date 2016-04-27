<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Professor.Master" AutoEventWireup="true" CodeBehind="Professor_MakeTest.aspx.cs" Inherits="Madhav_Classes.Professor_MakeTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:TextBox ID="testTitle" runat="server"  placeholder="Title"/>
    <asp:TextBox ID="testSubject" runat="server" placeholder="Subject"/>
    <asp:TextBox ID="testDetails" runat="server" placeholder="Details/Instructions"/>
    <asp:TextBox ID="testDuration" runat="server" placeholder="Minutes" />

</asp:Content>
