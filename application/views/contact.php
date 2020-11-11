<div class="container-fluid contact">
    <div class="row">
        <div class="col-lg-12">
            <div class="col-md-4 col-sm-offset-4">
                <h2>Contact</h2>
                <span><i class="fa fa-map-marker"></i> <a href="<?php echo base_url('home'); ?>">Home</a> » Contact Us </span>
            </div>
        </div>
    </div>
</div>


<div class="container-fluid map">
    <div class="row">
        <div class="container">
            <h1 class="sec-tit" data-txt="Contact us"><span>Contact us</span></h1>
            <div class="col-lg-12">

                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7020.958575020448!2d76.88079654229098!3d28.374588367508657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d3fdb3465cb31%3A0x6a4940eb462ed67!2sElectrospark!5e0!3m2!1sen!2sin!4v1582273804037!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>

                <div class="col-lg-6 col-sm-offset-1">
                    <h2><?= $contact["about_title"]; ?></h2>
                    <i class="fa fa-map-marker"></i>
                    <h4>ADDRESS</h4> <span>|</span>
                    <p><?= $contact["address"]; ?></p>
                    <div class="clearfix"></div>
                    <i class="fa fa-envelope"></i>
                    <h4>E-MAIL</h4> <span>|</span>
                    <p><?= $contact["email"]; ?></p>
                    <div class="clearfix"></div>
                    <i class="fa fa-skype"></i>
                    <h4>SKYPE</h4> <span>|</span>
                    <p><?= $contact["skype"]; ?></p>
                    <div class="clearfix"></div>
                    <i class="fa fa-phone"></i>
                    <h4>Tel</h4> <span>|</span>
                    <p><?= $contact["phone"]; ?></p>
                    <div class="clearfix"></div>
                    <i class="fa fa-phone-square"></i>
                    <h4>Tel</h4> <span>|</span>
                    <p><?= $contact["mobile"]; ?></p>
                    <div class="clearfix"></div>
                    <hr>
                </div>

            </div>
        </div>
    </div>
</div>

<?php $this->load->helper("form"); ?>
<?php
$attributes = array('id' => 'f_form1', 'method' => 'post', 'class' => 'form_horizontal');
echo form_open_multipart('contact/message', $attributes);
?>

<div class="container-fluid leave">
    <div class="row">
        <div class="container">
            <h1 class="sec-tit" data-txt="Leave Message"><span> Leave Message </span></h1>
            <div class="col-lg-12">
                <p>Contact us for more information on Application Consultation, Sample Support, FOB Pricing etc.You will be replied within 8 hours.</p>
                <form action="/action_page.php">
                    <div class="form-group col-lg-6 nexus">
                        <label for="company">Comapany :</label>
                        <input type="text" class="form-control" name="company" id="company" placeholder="Your Company Name" required>
                    </div>
                    <div class="form-group col-lg-6">
                        <label for="name">Name :</label>
                        <input type="text" class="form-control" name="fname" id="name" placeholder="Name" required>
                    </div>
                    <div class="form-group col-lg-6">
                        <label for="email">Email :</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
                    </div>
                    <div class="form-group col-lg-6">
                        <label for="tel">Tel :</label>
                        <input type="tel" class="form-control" name="phone" id="tel" placeholder="Your Telephone Number" required>
                    </div>
                    <div class="form-group col-lg-12">
                        <label for="comment">INQUIRY :</label>
                        <textarea class="form-control" rows="5" cols="50" id="comment" name="message" placeholder="Please Leave your Message" required></textarea>
                    </div>
                    <input type="submit" class="btn-default" value="Submit" id="f_submit1" name="submit" />
                    <span id="f_error1"></span>

                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $("#f_submit1").click(function() {

            $("#f_form1").submit(function(e) {

                $("#f_error1").html("<img src='<?php echo base_url() ?>/assets/images/loading.gif' alt='Loading'/>");
                var postData = $(this).serializeArray();
                var formURL = $(this).attr("action");
                $.ajax({
                    url: formURL,
                    type: "POST",
                    data: postData,
                    success: function(data, textStatus, jqXHR) {
                        if ($.trim(data) == "Success") {
                            $("#f_error1").html('<p><span class="prettyprintS" style="color:#00ff00;"> Successfully submitted. </span></p>');
                            $('input[type="text"],textarea').val('');

                        } else {
                            $("#f_error1").html('<p><span class="prettyprint" style="color:#ff0000;">' + data + '</span></p>');
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        $("#f_error1").html('<pre><code class="prettyprint" style="color:#ff0000;">AJAX Request Failed<br/> textStatus=' + textStatus + ', errorThrown=' + errorThrown + '</code></pre>');
                    }
                });
                e.preventDefault(); //STOP default action
                e.unbind();
            });

        });
    });
</script>