<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MadhavClasses.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content CssClass="height100" ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <!--Carousel
    <div class="col-lg-12">

    <div id="myCarousel" class="carousel slide border_rounded" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner" role="listbox">
            <div class="item active" >
                <img class="center_image" src="Images/tapi.jpg" alt="Tapi River">
                <div class="opacity5 carousel-caption colorBlackMaterialBG">
                    <h3>Multiple Branches</h3>
                    <p></p>
                </div>
            </div>
            <div class="item">
                <img class="center_image"  src="Images/ghoddod.jpg" alt="Chania">
                <div class="opacity5 carousel-caption colorBlackMaterialBG">
                    <h3>Surat's Best</h3>
                    <p>No competition</p>
                </div>
            </div>

            <div class="item">
                <img class="center_image"  src="Images/mall.jpg" alt="Flower">
                <div class="opacity5 carousel-caption colorBlackMaterialBG">
                    <h3>Surat's Best</h3>
                    <p>No competition</p>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    </div>

    <End Carousel-->
    <section  style="background-color:#757575 !important; color:white;"  class="height100">
        <div class="col-lg-12 height100 margin10">
                 <div class="col-lg-8">
                    <img height="325" width="325" src="Images/namaste.jpg" class="img-circle col-lg-offset-2" />
                </div>
                <div class="col-lg-4 fontSize4em ">
                    संस्कृतम्
                    <br />
                    हिंदी
                    <br />
                    ગુજરાતી
                    <br />
                    English
                </div>
        </div>
    </section>
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center center-block border">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  colorBluishMaterialBG colorGreyMaterialFG border">
             <div class="col-lg-5 col-md-3 col-sm-12 col-xs-12 padding5 border ">
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border " src="images/openbook.png" />
             </div>
             <div class="col-lg-7  padding10 margin1 img-rounded border">
                 <p class="fontSize2em  border margin5">
                     Like the tradition goes, we teach students with books.
                 </p>
             </div>
         </div>
         
         <div class="col-lg-12  colorGreenMaterialBG colorGreyMaterialFG margin1 border">
             <div class="col-lg-7 padding10 margin1 img-rounded border">
                 <p class="fontSize2em border margin5">However we also have one foot in Modern Technology.</p>
             </div>
             <div class="col-lg-5  padding5 margin5  border">
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border"  src="images/computer.png" />
             </div>
             
         </div>
         <div class="col-lg-12  colorRedMaterialBG  colorGreyMaterialFG margin1 border">
             <div class="col-lg-5  padding5  border">
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border"  src="images/mobile.png" />
             </div>
             <div class="col-lg-7  padding10 margin1  img-rounded border">
                 <p class="fontSize2em border margin5">We try our best to keep up with the Technology.</p>
             </div>
         </div>
     </section><!--End 3 Row Container Images-->

     <!--Gayatri Mantra
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-rounded">
         <img class="col-lg-12 img-responsive img-rounded" src="images/gayatrimantra.png" />
     </section>
     End Gayatri Mantra-->

     <!--Founder-->
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 margin5">
        <p class="col-lg-9 col-md-9 col-sm-12 col-xs-12 padding5 fontSizeOneHalfem">
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
