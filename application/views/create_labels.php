<?php
echo '<div id="create_label">';
echo '<ul class="Label">';
echo "<li>".form_open('welcome/submit_labels').'</li>';
echo "<li>".form_input('label', '').'</li>';

echo "<li>".form_radio('type', 'h3', TRUE).'h3</li>';
echo "<li>".form_radio('type', 'h4').'h4</li>';
echo "<li>".form_radio('type', 'cursive').'cursive</li>';
echo "<li>".form_radio('type', 'em').'em</li>';


echo "<li>".form_submit('submit', 'Add Label').'</li>';
echo form_close();
echo '</ul></div>';
?>
