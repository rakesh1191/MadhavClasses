<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Admin.Master" AutoEventWireup="true" CodeBehind="AdminImages.aspx.cs" Inherits="Madhav_Classes.Admin.AdminImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="file" runat="server" />
    <asp:TextBox ID="ImageTitle" runat="server" placeholder="Title"/>
    <asp:Button ID="UploadImage" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="UploadImage_Click" />
    <asp:DataList id="imageList" runat="server" RepeatDirection="Horizontal" RepeatColumns="6">
        <ItemTemplate>
                 
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive">
                    <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive" src="<%# Eval("imagePath") %>"/>
                </div>
                          
                <span class="col-lg-6 col-md-6 col-sm-12 col-xs-12 "><%# Eval("imageDate") %></span>
                <span class="col-lg-6 col-md-6 col-sm-12 col-xs-12 "><%# Eval("imageTitle") %></span>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
