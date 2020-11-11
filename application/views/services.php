<div class="container-fluid aboutus">
	<div class="row">
    	<img src="<?php echo base_url(); ?>assets/images/about-us-banner.jpg" class="img-responsive"/>
        <h2>Services Birju Flower Store</h2>
    </div>
</div>

<div class="container-fluid tabs">
    <div class="row">
    <h1>Our Services</h1>
    
        <ul class="nav nav-tabs md-tabs nav-justified primary-color" role="tablist">
        
        
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#ser1" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/couple.png" class="img-responsive"/>Wedding Flowers Decoration</a>
            </li>
			
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#ser2" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/engagement.png" class="img-responsive"/>Pre Wedding Function</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#ser3" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/dress.jpg" class="img-responsive"/>Themes Events Decoration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#ser4" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/images.png" class="img-responsive"/>Home Flower Decoration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#ser5" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/car.png" class="img-responsive"/>Car Flower Decoration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#ser6" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/corpo.png" class="img-responsive"/>Corporate Flower Decoration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#ser7" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/diwali.png" class="img-responsive"/>Diwali Flower Decoration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#ser8" role="tab">
                    <img src="<?php echo base_url(); ?>assets/images/birthday.png" class="img-responsive"/>Birthday Decoration</a>
            </li>
        </ul>
		
		
        <div class="tab-content">
		<?php $i= 0;
		foreach( $allSer as $ser ): ?>
            <div class="tab-pane fade in <?php if($i==0){echo "active";}?>" id="ser<?= $ser->id; ?>">
             <h4><?= $ser->title; ?></h4>
                   <div class="col-sm-8">
                   <?= $ser->description; ?>
                   </div>
                   <div class="col-sm-4">
                   	<img src="<?php echo base_url(); ?>uploads/service/<?= $ser->image; ?>" class="img-responsive"/>
                   </div>
           </div>
		   <?php
           $i++;
		   endforeach; ?>
           
            
             
        </div>
		
    </div>
</div>