<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>


<!-- Header-->

<body>
    <?php if ($layout == 'home') {
        include('header.php');
        $this->load->view($layout);
        include('footer.php');
    } else {
        include('headerinner.php');
        $this->load->view($layout);
        include('footerinner.php');
    } ?>
    <!--main content start-->


</body>

</html>