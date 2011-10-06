<?php
$i = 0;
foreach ($content as $item) {
    $item['type'] == 1 ? $sel1 = "TRUE" : $sel1 = '';
    $item['type'] == 2 ? $sel2 = "TRUE" : $sel2 = '';
    $item['type'] == 3 ? $sel3 = "TRUE" : $sel3 = '';


    echo 'Edit Your question!';
    echo form_open("welcome/update_question/{$item['id']}") . '<br/>';
    echo form_textarea('question', $item['question']) . '<br/>';
    echo form_radio('type', 'text', "$sel1") . 'Text <br/>';
    echo form_radio('type', 'radiobuttons', "$sel2") . 'Radiobuttons <br/>';
    echo form_radio('type', 'checkboxes', "$sel3") . 'Checkboxes <br/>';

    echo 'Fill answer alternatives (will automatically be randomized)<br/>';
    echo form_input('answ1', $item['answ1']) . '(correct answer)<br/>';
    echo form_input('answ2', $item['answ2']) . '<br/>';
    echo form_input('answ3', $item['answ3']) . '<br/>';
    echo form_input('answ4', $item['answ4']) . '<br/>';
    echo form_input('answ5', $item['answ5']) . '<br/>';

    echo 'Fill answer to question<br/>';
    echo form_textarea('answ', $item['answ']) . '<br/>';




    echo '<ul>';
    if ($content[$i]['tags']) {
        
        foreach ($content[$i]['tags'] as $item) {
            echo '<li class="label" id="' . $item['id'] . '">' . ' ' . $item['tag'] . '</li>' . anchor("welcome/remove_tag/{$item['id']}", "X");
            $i++;
        }
    }
    echo '</ul>';
}


echo '</dl>';
echo anchor('welcome/list_questions', 'Abort') . ' ' . anchor("welcome/delete_question/{$item['id']}", 'Delete') . ' ' . form_submit('submit', 'Update Question');
echo form_close();
?>
