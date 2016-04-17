<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_Profile.aspx.cs" Inherits="Madhav_Classes.Student_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <!--Profile Image-->
            <div class="col-lg-3">
                <asp:Image ID="studentImage" runat="server" CssClass="col-lg-8 img-responsive img-rounded" />
            </div>
            <div class="col-lg-9">
                <!--Name-->
                <div class="col-lg-12">
                    <div class="col-lg-2">
                        <asp:Label ID="studentFirstName" runat="server" Text="First Name"/>
                    </div>
                    <div class="col-lg-10">
                        <asp:Label ID="studentLastName" runat="server" Text="Last Name"/>
                    </div>
                </div>
                <!--End Name-->
                
                <!--Email-->
                <div class="col-lg-12">
                    <asp:Label ID="studentEmail" runat="server" Text="Email"/>
                </div>
                <!--End Email-->

                <!--Phone-->
                <div class="col-lg-12">
                    <asp:Label ID="studentPhone" runat="server" Text="Phone"/>
                </div>
                <!--End Phone-->

                <!--AddressLine1-->
                <div class="col-lg-12">
                    <asp:Label ID="studentAddressLine1" runat="server" Text="AddressLine1" />
                </div>
                <!--End AddressLine1-->

                <!--AddressLine2-->
                <div class="col-lg-12">
                    <asp:Label ID="studentAddressLine2" runat="server" Text="AddressLine2" />
                </div>
                <!--End AddressLine2-->

                <!--City-->
                <div class="col-lg-12">
                    <asp:Label ID="studentCity" runat="server" Text="City" />
                </div>
                <!--End City-->

                <!--State-->
                <div class="col-lg-12">
                    <asp:Label ID="studentState" runat="server" Text="State" />
                </div>
                <!--End State-->

                <!--Country-->
                <div class="col-lg-12">
                    <asp:Label ID="studentCountry" runat="server" Text="Country" />
                </div>
                <!--End Country-->

                <!--PinCode-->
                <div class="col-lg-12">
                    <asp:Label ID="studentPinCode" runat="server" Text="PinCode" />
                </div>
                <!--End PinCode-->

            </div>
        </div>
    </div>
</asp:Content>
