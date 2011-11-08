<script type="text/javascript">
    $(document).ready(function(){
        $('.gcolumn').sortable({
            connectWith: '.gcolumn',
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

        $('#form_submit').click(function(){
            var items=[];


            $('#gcolumn1').each(function(){
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

            var author_id = $("hidden[name=author_id]").val();
            var target = '/msf/index.php/welcome/submit_users_to_group/'+author_id;
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

        });
       
    });
</script>
<?php
echo form_open();
echo '<p class="msg_head">Add Users</p>';
echo form_hidden('author_id', $session->userdata('id'));
echo "<div class='gcolumn' id='gcolumn1'>";


echo "</div>";
echo "<div class='gcolumn' id='gcolumn2'>";

foreach ($content['all_users'] as $item) {
    echo '<dl class="question dragbox">
        <dt id="' . $item['id'] . '">' . ' ' . $item['email'] . '</dt>
        <dd class="dragbox-content"></dd>
        </dl>';
}
if ($content['group'] != NULL) {
    foreach ($content['group'] as $key => $users) {

        echo '<dl class="question dragbox">
                <dt id="' . $key . '">Group id: ' . $key . '</dt>';
        foreach ($users as $key => $item) {
            echo '<dd class="dragbox-content">' .$item['email'] . '</dd>';
        }
        echo '</dl>';
    }
}


echo '</div>';

echo "<div id='content_footer'>";
echo form_submit('submit', 'Send', 'id="form_submit');
echo form_close();
echo '</div>';
?>
