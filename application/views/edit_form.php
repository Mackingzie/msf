<?php

$content[0]['form_type'] == 1 ? $sel1 = "TRUE" : $sel1 = '';
$content[0]['form_type'] == 2 ? $sel2 = "TRUE" : $sel2 = '';
$content[0]['form_type'] == 3 ? $sel3 = "TRUE" : $sel3 = '';
$content[0]['form_type'] == 4 ? $sel4 = "TRUE" : $sel4 = '';

$content[0]['hidden_type'] == 1 ? $hidden1 = "TRUE" : $hidden1 = '';
$content[0]['hidden_type'] == 2 ? $hidden2 = "TRUE" : $hidden2 = '';
$content[0]['hidden_type'] == 3 ? $hidden3 = "TRUE" : $hidden3 = '';
#echo '<pre>';
#print_r($content);
#echo '</pre>';
#die;
echo '<div id="create_form">';
echo 'Form preferences';
echo form_open("welcome/update_form/{$content[0]['id']}", 'class="form_header"') . '<br/>';
echo '<li>' . form_hidden('author_id', '2') . '</li>';
echo 'Title<br/>';
echo form_input('title', $content[0]['title']) . '<br/>';
echo "Formtype<br/>";
echo form_radio('form_type', '1', $sel1) . 'Questioner <br/>';
echo form_radio('form_type', '2', $sel2) . 'Regular <br/>';
echo form_radio('form_type', '3', $sel3) . 'Exams <br/>';
echo form_radio('form_type', '4', $sel4) . 'Email <br/><br/>';
echo 'Hide<br/>';
echo form_radio('hidden_type', '1', $hidden1) . 'Never <br/>';
echo form_radio('hidden_type', '2', $hidden2) . 'After Enddate <br/>';
echo form_radio('hidden_type', '3', $hidden3) . 'Allways <br/>';

echo 'Fill answer alternatives (will automatically be randomized)<br/>';
echo form_input('timer', $content[0]['timer']) . 'Timer example <i>hours:mins</i><br/>';
echo form_input('active_start', $content[0]['active_start']) . 'Startdate<br/>';
echo form_input('active_end', $content[0]['active_end']) . 'Enddate<br/>';

echo anchor('welcome/list_forms', 'Back list') . ' ' . form_submit('submit', 'Save form');

if ($content['tags']) {
    echo 'Tags<ul class="tags">';
    foreach ($content['tags'] as $item) {
        echo '<li class="tag" id="' . $item['id'] . '">' . $item['tag'] . '&ensp;' . anchor("welcome/remove_tag/{$item['id']}", "X") . '&ensp;</li>';
    }
    echo '</ul>';
}


echo' <ul class="form_menu"><li>' . anchor("welcome/copy_form/{$content[0]['id']}", 'Create copy') . ' ' . anchor("welcome/delete_form/{$content[0]['id']}", 'Delete form') . '</li></ul>';
echo '</div>';
$this->load->view('create_question');
$this->load->view('create_labels');

//questions
echo "<div class='column' id='column1'>";
if ($content['questions']) {
    foreach ($content['questions'] as $key) {
        foreach ($key as $item) {

            switch ($item['type']) {
                case '1': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content">' . $item['answ'] . '</dd></dl>';
                    break;
                case '2': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content"><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd></dl>';
                    break;
                case '3': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content"><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd></dl>';
                    break;
                case '4': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd></dl>';
                    break;
                case '5': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd></dl>';
                    break;
                case '6': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd></dl>';
                    break;
                case '7': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em></dt><dd></dd></dl>';
                    break;
            }
        }
    }
}
echo '</div>';


echo "<div class='column' id='column2'>";
echo "Sort by: <a href='#' id='sortQuestions'>Questions</a><a href='#' id='sortLabels'>Labels</a><a href='#' id='sortBoth'>Both</a>";
if ($content['all_questions']) {
    foreach ($content['all_questions'] as $item) {

        switch ($item['type']) {
            case '1': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content">' . $item['answ'] . '</dd></dl>';
                break;
            case '2': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content"><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd></dl>';
                break;
            case '3': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content"><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd></dl>';
                break;
            case '4': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd></dl>';
                break;
            case '5': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd></dl>';
                break;
            case '6': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd></dl>';
                break;
            case '7': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em></dt><dd></dd></dl>';
                break;
        }
    }
}
echo '</div>';

echo "<div id='content_footer'>";
echo form_submit('submit', 'Save form');
echo form_close();
echo '</div>';
?>
