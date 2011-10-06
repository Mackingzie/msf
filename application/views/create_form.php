<?php
echo 'Form preferences';
echo form_open('welcome/submit_form').'<br/>';
echo form_hidden('author_id', '2');
echo 'Title<br/>';
echo form_input('title', '').'<br/>';
echo "Formtype<br/>";
echo form_radio('form_type', '1', TRUE).'Questioner <br/>';
echo form_radio('form_type', '2').'Regular <br/>';
echo form_radio('form_type', '3').'Exams <br/>';
echo form_radio('form_type', '4').'Email <br/><br/>';
echo 'Hide<br/>';
echo form_radio('hidden_type', '1', TRUE).'Never <br/>';
echo form_radio('hidden_type', '2').'After Enddate <br/>';
echo form_radio('hidden_type', '3').'Allways <br/>';

echo 'Fill answer alternatives (will automatically be randomized)<br/>';
echo form_input('timer', date('H:i')).'Timer example <i>hours-mins</i><br/>';
echo form_input('active_start', date('Y-m-d')).'Startdate<br/>';
echo form_input('active_end', date('Y-m-d')).'Enddate<br/>';

echo anchor('welcome/list_forms', 'Back to existing forms'). ' '.form_submit('submit', 'Create form');
echo form_close();
?>
