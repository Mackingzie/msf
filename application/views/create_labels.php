<?php
echo '<div id="create_label">';
echo 'Create label';
echo form_open('welcome/submit_labels').'<br/>';
echo form_input('label', '').'<br/>';

echo form_radio('type', 'h3', TRUE).'h3<br/>';
echo form_radio('type', 'h4').'h4<br/>';
echo form_radio('type', 'cursive').'cursive<br/>';
echo form_radio('type', 'em').'em<br/>';


echo form_submit('submit', 'Add Label');
echo form_close();
echo '</div>';
?>
