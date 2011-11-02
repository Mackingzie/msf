<script type="text/javascript">
    $(document).ready(function(){
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
                    items.push(item);/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


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
            var target = '/msf/index.php/welcome/submit_users_group/'+id;
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
        $('#form_submit').click(function(){
            updateWidgetData();
        });
    });
</script>
<?php
echo form_open();
echo '<p class="msg_head">Add Users</p>';
echo form_hidden('author_id', $session->userdata('id'));

echo '<p id="create_question"class="msg_head">Add Questions</p>';
echo '<div class="msg_body">';
$this->load->view('create_groups');
echo "</div>";
echo "<div class='column' id='column1'>";
if ($content['users'] != NULL) {
    foreach ($content['users'] as $key) {
        foreach ($key as $item) {

            echo '<dl class="question dragbox">
                    <dt id="' . $item['id'] . '">' . ' ' . $item['email'] . '</dt>
                        <dd class="dragbox-content"></dd>
                    </dl>';
        }
    }
}

echo "</div>";
echo "<div class='column' id='column2'>";

foreach ($content['all_users'] as $item) {
    echo '<dl class="question dragbox">
                    <dt id="' . $item['id'] . '">' . ' ' . $item['email'] . '</dt>
                        <dd class="dragbox-content"></dd>
                    </dl>';
}


echo '</div>';

echo "<div id='content_footer'>";
echo form_submit('submit', 'Save form', 'id="form_submit');
echo form_close();
echo '</div>';
?>
