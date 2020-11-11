<div class="container-fluid banner">
    <div class="row">
        <div class="col-lg-12">
            <div class="col-md-4 col-sm-offset-4">
                <h2>About</h2>
                <span><i class="fa fa-map-marker"></i> <a href="<?php echo base_url('home'); ?>">Home</a> »<?= $about['title'] ?> </span>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid about">
    <div class="row">
        <h1 data-txt="<?= $about['title'] ?>"><span><?= $about['title'] ?></span></h1>
        <!-- <section id="demos">
            <div class="owl-carousel owl-theme">
                <div class="item">
                    <div class="container">
                        <div class="col-lg-6">
                            <img src="<?php echo base_url() ?>assets/frontend/img/Foodchem-brand.jpg" class="img-responsive" />
                        </div>
                        <div class="col-lg-6">
                            <h2>Foodchem International Corporation</h2>
                            <p>
                                <p>Foodchem is a Chinese leading company in innovation, marketing, and distribution of food additives and ingredients. Now Foodchem has three sub-brand:Foodsweet™/Foodmate™/Foodzymes™</p>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="container">
                        <div class="col-lg-6">
                            <img src="<?php echo base_url() ?>assets/frontend/img/Foodchem-brand.jpg" class="img-responsive" />
                        </div>
                        <div class="col-lg-6">
                            <h2>Foodchem International Corporation</h2>
                            <p>
                                <p>Foodchem is a Chinese leading company in innovation, marketing, and distribution of food additives and ingredients. Now Foodchem has three sub-brand:Foodsweet™/Foodmate™/Foodzymes™</p>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->
        <div class="container bgg">
            <div class="col-lg-10 col-sm-offset-1">
                <div class="col-sm-12">

                  <!--  <div class="col-md-4">
                        <img src="<?php echo base_url() ?>assets/frontend/img/about-3.jpg" />
                    </div>
                    <div class="col-md-4">
                        <img src="<?php echo base_url() ?>assets/frontend/img/about-4.jpg" />
                    </div>
                    <div class="col-md-4">
                        <img src="<?php echo base_url() ?>assets/frontend/img/about-5.jpg" />
                    </div>-->
                    <?= $about['description'] ?>
                    <img src="<?php echo base_url() ?>assets/frontend/img/about-6.jpg" class="img-responsive" />
                  
    
     
        <br>
       
     <img src="<?php echo base_url() ?>assets/frontend/img/banner6.jpg" class="img-responsive" />

 


                </div>
            </div>
        </div>
    </div>
</div>
 <div class="container-fluid health">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>OUR CLIENTS</h1>
                    <div class="col-lg-12">
                        <section id="demos">
                            <div class="row">
                                <div class="large-12 columns">
                                    <div class="owl-carousel owl-theme" id="owl-carousels2">
									<?php foreach($client as $clients):?>
                                        <div class="item">
                                            <div class="col-md-3">
                                                <div class="col-sm-12 grid1">
                                                    <img src="<?php echo base_url(); ?>uploads/brands/<?php  echo $clients->image ;?>" class="img-responsive" />
                                                </div>

                                            </div>

                                        </div>
										<?php endforeach;?>
                                      
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>


<div class="container-fluid history">
    <div class="row">
        <div class="container">
          
            <ul>
                <li><a href="<?php echo base_url(); ?>">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="<?php echo base_url('pro_cat/home-products'); ?>">Products</a></li>
                <li><a href="<?php echo base_url('contact'); ?>">Contact Us</a></li>
              
            </ul>

        </div>
    </div>
</div>



<script>
    $(document).ready(function() {
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
			autoplay:true,
			autoplayTimeout:2000,
          

            responsive: {
                0: {
                    items: 1,
                    nav: true
                },
                600: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 5,
                    nav: true,
                    loop: true,
                    margin: 20
                }
            }
        })
    })
</script>
