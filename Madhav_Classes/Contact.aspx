<%@ Page Title="" Language="C#" MasterPageFile="~/Master_pages/Guest.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Madhav_Classes.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <header class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12 border">
      <div class="page-header col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="fontJosefin fontSize3em  col-lg-12 col-md-12 col-sm-12 col-xs-12 ">Contact us</div>
      </div>
    </header>


    <section>
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border margin2">
              <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 border">
                  <!--Facebook-->
                  <!--Facebook -->
                      <div id="fb-root"></div>
                      <script>(function(d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
                        fjs.parentNode.insertBefore(js, fjs);
                      }(document, 'script', 'facebook-jssdk'));</script>
                  <!--End Facebook-->

                      <div class="fb-page" data-href="https://www.facebook.com/ClassesMadhav/" data-tabs="timeline" data-width="500" data-height="70" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                        <div class="fb-xfbml-parse-ignore">
                          <blockquote cite="https://www.facebook.com/ClassesMadhav/">
                            <a href="https://www.facebook.com/ClassesMadhav/">Madhav Classes</a>
                          </blockquote>
                        </div>
                      </div>
                  <!--End Facebook-->
              </div><!--End Social Networks-->
              <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 border">
                  <div class="panel panel-primary col-lg-12 col-md-12 col-sm-12 col-xs-12 border">
                      <div class="panel-heading col-lg-12 col-md-12 col-sm-12 col-xs-12 border">Leave us a Message</div>
                      <div class="panel-body col-lg-12 col-md-12 col-sm-12 col-xs-12 border">
                        <form action="sendmail.php" method="POST">
                          <input name="firstname" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border form-control" placeholder="First Name" />
                          <input name="lastname" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border form-control" placeholder="Last Name" />
                          <input name="email"  class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border form-control" type="Email" placeholder="Email" />
                          <input name="subject"  class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border form-control" placeholder="Subject" />
                          <textarea name="message" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border form-control" rows="4" placeholder="Message"></textarea>
                          <button type="Submit" value="Submit" class="btn btn-primary margin2 text-center center-block">Send</button>
                        </form>
                      </div>
               </div>
              </div>
              <!--Google+-->
              <!-- Update your html tag to include the itemscope and itemtype attributes. -->

      </div>
    </section>
</asp:Content>
