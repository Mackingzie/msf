<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
    <title>Modular School Forms</title>
    <meta http-equiv="Content-Language" content="en-us" />

    <meta name="author" content="Meias" />
<head>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link href="<?php echo base_url() ?>css/layout.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>css/design.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>css/text.css" rel="stylesheet" />
    <link rel="stylesheet" href="<?php echo base_url() ?>css/style.css" type="text/css" >
    <link rel="stylesheet" href="<?php echo base_url() ?>css/slide.css" type="text/css" >
    <link rel="stylesheet" href="<?php echo base_url() ?>css/login_style.css" type="text/css" >
    <!-- jQuery - the core -->
    <script src="<?php echo base_url() ?>js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <!-- Sliding effect -->
    <script src="<?php echo base_url() ?>js/slide.js" type="text/javascript"></script>

    <script type="text/javascript">
        
                 // Copyright 2006-2007 javascript-array.com
             type=""
             var timeout	= 500;
             var closetimer	= 0;
             var ddmenuitem	= 0;


             // open hidden layer
             function mopen(id)
             {
                 // cancel close timer
                 mcancelclosetime();

                 // close old layer
                 if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';

                 // get new layer and show it
                 ddmenuitem = document.getElementById(id);
                 ddmenuitem.style.visibility = 'visible';

             }
             // close showed layer
             function mclose()
             {
                 if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';
             }

             // go close timer
             function mclosetime()
             {
                 closetimer = window.setTimeout(mclose, timeout);
             }

             // cancel close timer
             function mcancelclosetime()
             {
                 if(closetimer)
                 {
                     window.clearTimeout(closetimer);
                     closetimer = null;
                 }
             }

             // close layer when click-out
             document.onclick = mclose;
   

             $(".question").click(function () {
                 $("id:eq(0)").show("fast", function () {
                     /* use callee so don't have to name the function */
                     $(this).next("dd").show(700, arguments.callee);
                 });
             });
             $(".question").click(function () {
                 $(this).hide(2000);
             });

    </script>
</head>
<body>
    <?php
    $this->load->view('login');
    echo '<div id="site_wrapper">';
    echo '<div id="header">';
    $this->load->view('header');
    echo '</div><div id="content">';
    $this->load->view($include);
    echo '</div><div id="footer">';
    $this->load->view('footer');
    echo '</div></div>';
    ?>
</body>
</html>
