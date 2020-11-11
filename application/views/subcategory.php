<div class="container-fluid Product">
    <div class="row">
        <div class="col-lg-12">
            <div class="col-md-4 col-sm-offset-4">
                <h2>Product</h2>
                <span><i class="fa fa-map-marker"></i> <a href="<?php echo base_url('home'); ?>">Home</a> » Product </span>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid food">
    <div class="row">
        <div class="container">
            <h1 class="sec-tit" data-txt="Category"><span>Category</span></h1>
            <div class="col-lg-10 col-sm-offset-1">
                <ul>
			<?php	/*	foreach ($allsubcat as $scat) : ?>
			
              <li><a href="#"><?php echo $scat->subcat_name?></a> / </li>
             <?php endforeach; */?>
            </div>
            <div class="col-lg-12">
                <?php 
				if($allPro): 
				
				foreach ($allPro as $pro) : ?>
                    <div class="col-md-3">
                        <img src="<?php echo base_url() ?>uploads/products/<?php print_r(getProImg($pro->id)); ?>" class="img-responsive" />
                        <div class="col-sm-12">
                            <a href="<?php echo base_url() . 'product/' . $pro->url ?>"><?php echo $pro->title ?></a>
                            <p> <span>E No. | </span><?php echo $pro->eno ?></p>
                            <p> <span>CAS No. | </span><?php echo $pro->casno ?> </p>
                            <p> <span>Min. Order | </span><?php echo $pro->qty ?> </p>
                        </div>
                    </div>
                <?php endforeach; ?>
<?php else: echo "<h3>No Products Listed  Currently" ?>
<?php endif; ?>

                <!--   <button class="btn-default">Food More+</button>-->
            </div>
        </div>
    </div>
</div>