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
    });

</script>
<?php
echo '<div id="create_label">';
echo '<ul class="Label">';
echo form_open('welcome/submit_labels');
echo "<li>" . form_input('label', '', 'id="label"') . '</li>';

echo "<li>" . form_radio('type', 'h3', TRUE) . 'h3</li>';
echo "<li>" . form_radio('type', 'h4') . 'h4</li>';
echo "<li>" . form_radio('type', 'cursive') . 'cursive</li>';
echo "<li>" . form_radio('type', 'em') . 'em</li>';

echo form_submit('submit', 'Add Label', 'id="submit"');
echo form_close();
echo '</ul></div>';
?>
