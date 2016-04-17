<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_EditProfile.aspx.cs" Inherits="Madhav_Classes.Student_EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <!--Profile Image-->
            <div class="col-lg-3">
                <asp:Image ID="studentImage" runat="server" CssClass="col-lg-8 img-responsive img-rounded" />
            <br />
                <asp:FileUpload ID="studentImageUpload" runat="server" />
            </div>
            <div class="col-lg-9">
                <!--Name-->
                <div class="col-lg-12 margin1">
                    <div class="col-lg-2">
                        <asp:TextBox CssClass="form-control" ID="studentFirstName" runat="server" />
                    </div>
                    <div class="col-lg-10">
                        <asp:TextBox CssClass="form-control" ID="studentLastName" runat="server" />
                    </div>
                </div>
                <!--End Name-->
                
                <!--Email-->
                <div class="col-lg-12 margin1">
                    Email:
                    <br />
                    <asp:Label ID="studentEmail" runat="server" />
                </div>
                <!--End Email-->

                <!--Phone-->
                <div class="col-lg-12 margin1">
                    Phone:
                    <br />
                    <asp:TextBox CssClass="form-control" ID="studentPhone" runat="server" />
                </div>
                <!--End Phone-->

                <!--AddressLine1-->
                <div class="col-lg-12 margin1">
                    AddressLine1
                    <br />
                    <asp:TextBox CssClass="form-control" ID="studentAddressLine1" runat="server"  />
                </div>
                <!--End AddressLine1-->

                <!--AddressLine2-->
                <div class="col-lg-12 margin1">
                    AddressLine2:
                    <br />
                    <asp:TextBox CssClass="form-control" ID="studentAddressLine2" runat="server" />
                </div>
                <!--End AddressLine2-->

                <!--City-->
                <div class="col-lg-12 margin1">
                    City:
                    <br />
                    <asp:TextBox CssClass="form-control" ID="studentCity" runat="server" />
                </div>
                <!--End City-->

                <!--State-->
                <div class="col-lg-12 margin1">
                    State:
                    <br />
                    <asp:TextBox CssClass="form-control" ID="studentState" runat="server" />
                </div>
                <!--End State-->

                <!--Country-->
                <div class="col-lg-12 margin1">
                    Country:
                    <br />
                    <asp:TextBox CssClass="form-control" ID="studentCountry" runat="server" />
                </div>
                <!--End Country-->

                <!--PinCode-->
                <div class="col-lg-12 margin1">
                    PinCode:
                    <br />
                    <asp:TextBox CssClass="form-control" ID="studentPinCode" runat="server"  />
                </div>
                <!--End PinCode-->

                <asp:Button ID="Save" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="Save_Click" />
            </div>
        </div>
    </div>
</asp:Content>
