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
<div class="container-fluid details">
  <div class="row">
    <div class="col-lg-12">
      <div class="col-md-4 col-sm-offset-4">
        <h2>Product</h2>
        <span><i class="fa fa-map-marker"></i> <a href="<?php echo base_url('home'); ?>">Home</a> » Product » Food » <?= $proDet['type']?> » <div class="clearfix"></div> <?= $proDet['title']?> </span>
      </div>
    </div>
  </div>
</div>


<div class="container-fluid drop">
  <div class="row">
    <div class="container">
      <div class="col-lg-3">
        <div class="panel-group" id="accordion">
          <div class="panel panel-default">
		  
		  <?php foreach( $allCat as $cat ) : 
		  ?>
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><?php echo $cat->cat_name; ?></a>
              </h4>
            </div>
			
            <div id="collapseOne" class="panel-collapse collapse in">
              <div class="panel-body">
                <table class="table">
				
				<?php $subcat =  $this->db->get_where('tbl_course_subcategory',array('cat_id'=> $cat->id,'status'=>'Active'))->result(); 
				    foreach( $subcat as $scat ) : 
				?>
                  <tr>
                    <td><a href="<?php echo base_url().'pro_cat/'.$cat->url.'/'.$scat->url; ?>"><?php echo $scat->subcat_name; ?></a></td>
                  </tr>
				  <?php endforeach; ?>
                  
                </table>
              </div>

            </div>
			<?php endforeach; ?>
          </div>
        
        </div>
      </div>
      <div class="col-lg-9">
        <?= $proDet['shorttitle']?>
        <div class="clearfix"></div>
        <div class="container container-pro">
          <div class="main">
            <div class="layout">
              <div class="sidebar" data-current="cat_12">
              </div>
              <div class="wrap">
                <div class="intro">
                  <div class="pics-box col-md-6">
                    <div class="showpic"></div>
                    <div id='gallery-1' class='gallery galleryid-479 gallery-columns-1 gallery-size-thumbnail'>
                     
                   
					  <?php foreach( $allImg as $img ) : ?>
                      <dl class='gallery-item'>
                        <dt class='gallery-icon landscape'>
                          <a href='<?php echo base_url(); ?>uploads/products/<?php  echo $img->productimages ;?>'><img width="150" height="112" src="<?php echo base_url(); ?>uploads/products/<?php  echo $img->productimages ;?>" class="img-responsive" /></a>
                        </dt>
                      </dl>
					  <?php endforeach; ?>
                      <br style="clear: both" />
                    
                    </div>

                  </div>
                  <div class="col-md-6">
                    <h1><?= $proDet['title']?></h1>
                    <p><span>Type |</span> <?= $proDet['type']?></p>
                    <p><span>E No. |</span> <?= $proDet['eno']?></p>
                    <p><span>CAS No. |</span> <?= $proDet['casno']?></p>
                    <p><span>Qty in 20' FCL | </span><?= $proDet['qty']?> </p>
                    <p><span>Min. Order |</span> <?= $proDet['minorder']?></p>
                    <p><span>Packaging |</span> <?= $proDet['packaging']?> </p>
					<a href="#xz-form" class="btn-default">Leave Message</a>
                    
                    <button class="btn-danger">Chat Online</button>
                  </div>


                </div>

                <div class="content">
                  <h2 id="sec1">Description</h2>
                  <p><?= $proDet['description'];?></p>

                 
                  <h2 id="sec2">Specification</h2>
                 <?= $proDet['specs'];?>
                  <h2 id="sec3">Certification</h2>
                  <div class="long col-lg-12">
                    <div class="pics-box">
                      <div id='gallery-1' class='gallery galleryid-479 gallery-columns-1 gallery-size-thumbnail'>
                        <dl class='gallery-item'>
                          <dt class='gallery-icon landscape'>
                            <a href="<?php echo base_url();?>/uploads/certi/<?= $proDet['certi1']?>"><img src="<?php echo base_url()?>/uploads/certi/<?= $proDet['certi1']?>" class=" img-responsive" alt="FoodGel™ Carrageenan" aria-describedby="gallery-1-3493" /></a>
                          </dt>

                        </dl>
                        <br style="clear: both" />
                        <dl class='gallery-item'>
                          <dt class='gallery-icon landscape'>
                            <a href='<?php echo base_url();?>/uploads/certi/<?= $proDet['certi2']?>'><img src="<?php echo base_url();?>/uploads/certi/<?= $proDet['certi2']?>" /></a>
                          </dt>
                        </dl>
                        <br style="clear: both" />
                        <dl class='gallery-item'>
                          <dt class='gallery-icon landscape'>
                            <a href="<?php echo base_url();?>/uploads/certi/<?= $proDet['certi3']?>"><img src="<?php echo base_url();?>/uploads/certi/<?= $proDet['certi3']?>" class="img-responsive" /></a>
                          </dt>
                        </dl>
                        <br style="clear: both" />
                      </div>

                    </div>
                  </div>
                  <h2 id="sec4">FAQ</h2>
				  <?= $proDet['faq'];?>
                  
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

   <!--   <div class="main">
        <h2 class="sec-tit">Related Products</h2>
        <div class="col-md-12 bg">
          <div id="rel-pro">

          </div>
        </div>-->
		

        <div class="clearfix"></div>
        <div id="xz-form">
          <h2 class="sec-tit">Leave Message</h2>
          <div class="container-fluid leave">
            <div class="row">
              <div class="container">

                <div class="col-lg-12">
                  <p>Contact us for more information on Application Consultation, Sample Support, FOB Pricing etc.You will be replied within 8 hours.</p>
                 <?php
					$attributes = array('id' => 'f_form1', 'method' => 'post', 'class' => 'form_horizontal');
					echo form_open_multipart('Product/message', $attributes);
?>
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
                      <input type="email" class="form-control"  name="email" id="email" placeholder="Email">
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
        </div>
      </div>
    </div>`
  </div>
</div>







<script src="<?php echo base_url(); ?>assets/frontend/js/script.js"></script>
<script>
  $(document).ready(function() {
    $('.owl-carousel').owlCarousel({
      loop: true,
      margin: 10,
      responsiveClass: true,

      responsive: {
        0: {
          items: 1,
          nav: true
        },
        600: {
          items: 1,
          nav: false
        },
        1000: {
          items: 1,
          nav: true,
          loop: false,
          margin: 20
        }
      }
    })
  })
</script>
<script>
  window.onscroll = function() {
    myFunction()
  };

  var navbar = document.getElementById("navbar");
  var sticky = navbar.offsetTop;

  function myFunction() {
    if (window.pageYOffset >= sticky) {
      navbar.classList.add("sticky")
    } else {
      navbar.classList.remove("sticky");
    }
  }
</script>
<script>
  $(document).ready(function() {
    var $lightbox = $('#lightbox');

    $('[data-target="#lightbox"]').on('click', function(event) {
      var $img = $(this).find('img'),
        src = $img.attr('src'),
        alt = $img.attr('alt'),
        css = {
          'maxWidth': $(window).width() - 100,
          'maxHeight': $(window).height() - 100
        };

      $lightbox.find('.close').addClass('hidden');
      $lightbox.find('img').attr('src', src);
      $lightbox.find('img').attr('alt', alt);
      $lightbox.find('img').css(css);
    });

    $lightbox.on('shown.bs.modal', function(e) {
      var $img = $lightbox.find('img');

      $lightbox.find('.modal-dialog').css({
        'width': $img.width()
      });
      $lightbox.find('.close').removeClass('hidden');
    });
  });
</script>
