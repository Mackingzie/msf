
<?php

echo '<p class="msg_head">Form preferences</p>';

$attributes = array('class' => 'myButton');
echo form_open("welcome/submit_form") . '<br/>';
echo '<ul><li>' . form_hidden('author_id', $session->userdata('id')) . '</li>';
echo 'Title<br/>';
echo '<li>' . form_input('title', '') . '</li>';

echo "Formtype";
echo '<li>' . form_radio('form_type', '1', TRUE) . 'Questioner </li>';
echo '<li>' . form_radio('form_type', '2') . 'Regul        ar </li>';
echo '<li>' . form_radio('form_type', '3') . 'Exams </li>';
echo '<li>' . form_radio('form_type', '4') . 'Email </li>';

echo 'Hide';
echo '<li>' . form_radio('hidden_type', '1', TRUE) . 'Never </li>';
echo '<li>' . form_radio('hidden_type', '2') . 'After Enddate </li>';
echo '<li>' . form_radio('hidden_type', '3') . 'Allways </li>';

echo 'Fill answer alternatives (will automatically be randomized)</li>';
echo '<li>' . form_input('timer', '') . 'Timer example <i>hours:mins</i></li>';
echo '<li>' . form_input('active_start', date('Y-m-d')) . 'Startdate</li>';
echo '<li>' . form_input('active_end', date('Y-m-d')) . 'Enddate</li>';

echo '<li>' . anchor('welcome/list_forms', 'Back to list', $attributes) . ' ' . form_submit('submit', 'Save form', 'id="create_form', $attributes) . '</li>';
echo '</ul>';

echo form_close();

echo '<ul class="tags">Tags: ';
echo '</ul>';

echo '</div></div>';



echo "<div id='content_footer'>";

echo '</div>';
?>
