<?php
echo '<div id="create_question">';
echo 'Add Your question!';
echo form_open('welcome/submit_question').'<br/>';
echo form_textarea('question', '').'<br/>';
echo form_radio('type', 'text', TRUE).'Text <br/>';
echo form_radio('type', 'radiobuttons').'Radiobuttons <br/>';
echo form_radio('type', 'checkboxes').'Checkboxes <br/>';

echo 'Fill answer alternatives (will automatically be randomized)<br/>';
echo form_input('answ1', '').'<br/>';
echo form_input('answ2', '').'<br/>';
echo form_input('answ3', '').'<br/>';
echo form_input('answ4', '').'<br/>';
echo form_input('answ5', '').'<br/>';

echo 'Fill answer to question<br/>';
echo form_textarea('answ', '').'<br/>';

echo form_submit('submit', 'Add Question');
echo form_close();
echo '</div>';
?>
