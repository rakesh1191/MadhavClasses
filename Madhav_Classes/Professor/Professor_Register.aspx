<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Professor_Register.aspx.cs" Inherits="Madhav_Classes.Professor_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Madhav Classes</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <link href="mainCSS.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
                                    <asp:TextBox CssClass="form-control" id="professorFirstName" runat="server" placeholder="First Name"/>
                                </div>
                                <div class="col-lg-6">
                                    <asp:TextBox CssClass="form-control" id="professorLastName" runat="server" placeholder="Last Name"/>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <asp:TextBox CssClass="form-control" TextMode="Email" id="professorEmail" runat="server" placeholder="Email"/>
                            </div>
                            <div class="col-lg-12">
                                <asp:TextBox CssClass="form-control" TextMode="Password" id="professorPassword" runat="server" placeholder="Password"/>
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
    </form>
</body>
</html>
