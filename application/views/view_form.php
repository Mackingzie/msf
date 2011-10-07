<?php
echo '<dl class="create_form">
    <ul>';
    echo "<li>Title: {$content[0]['title']}</li><br/>";
    echo "<li>Author: {$content[0]['author_id']}</li>";
    echo "<li>Timer: {$content[0]['timer']}</li>";
    echo "<li>Startdate: {$content[0]['active_start']}</li>";
    echo "<li>Enddate: {$content[0]['active_end']}</li>
</ul>";


if ($content['tags']) {
    echo 'Tags
        <ul class="tags">';
    foreach ($content['tags'] as $item) {
        echo '<li class="tag" id="' . $item['id'] . '">'. $item['tag'] . '' . anchor("welcome/remove_tag/{$item['id']}", "&ensp;X").'&ensp;</li>';
    }
    echo '</ul>';
}


echo' <ul class="form_menu">
            <li>' . anchor("welcome/copy_form/{$content[0]['id']}", 'Create copy')
            . ' ' . anchor("welcome/edit_form/{$content[0]['id']}", 'Edit')
            . ' ' . anchor("welcome/delete_form/{$content[0]['id']}", 'Delete')
        . '</li>
    </ul>';

//questions
if ($content['questions']) {
    foreach ($content['questions'] as $item) {

        switch ($item['type']) {
            case '1': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd>' . $item['answ'] . '</dd>' . ' ' . anchor("welcome/delete_form_question_connections/{$item['id']}", 'Delete');
                break;
            case '2': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>' . ' ' . anchor("welcome/delete_form_question_connections/{$item['id']}", 'Delete');
                break;
            case '3': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>' . ' ' . anchor("welcome/delete_form_question_connections/{$item['id']}", 'Delete');
                break;
            case '4': echo '<dl class="label"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3><dt><dd></dd>' . ' ' . anchor("welcome/delete_form_question_connections/{$item['id']}", 'Delete');
                break;
            case '5': echo '<dl class="label"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4><dt><dd></dd>' . ' ' . anchor("welcome/delete_form_question_connections/{$item['id']}", 'Delete');
                break;
            case '6': echo '<dl class="label"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i><dt><dd></dd>' . ' ' . anchor("welcome/delete_form_question_connections/{$item['id']}", 'Delete');
                break;
            case '7': echo '<dl class="label"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em><dt><dd></dd>' . ' ' . anchor("welcome/delete_form_question_connections/{$item['id']}", 'Delete');
            break;
        }
        echo '</dl>';    
    }
}

?>