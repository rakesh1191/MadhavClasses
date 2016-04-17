<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_Register.aspx.cs" Inherits="Madhav_Classes.Student_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
        <h3>Welcome</h3>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="col-lg-4 col-lg-offset-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Register
                        </div>
                        <div class="panel-body">
                            <div class="col-lg-12">
                                <div class="col-lg-6">
                                    <asp:TextBox CssClass="form-control" id="studentFirstName" runat="server" placeholder="First Name"/>
                                </div>
                                <div class="col-lg-6">
                                    <asp:TextBox CssClass="form-control" id="studentLastName" runat="server" placeholder="Last Name"/>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <asp:TextBox CssClass="form-control" TextMode="Email" id="studentEmail" runat="server" placeholder="Email"/>
                            </div>
                            <div class="col-lg-12">
                                <asp:TextBox CssClass="form-control" TextMode="Password" id="studentPassword" runat="server" placeholder="Password"/>
                            </div>
                            <div class="col-lg-12">
                                <asp:TextBox CssClass="form-control" TextMode="Password" id="confirmPassword" runat="server" placeholder="Confirm Password"/>
                            </div>
                            <div class="col-lg-12">
                                <div class="col-lg-6">
                                    <asp:Button OnClick="Register_Click" CssClass="btn btn-primary" ID="Register" runat="server" Text="Register" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
