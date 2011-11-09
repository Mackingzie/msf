$(document).ready(function(){
    //load all questions
    

    function load_questions(){
        $.get('/msf/index.php/welcome/list_all_questions', function(result){
            $('#column2').html(result);
        });
    }

    //hide the all of the element with class msg_body
    $(".msg_body").hide();
    //toggle the componenet with class msg_body
    $(".msg_head").click(function()
    {
        $(this).next(".msg_body").slideToggle(600);
    });

            //form handling
    $('#sortLabels').click(function(evt){
        evt.preventDefault();
        $('#column2 .label, #column2 .default_label').show(300);
        $('#column2 .question').hide(500);

    });
    $('#sortQuestions').click(function(evt){
        evt.preventDefault();
        $('#column2 .question').show();
        $('#column2 .label, #column2 .default_label').hide(500);

    });
    $('#sortAll').click(function(evt){
        evt.preventDefault();
        $('#column2 .label, #column2 .default_label').show(300);
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
            load_questions();
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

        var sortorder = {
            items: items
        };
        if(items.length === 0 || items.length == undefined){
            var itemNull = {
                id: "0",
                order: "0"
            }
            items.push(itemNull);
        }else{

        }

        var id = $('.form_header').attr('action').match(/([0-9]+)+/g);
        var target = '/msf/index.php/welcome/update_questions_to_form/'+id;
        


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
});