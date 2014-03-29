<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container body-content">



        <div id="home" class="jumbotron">
            <div class="col-md1">
                <p>&nbsp;</p>
                <asp:label runat="server" class="lead" meta:resourcekey="TextIntro">SPRC est une société de services IT qui vous accompagne et vous conseille afin de trouver les solutions optimales. Nous agissons dans différents domaines informatiques comme le dépannage d'ordinateur, création de site web, mise en place de réseau mais aussi des solutions de téléphones IP pour téléphoner au moindre coût.</asp:label>
            <p>
                <img src="Images/logo2.png" alt="" height="40" width="35" style="float: right" />

            </p>
            </div>


        </div>
        <br />
        <div class="row" style="text-align: center">
            <div class="col-md-4">
                <img src="Images/gnome-reseau-preferences-icone-5658-128.png" width="64" height="64" />
                <h2><asp:localize runat="server" meta:resourcekey="Troubleshooting"/></h2>
                <p>
                    <asp:localize runat="server" meta:resourcekey="TroubleshootingAreaDesc"/>
                </p>
            </div>
            <div class="col-md-4" style="text-align: center">
                <img src="Images/cable-connexion-ethernet-reseau-icone-7853-128.png" width="64" height="64" />
                <h2><asp:localize runat="server" meta:resourcekey="Network"/></h2>
                <p>
                    <asp:localize runat="server" meta:resourcekey="NetworkAreaDesc"/>
                </p>
            </div>
            <div class="col-md-4" style="text-align: center">
                <img src="Images/cameraIP.png" width="64" height="64" />
                <h2><asp:localize runat="server" meta:resourcekey="Security"/></h2>
                <p>
                    <asp:localize runat="server" meta:resourcekey="SecurityAreaDesc"/>
                </p>
            </div>
        </div>
        <div class="row" style="text-align: center">
            <div class="col-md-4">
                <img src="Images/printer.png" width="64" height="64" />
                <h2><asp:localize runat="server" meta:resourcekey="Material"/></h2>
                <p>
                    <asp:localize runat="server" meta:resourcekey="MaterialAreaDesc"/>
                </p>
            </div>
            <div class="col-md-4" style="text-align: center">
                <img src="Images/voip.png" width="64" height="64" />
                <h2><asp:localize runat="server" meta:resourcekey="IPTelephony"/></h2>
                <p>
                    <asp:localize runat="server" meta:resourcekey="IPTelephonyAreaDesc"/>
                </p>
            </div>
            <div class="col-md-4" style="text-align: center">
                <img src="Images/html5.png" width="64" height="64" />
                <h2><asp:localize runat="server" meta:resourcekey="WebSite"/></h2>
                <p>
                    <asp:localize runat="server" meta:resourcekey="WebSiteAreaDesc"/>
                </p>
            </div>
        </div>
        <!-- ###################### FOOTER #######################
    ================================================== -->
        <footer class="footer">
            <section id="contact-section" class="arrow_box">
                <div class="container">
                    <div class="row-fluid">
                        <!-- CONTAC HEADER-->
                        <div class="text-center" id="contact">
                            <div id="foot-head">

                                <div class="span12 text-center page-header">

                                    <h3>
                                        <asp:localize runat="server" meta:resourcekey="ContactInfo"/><span class="white">
                                            </span>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ CONTAC HEADER-->


                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <h3><asp:localize runat="server" meta:resourcekey="ContactUs"/></h3>
                            <hr>
                            <address>
                                <%--<strong>Email:</strong> <a href="mailto:#"> name@domain.com</a><br><br>--%>
                                <strong><asp:localize runat="server" meta:resourcekey="MyPhone"/>:</strong> 0472/83.17.69
                            </address>
                        </div>

                        <div class="col-sm-8 contact-form">
                            <%--<form id="contactform" method="post" class="form" role="form" enctype="multipart/form-data" onsubmit="return checkSize(2097152)">--%>
                            <div class="row">
                                <div class="col-xs-6 col-md-6 form-group">
                                    <label for="name"><asp:localize runat="server" meta:resourcekey="Subject"/>:</label>
                                    <input class="form-control" id="name" name="name" placeholder="<%$Resources:Subject.Text%>" type="text" runat="server" required autofocus />
                                </div>
                                <div class="col-xs-5 col-md-5 form-group">
                                    <label for="email"><asp:localize runat="server" meta:resourcekey="YourEmail"/>:</label>
                                    <input class="form-control" id="email" name="email" placeholder="<%$Resources:Email.Text%>" type="email" runat="server" required />
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-xs-11 col-md-11 form-group">
                                    <label for="mail"><asp:localize runat="server" meta:resourcekey="Message"/>:</label>
                                    <asp:TextBox class="form-control" TextMode="MultiLine" runat="server" ID="mail" placeholder="<%$Resources:Message.Text%>" Height="113px" MaxLength="1000"></asp:TextBox>
                                    <%--<textarea class="form-control" id="TextArea1" name="message" placeholder="Message" runat="server" rows="5"></textarea>--%>
                                    <p class="help-block"><asp:localize runat="server" meta:resourcekey="MaxCar"/></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-md-6 form-group">
                                    <div id="mc">
                                        <p><asp:localize runat="server" meta:resourcekey="DrawCapcha"/></p>
                                        <canvas id="mc-canvas"></canvas>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-6 form-group">
                                    <label for="exampleInputFile"><asp:localize runat="server" meta:resourcekey="Attachement"/>:</label>

                                    <input type="file" id="upload" runat="server" >
                                    <p class="help-block"><asp:localize runat="server" meta:resourcekey="AuthorizedAttachment"/></p>
                                </div>
                                <div style="text-align:center;">
                                    <input style="width:200px" id="btnSubmit" type="submit" class="btn btn-primary" runat="server" onserverclick="Unnamed_ServerClick" value="<%$Resources:Send.Text%>" disabled="disabled" />
                                    <input type="hidden" id="fairly-unique-id" value="http://josscrowcroft.com/projects/motioncaptcha-jquery-plugin/" />
                                </div>
                                <div style="text-align:center;" >
                                <p runat="server" ID="MsgSent" style="color:lightgreen"><asp:localize runat="server" meta:resourcekey="MessageSent"/></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-md-12 form-group">
                                    
                                    <%--<button class="btn btn-primary" type="submit" onserverclick="Unnamed_ServerClick" runat="server" onsubmit="return checkSize(2097152)">Submit</button>--%>
                                </div>
                            </div>
                            <%--  </form>--%>
                        </div>
                    </div>



                </div>





                <!-- / ROW-->




            </section>

        </footer>
    </div>
    <div class="">
        <iframe style="width: 100%; height: 300px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=Chemin+du+Valcq,+Braine-l'Alleud,+Belgique&amp;aq=0&amp;oq=chemin+du+valcq&amp;sll=37.0625,-95.677068&amp;sspn=62.61328,135.263672&amp;ie=UTF8&amp;hq=&amp;hnear=Chemin+du+Valcq,+1420+Braine-l'Alleud,+Brabant+Wallon,+R%C3%A9gion+wallonne,+Belgique&amp;t=m&amp;ll=50.694065,4.321404&amp;spn=0.01903,0.036478&amp;z=14&amp;output=embed"></iframe>
        <br />
        <small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=Chemin+du+Valcq,+Braine-l'Alleud,+Belgique&amp;aq=0&amp;oq=chemin+du+valcq&amp;sll=37.0625,-95.677068&amp;sspn=62.61328,135.263672&amp;ie=UTF8&amp;hq=&amp;hnear=Chemin+du+Valcq,+1420+Braine-l'Alleud,+Brabant+Wallon,+R%C3%A9gion+wallonne,+Belgique&amp;t=m&amp;ll=50.694065,4.321404&amp;spn=0.01903,0.036478&amp;z=14" style="color: #0000FF; text-align: left">Agrandir le plan</a></small>
    </div>

    <script type="text/javascript">

        $('#MyForm').motionCaptcha({
            action: '#fairly-unique-id',
            errorMsg: 'Essayez à nouveau.',
            successMsg: 'Captcha réussi!',
            noCanvasMsg: "Votre navigateur ne supporte pas le tag <canvas> - Essayez Chrome, FF4, Safari or IE9.",
            shapes: ['triangle', 'x', 'rectangle', 'circle', 'check', 'zigzag', 'arrow', 'delete', 'pigtail', 'star']
        });

        $(document).ready(function () {

            $('a[href^="#"]').on('click', function (e) {
                e.preventDefault();

                var target = this.hash,
                $target = $(target);

                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top
                }, 900, 'swing', function () {
                    window.location.hash = target;
                });
            });

            $('#<%=btnSubmit.ClientID%>').on('click', function (e) {
                var input = document.getElementById("<%=upload.ClientID%>");
                // check for browser support (may need to be modified)
                if (input.files && input.files.length == 1) {
                    if (input.files[0].size > 2097152) {
                        alert("The file must be less than " + (2097152 / 1024 / 1024) + "MB");
                        e.preventDefault();
                    }
                    if (input.files[0].name.split('.').pop() != 'jpg' && input.files[0].name.split('.').pop() != 'png' 
                        && input.files[0].name.split('.').pop() != 'jpeg' && input.files[0].name.split('.').pop() != 'txt' &&
                        input.files[0].name.split('.').pop() != 'JPG' && input.files[0].name.split('.').pop() != 'PNG'
                        && input.files[0].name.split('.').pop() != 'JPEG' && input.files[0].name.split('.').pop() != 'TXT') {
                        alert("Extension not permitted");
                        e.preventDefault();
                    }
                }
            });

            $('#slate').on('click', function (e) {
                var themesheet = $('<link href="' + themes['slate'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
            $('#cerulean').on('click', function (e) {
                var themesheet = $('<link href="' + themes['cerulean'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
            $('#amelia').on('click', function (e) {
                var themesheet = $('<link href="' + themes['amelia'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
            $('#Cosmo').on('click', function (e) {
                var themesheet = $('<link href="' + themes['cosmo'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
            $('#Cyborg').on('click', function (e) {
                var themesheet = $('<link href="' + themes['cyborg'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
            $('#Lumen').on('click', function (e) {
                var themesheet = $('<link href="' + themes['lumen'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
            $('#Superhero').on('click', function (e) {
                var themesheet = $('<link href="' + themes['superhero'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
            $('#United').on('click', function (e) {
                var themesheet = $('<link href="' + themes['united'] + '" rel="stylesheet" />');
                themesheet.appendTo('head');
                $('.theme-link').click(function () {
                    var themeurl = themes[$(this).attr('data-theme')];
                    themesheet.attr('href', themeurl);
                })
            });
        });

        var themes = {
            "default": "//bootswatch.com/slate/bootstrap.min.css",
            "amelia": "//bootswatch.com/amelia/bootstrap.min.css",
            "cerulean": "//bootswatch.com/cerulean/bootstrap.min.css",
            "cosmo": "//bootswatch.com/cosmo/bootstrap.min.css",
            "cyborg": "//bootswatch.com/cyborg/bootstrap.min.css",
            "flatly": "//bootswatch.com/flatly/bootstrap.min.css",
            "journal": "//bootswatch.com/journal/bootstrap.min.css",
            "readable": "//bootswatch.com/readable/bootstrap.min.css",
            "simplex": "//bootswatch.com/simplex/bootstrap.min.css",
            "slate": "//bootswatch.com/slate/bootstrap.min.css",
            "spacelab": "//bootswatch.com/spacelab/bootstrap.min.css",
            "united": "//bootswatch.com/united/bootstrap.min.css",
            "superhero": "//bootswatch.com/superhero/bootstrap.min.css",
            "lumen": "//bootswatch.com/lumen/bootstrap.min.css"
        }


    </script>


</asp:Content>

