<script type="text/javascript">
    $(document).ready(function(){
       
        $("#submit").click(function(){
            var label = $("#label").val();
             var type = $("input[name=type]:radio:checked").val();

            $.ajax({
                type: "POST",
                url: '/msf/index.php/welcome/submit_labels',
                dataType: "json",
                data: "label="+label+"&type="+type,
                cache:false
            });
            return false;
        });

        $('input.textarea').click(function(){
            var textarea = '<textarea name="label" id="label"></textarea>';
            $('li#label_input').html(textarea);
        });
        $('input.text').click(function(){
            var input = '<input type="text" name="label" id="label" />';
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
    <form action="welcome/submit_labels" method="post">
    <ul class="Label">
        <li id="label_input">
            <input type="text" name="type" />
        </li>
        <li>
            <input type="radio" name="type" value="h3" id="h3" class="text" />
            <label for="h3">h3</label>
        </li>
        <li>
            <input type="radio" name="type" value="h4" id="h4" class="text" />
            <label for="h4">h4</label>
        </li>
        <li>
            <input type="radio" name="type" value="cursive" id="cursive" class="text" />
            <label for="cursive">cursive</label>
        </li>
        <li>
            <input type="radio" name="type" value="freetext" id="freetext" class="textarea" />
            <label for="freetext">freetext</label>
        </li>
    </ul>
        <input type="submit" name="submit" id="submit" value="Add Label" />
    </form>
</div>









