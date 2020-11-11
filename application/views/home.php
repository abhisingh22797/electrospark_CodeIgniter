<div class="container-fluid container-home">
    <div class="row">
        <ul class="secnav">
            <li><a href="#sec-1"><?= $allData["sec1_title"]; ?></a></li>
            <li><a href="#sec-2"><?= $allData["sec2_title"]; ?></a></li>
            <li><a href="#sec-3"><?= $allData["sec3_title"]; ?></a></li>
            <li><a href="#sec-4"><?= $allData["sec4_title"]; ?></a></li>
            <li><a href="#sec-5"><?= $allData["sec5_title"]; ?></a></li>
            <li><a href="#sec-6"><?= $allData["sec6_title"]; ?></a></li>
        </ul>
        <div class="secwrap">
            <li id="sec-1">
			
                <div class="txt">
                    <h2><?= $allData["sec1_title"]; ?></h2>
                    <p><?= $allData["sec1_des"]; ?></p>
                    <p><a class="more" href="<?php echo base_url('about'); ?>">Learn More</a></p>

                </div>
                <img src="<?php echo base_url() ?>assets/frontend/img/arrow.png" class="img-responsive" />
            </li>
            <li id="sec-2">
                <div class="txt">
                    <h2><?= $allData["sec2_title"]; ?></h2>
                    <p class="links"><?= $allData["sec2_des"]; ?></p>
                    <p><a class="more" href="<?php echo base_url('about'); ?>">Learn More</a></p>
                </div>
                <img src="<?php echo base_url() ?>assets/frontend/img/arrow.png" class="img-responsive" />
            </li>
            <li id="sec-3">
                <div class="txt">
                    <h2><?= $allData["sec3_title"]; ?></h2>
                    <p><?= $allData["sec3_des"]; ?></p>
                    <p><a class="more" href="<?php echo base_url('about'); ?>">Learn More</a></p>
                </div>
                <img src="<?php echo base_url() ?>assets/frontend/img/arrow.png" class="img-responsive" />
            </li>
            <li id="sec-4">
                <div class="txt">
                    <h2><?= $allData["sec4_title"]; ?></h2>
                    <p class="links"><?= $allData["sec4_des"]; ?></p>
                    <p><a class="more" href="<?php echo base_url('about'); ?>">Learn More</a></p>
                </div>
                <img src="<?php echo base_url() ?>assets/frontend/img/arrow.png" class="img-responsive" />
            </li>
            <li id="sec-5">
                <div class="txt">
                    <h2><?= $allData["sec5_title"]; ?></h2>
                    <p class="links"><?= $allData["sec5_des"]; ?></p>
                    <p><a class="more" href="<?php echo base_url('about'); ?>">Learn More</a></p>
                </div>
                <img src="<?php echo base_url() ?>assets/frontend/img/arrow.png" class="img-responsive" />
            </li>
            <li id="sec-6">
                <div class="txt">
                    <h2></h2>
                    <h2><?= $allData["sec6_title"]; ?></h2>
                    <p class="links"><?= $allData["sec6_des"]; ?></p>
                    <p><a class="more" href="<?php echo base_url('about'); ?>">Learn More</a></p>
                </div>
            </li>
        </div>
    </div>
</div>

<script src="<?php echo base_url(); ?>assets/frontend/js/scripts.js"></script>
<script>
    $(document).ready(function() {
        $(window).scroll(function() {
            var scroll = $(window).scrollTop();
            if (scroll > 300) {
                $(".navbar-inverse").css("background", "rgba(0,0,0,.5)");
            } else {
                $(".navbar-inverse").css("background", "");
            }
        })
    })
</script>