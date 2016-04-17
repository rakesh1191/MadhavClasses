<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Guest.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Madhav_Classes.index2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <!--Carousel-->
    <div id="myCarousel" class="carousel slide text-center center-block" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active text-center center-block">
              <img  width="100%" height="auto" src="images/cover1.jpg"  />
              </div>
            <div class="item  text-center center-block">
              <img width="100%" height="auto" src="images/cover1.jpg" />
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div><!--End Carousel-->
    <!--End Carousel-->
    <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center center-block border margin5">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border">
             <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 border">
                 <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border" src="images/openBook.png" />
             </div>
             <div class="col-lg-9 border">
                 <p class="fontSize2em  border margin5">Like the tradition goes, we teach students with books.</p>
             </div>
         </div>
         <div class="col-lg-12 border">
             <div class="col-lg-3 border">
                 <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border"  src="images/computer.jpg" />
             </div>
             <div class="col-lg-9 border">
                 <p class="fontSize2em border margin5">However we also have one foot in Modern Technology.</p>
             </div>
         </div>
         <div class="col-lg-12 border">
             <div class="col-lg-3 border">
                 <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border"  src="images/mobileTablet.png" />
             </div>
             <div class="col-lg-9 border">
                 <p class="fontSize2em border margin5">We try our best to keep up with the Technology.</p>
             </div>
         </div>
     </section><!--End 3 Row Container Images-->

     <!--Gayatri Mantra-->
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-rounded">
         <img class="col-lg-12 img-responsive img-rounded" src="images/gayatrimantra.png" />
     </section>
     <!--End Gayatri Mantra-->

     <!--Founder-->
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 margin5">
        <p class="col-lg-9 col-md-9 col-sm-12 col-xs-12 fontSizeOneHalfem">
             Founded by
            <span class="fontRoboto"><strong><i><a target="_blank" href="https://www.facebook.com/mahendra.joshi.9022">Mahendra Joshi</a></i></strong></span>
            , its been almost 11 years at Silver Point, Bhatar Road, Surat since Madhav Classes has started its journey.
            Since then, Mahendra Joshi has never looked back. Teaching Languages mainly Sanskrit, Hindi, Gujarati to kids for Grade 8 to 12,
            Madhav Classes has proved that it excels at every point. Students who have been a part of Madhav Classes has made history in Board Results, placing themselves
            in the top tier every time. Madhav Classes has constantly expanded its reach in Surat.
        </p>
        <img class="col-lg-3 col-md-3 col-sm-12 col-xs-12 text-center center-block img-responsize border img-circle" src="images/MahendraJoshi.jpg" />
      </section>
      <!--End Founder-->

</asp:Content>
