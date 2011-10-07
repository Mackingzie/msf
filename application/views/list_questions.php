
<?php
echo '<h2>Questions & Labels</h2>';
echo anchor('welcome/create_question', 'Create question').'<br/><br/>';

$i = 0;
foreach ($content as $item) {
    
    switch ($item['type']) {
        case '1': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd>' . $item['answ'] . '</dd>' . anchor("welcome/edit_question/{$item['id']}", "Edit") .' '. anchor("welcome/delete_question/{$item['id']}", 'Delete');
            break;
        case '2': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>' . anchor("welcome/edit_question/{$item['id']}", "Edit") .' '. anchor("welcome/delete_question/{$item['id']}", 'Delete');
            break;
        case '3': echo '<dl class="questions"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '<dt><dd><ul><li>' . $item['answ1'] . '(Correct)</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>' . anchor("welcome/edit_question/{$item['id']}", "Edit") .' '. anchor("welcome/delete_question/{$item['id']}", 'Delete');
            break;
        case '4': echo '<dl class="label"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3><dt><dd></dd>' . anchor("welcome/edit_question/{$item['id']}", "Edit") .' '. anchor("welcome/delete_question/{$item['id']}", 'Delete');
            break;
        case '5': echo '<dl class="label"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4><dt><dd></dd>' . anchor("welcome/edit_question/{$item['id']}", "Edit") .' '. anchor("welcome/delete_question/{$item['id']}", 'Delete');
            break;
        case '6': echo '<dl class="label"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i><dt><dd></dd>' . anchor("welcome/edit_question/{$item['id']}", "Edit") .' '. anchor("welcome/delete_question/{$item['id']}", 'Delete');
            break;
        case '7': echo '<dl class="label"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em><dt><dd></dd>' . anchor("welcome/edit_question/{$item['id']}", "Edit") .' '. anchor("welcome/delete_question/{$item['id']}", 'Delete');
            break;
    }

    echo '<ul class="tags">Tags:';
    if ($content[$i]['tags']) {
        foreach ($content[$i]['tags'] as $item) {
            echo '<li class="label" id="' . $item['id'] . '">' . ' ' . $item['tag'] . '</li>' . anchor("welcome/remove_tag/{$item['id']}", "X");
            $i++;
        }
    }
    echo '</ul>';
    echo '</dl>';
}


?>
