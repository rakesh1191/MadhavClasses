<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Guest.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Madhav_Classes.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
     <!--Repeat this div for gallery-->
     <asp:DataList id="imageList" runat="server" RepeatDirection="Horizontal" RepeatColumns="6">
       <ItemTemplate>
                 
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive">
                    <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive" src="<%# Eval("imagePath") %>"/>
                </div>
                          
                <span class="col-lg-6 col-md-6 col-sm-12 col-xs-12 "><%# Eval("imageDate") %></span>
                <span class="col-lg-6 col-md-6 col-sm-12 col-xs-12 "><%# Eval("imageTitle") %></span>
        </ItemTemplate>
    </asp:DataList>
    </section>
    <!--End Image Gallery-->

    <!--Modal for enlarging image on click-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body"></div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!--Modal Script-->
    <script>
    $(document).ready(function () {
      $('img').on('click', function () {
        var src = $(this).attr('src');
        var img = '<img src="' + src + '" class="img-responsive"/>';
        $('#myModal').modal();
        $('#myModal').on('shown.bs.modal', function () {
            $('#myModal .modal-body').html(img);
        });
        $('#myModal').on('hidden.bs.modal', function () {
            $('#myModal .modal-body').html('');
        });
      });
    })

    </script>
    <!--End Modal Script-->
</asp:Content>
