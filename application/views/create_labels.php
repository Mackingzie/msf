<script type="text/javascript">
    $(document).ready(function(){
        $("#submit").click(function(){
            var label = $("#label").val();
             var type = $(".Label input[name=type]:radio:checked").val();

            $.ajax({
                type: "POST",
                url: '/msf/index.php/welcome/submit_labels',
                dataType: "json",
                data: "label="+label+"&type="+type,
                cache:false
            });
            return false;
        });

        /*
        $('input[name=type]').click(function(){
            if($('#label_freetext')){
               var textarea = '<textarea name="label" id="label">';
               
               $('li#label_input').html(textarea);

            }
            else {
                var textarea = '<form_input name="label" id="label">';

                $('li#label_input').html(textarea);
            }
        });
        */

        $('input.textarea').click(function(){
            var textarea = '<textarea name="" id=""></textarea>';
            $('li#label_input').html(textarea);
        });
        $('input.text').click(function(){
            var input = '<input type="text" name="" id="" />';
            $('li#label_input').html(input);
        });


    });

</script>
<?php
/*
echo '<div id="create_label">';
echo '<ul class="Label">';
echo form_open('welcome/submit_labels');

echo "<li id='label_input'>" . form_input('label', '', 'id="label"') . '</li>';

echo "<li>" . form_radio('type', 'h3', TRUE) . 'h3</li>';
echo "<li>" . form_radio('type', 'h4') . 'h4</li>';
echo "<li>" . form_radio('type', 'cursive') . 'cursive</li>';
$attributes = array('class="freetext"');
echo "<li>" . form_radio('type', 'em', 'id="label_freetext"') . 'em</li>';


echo form_submit('submit', 'Add Label', 'id="submit"');
echo form_close();
echo '</ul></div>';
 */
?>
<div id="create_label">
    <ul class="Label">
        <li id="label_input">
            <input type="text" name="type" />
        </li>
        <li>
            <input type="radio" name="type" id="h3" class="text" />
            <label for="h3">h3</label>
        </li>
        <li>
            <input type="radio" name="type" id="h4" class="text" />
            <label for="h4">h4</label>
        </li>
        </li>
        <li>
            <input type="radio" name="type" id="cursive" class="text" />
            <label for="cursive">cursive</label>
        </li>
        <li>
            <input type="radio" name="type" id="freetext" class="textarea" />
            <label for="freetext">freetext</label>
        </li>
    </ul>
</div>









