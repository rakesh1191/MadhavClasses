<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Professor.Master" AutoEventWireup="true" CodeBehind="Professor_Profile.aspx.cs" Inherits="Madhav_Classes.Professor_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
        <div class="col-lg-12 fontSize2em">
            <!--Profile Image-->
            <div class="col-lg-3">
                <asp:Image ID="professorImage" runat="server" CssClass="col-lg-8 img-responsive img-rounded" />
            </div>
            <div class="col-lg-9">
                <!--Name-->
                <div class="col-lg-12 margin1">
                    <div class="col-lg-2">
                        <asp:Label ID="professorFirstName" runat="server" Text="First Name"/>
                    </div>
                    <div class="col-lg-10">
                        <asp:Label ID="professorLastName" runat="server" Text="Last Name"/>
                    </div>
                </div>
                <!--End Name-->
                
                <!--Email-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorEmail" runat="server" Text="Email"/>
                </div>
                <!--End Email-->

                <!--Phone-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorPhone" runat="server" Text="Phone"/>
                </div>
                <!--End Phone-->

                <!--AddressLine1-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorAddressLine1" runat="server" Text="AddressLine1" />
                </div>
                <!--End AddressLine1-->

                <!--AddressLine2-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorAddressLine2" runat="server" Text="AddressLine2" />
                </div>
                <!--End AddressLine2-->

                <!--City-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorCity" runat="server" Text="City" />
                </div>
                <!--End City-->

                <!--State-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorState" runat="server" Text="State" />
                </div>
                <!--End State-->

                <!--Country-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorCountry" runat="server" Text="Country" />
                </div>
                <!--End Country-->

                <!--PinCode-->
                <div class="col-lg-12 margin1">
                    <asp:Label ID="professorPinCode" runat="server" Text="PinCode" />
                </div>
                <!--End PinCode-->

            </div>
        </div>
    </div>
</asp:Content>
