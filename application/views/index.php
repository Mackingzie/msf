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
    
    <link href="<?php echo base_url() ?>css/layout.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>css/design.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>css/text.css" rel="stylesheet" />
    <link rel="stylesheet" href="<?php echo base_url() ?>css/style.css" type="text/css" >
    <link rel="stylesheet" href="<?php echo base_url() ?>css/slide.css" type="text/css" >
    <link rel="stylesheet" href="<?php echo base_url() ?>css/login_style.css" type="text/css" >
    <!-- jQuery - the core -->
    <script src="<?php echo base_url() ?>js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url() ?>js/jquery.json-2.2.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url() ?>js/jquery-ui-1.7.2.custom.min.js" type="text/javascript"></script>
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
   
        $(document).ready(function(){

            
            $('#sortLabels').click(function(evt){
                evt.preventDefault();
                $('#column2 .label').show(300);
                $('#column2 .question').hide(500);

            });$('#sortQuestions').click(function(evt){
                evt.preventDefault();
                $('#column2 .question').show();
                $('#column2 .label').hide(500);

            });
            $('#sortBoth').click(function(evt){
                evt.preventDefault();
                $('#column2 .label').show(300);
                $('#column2 .question').show();
            });
            
            
            $('.dragbox-content').css({
                'visibility': 'hidden',
                'height': '0px'
            });
            $('.dragbox').toggle(function(){
                $(this).find('.dragbox-content').css({
                    'visibility': 'visible',
                    'height': '200px'
                });
            }, function(){
                $(this).find('.dragbox-content').css({
                    'visibility': 'hidden',
                    'height': '1px'
                });
            });

            $('.column').sortable({
                connectWith: '.column',
                handle: 'dt',
                cursor: 'move',
                placeholder: 'placeholder',
                forcePlaceholderSize: true,
                opacity: 0.4,
                start: function(event, ui){
                    //Firefox, Safari/Chrome fire click event after drag is complete, fix for that
                    if($.browser.mozilla || $.browser.safari)
                        $(ui.item).find('.dragbox-content').toggle();
                },
                stop: function(event, ui){
                    //ui.item.css({'top':'0','left':'0'}); //Opera fix
                    //if(!$.browser.mozilla && !$.browser.safari)
                    updateWidgetData();
                }
            })  
            .disableSelection();

            function updateWidgetData(){
                var items=[];
                 
                
                $('#column1').each(function(){
                    $('.dragbox dt', this).each(function(i){
                        
                        var item = {
                            id: $(this).attr('id'),
                            order : i +1
                        };
                       
                        //Push item object into items array
                        items.push(item);
                        
                    });
                });
                //Assign items array to sortorder JSON variable
                
                var sortorder = { items: items };
                if(items.length === 0 || items.length == undefined){
                    var itemNull = {id: "0", order: "0"}
                    items.push(itemNull);
                }else{
                             
                }
                
                var id = $('.form_header').attr('action').match(/([0-9]+)+/g);
                var target = '/msf/index.php/welcome/update_questions_to_form/'+id;
                console.log(items);
                
                
                $.post(target, 'data='+$.toJSON(sortorder), function(response){
                    if(response=="success")
                        var text = $('<div class="success">Saved</div>');
                    $("#column1").prepend(text).hide().fadeIn(1000);
                    setTimeout(function(){
                        $('.success').fadeOut(1000).remove();
                    }, 2000);
                    return false;
                });
               
            }


           
                //hide the all of the element with class msg_body
                $(".msg_body").hide();
                //toggle the componenet with class msg_body
                $(".msg_head").click(function()
                {
                    $(this).next(".msg_body").slideToggle(600);
                });
            

            //doc ready
        });
        
    </script>
</head>
<body>

    <?php
    $this->load->view('login');
    echo '<div id="site_wrapper">';

    $this->load->view('header');
    echo '<div id="content">';
    $this->load->view($include);
    echo '</div>
              <div id="footer">';
    $this->load->view('footer');
    echo '</div>
          </div>';
    ?>

</body>
</html>
