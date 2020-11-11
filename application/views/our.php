
<div class="container-fluid banner">
	<div class="row">
    	<div class="col-lg-12">
        	<div class="col-md-4 col-sm-offset-4">
            	<h2>Our Clients</h2>
                <span><i class="fa fa-map-marker"></i> <a href="<?php base_url();?>">Home</a> »Our Clients</span>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid clients">
	<div class="row">
    	<div class="col-lg-10 col-lg-offset-1">
       <?php foreach($client as $clients):?>
        	<div class="col-md-2">
            	<img src="<?php echo base_url(); ?>uploads/brands/<?php  echo $clients->image ;?>" class="img-responsive">
                </div>
				<?php endforeach;?>
         
            </div>
        </div>
    </div>


