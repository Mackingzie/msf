<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>

<!DOCTYPE html>
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link href="<?php echo base_url() ?>css/layout.css" rel="stylesheet" />
        <link href="<?php echo base_url() ?>css/design.css" rel="stylesheet" />
        <link href="<?php echo base_url() ?>css/text.css" rel="stylesheet" />

        <script type="text/javascript">
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
