<script type="text/javascript">
    $(document).ready(function(){
        
        
        $('.user_column').sortable({
            connectWith: '.user_column',
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

        $('#add_users').click(function(){
            var items=[];


            $('#column1').each(function(){
                $('.dragbox dt', this).each(function(i){

                    var item = {
                        id: $(this).attr('id')
                    };

                    //Push item object into items array
                    items.push(item);


                });
            });
            //Assign items array to sortorder JSON variable

            var sortorder = { items: items };
            if(items.length === 0 || items.length == undefined){
                var itemNull = {id: "0"}
                items.push(itemNull);
            }else{

            }
            
            var fid = $('.form_header').attr('action').match(/([0-9]+)+/g);
            
               // items.push({fid: "fid"});
            var target = '/msf/index.php/welcome/submit_form_to_users/'+fid;
           

            
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

$content[0]['form_type'] == 1 ? $sel1 = "Questioner" : $sel1 = '';
$content[0]['form_type'] == 2 ? $sel2 = "Regular" : $sel2 = '';
$content[0]['form_type'] == 3 ? $sel3 = "Exams" : $sel3 = '';
$content[0]['form_type'] == 4 ? $sel4 = "Email" : $sel4 = '';

$content[0]['hidden_type'] == 1 ? $hidden1 = "Never" : $hidden1 = '';
$content[0]['hidden_type'] == 2 ? $hidden2 = "Afteconsole.log('items');r Enddate" : $hidden2 = '';
$content[0]['hidden_type'] == 3 ? $hidden3 = "Allways" : $hidden3 = '';

echo '<div class="msg_list">';
echo "<p class='msg_head'>Title: {$content[0]['title']}</p>";
echo '<div class="msg_body">';


echo '<ul class="form_type">Formtype<br/>';
echo "<li>" . $sel1 . $sel2 . $sel3 . '</li>';
echo '</ul>';

echo '<ul class="form_hidden"><p>User access to form: </p>';
echo "<li>" . $hidden1 . $hidden2 . $hidden3 . '</li>';
echo '</ul>';

echo '<ul class="form_time">';
echo "<li>Enddate: {$content[0]['active_end']}</li>";
echo "<li>Startdate: {$content[0]['active_start']}</li>";
echo "<li>Timer: {$content[0]['timer']}</li>";
echo '</ul>';
/*
if ($content['tags']) {
    echo 'Tags: <ul class="tags">';
    foreach ($content['tags'] as $item) {
        echo '<li class="tag" id="' . $item['id'] . '">' . $item['tag'] . '&ensp;' . anchor("welcome/remove_tag/{$item['id']}", "X") . '&ensp;</li>';
    }
    echo '</ul>';
}*/

echo '<ul class="form_menu">';
echo '<li>' . anchor('welcome/list_forms', 'Forms list') . '</li>
        <li>' . anchor("welcome/edit_form/{$content[0]['id']}", 'Edit') . '</li>';
       
echo '</ul></div></div>';


echo "<div id='questions_view'>";
$attributes = array('class' => 'form_header');

echo form_open($content[0]['id'], $attributes);

echo '<p class="msg_head">Add Users</p>';

echo form_hidden('author_id', $session->userdata('id'));
echo form_hidden('form', $content[0]['id']);

//$this->load->view('create_groups');
echo "<div class='user_column' id='column1'>";
echo "</div>";

echo "<div class='user_column' id='column2'>";

foreach ($content['all_users'] as $item) {
    echo '<dl class="question dragbox">
        <dt id="' . $item['id'] . '">' . ' ' . $item['email'] . '</dt>
        <dd class="dragbox-content"></dd>
        </dl>';
}
/*
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
*/
echo '</div>';
echo form_button('', 'Send', 'id="add_users"');
echo form_close();


echo "<div id='content_footer'>";

echo '</div>';
?>
