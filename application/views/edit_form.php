<?php
echo '<div id="create_form">';
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
echo form_input('timer', date('H:i')).'Timer example <i>hours:mins</i><br/>';
echo form_input('active_start', date('Y-m-d')).'Startdate<br/>';
echo form_input('active_end', date('Y-m-d')).'Enddate<br/>';

echo anchor('welcome/list_forms', 'Back list'). ' '.form_submit('submit', 'Save form');

if ($content['tags']) {
    echo '<ul class="tags">Tags: ';
    foreach ($content['tags'] as $item) {
        echo '<li class="tag" id="' . $item['id'] . '">' . ' ' . $item['tag'] . '</li>' . anchor("welcome/remove_tag/{$item['id']}", "X");
    }
    echo '</ul>';
}


echo' <ul class="form_menu"><li>' . anchor('welcome/copy_form', 'Create copy') . ' ' . anchor("welcome/delete_form/{$content[0]['id']}", 'Delete form') . '</li></ul>';
echo '</div>';
//questions
echo "<div id='questions'>";
if ($content['questions']) {
    foreach ($content['questions'] as $item) {

        switch ($item['type']) {
            case '1': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd>' . $item['answ'] . '</dd>';
                break;
            case '2': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>';
                break;
            case '3': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>';
                break;
            case '4': echo '<dl class="label"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3><dt><dd></dd>';
                break;
            case '5': echo '<dl class="label"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4><dt><dd></dd>';
                break;
            case '6': echo '<dl class="label"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i><dt><dd></dd>';
                break;
            case '7': echo '<dl class="label"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em><dt><dd></dd>';
            break;
        }
        echo '</dl>';
    }
}
echo '</div>';


echo "<div id='all_questions'>";
if ($content['all_questions']) {
    foreach ($content['all_questions'] as $item) {

        switch ($item['type']) {
            case '1': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd>' . $item['answ'] . '</dd>';
                break;
            case '2': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>';
                break;
            case '3': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>';
                break;
            case '4': echo '<dl class="label"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3><dt><dd></dd>';
                break;
            case '5': echo '<dl class="label"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4><dt><dd></dd>';
                break;
            case '6': echo '<dl class="label"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i><dt><dd></dd>';
                break;
            case '7': echo '<dl class="label"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em><dt><dd></dd>';
            break;
        }
        echo '</dl>';
    }
    
}
echo '</div>';
echo "<div id='content_footer'>";
echo form_submit('submit', 'Save form');
echo form_close();
echo '</div>';
?>
