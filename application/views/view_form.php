<?php
    echo '<dl class="create_form"><ul>';
    echo "<li>Title: {$content[0]['title']}</li><br/>";
    echo "<li>Author: {$content[0]['author_id']}</li>";
    echo "<li>Timer: {$content[0]['timer']}</li>";
    echo "<li>Startdate: {$content[0]['active_start']}</li>";
    echo "<li>Enddate: {$content[0]['active_end']}</li></ul>";

    echo '<ul class="tags">Tags: ';
    if ($content['tags']) {
        foreach ($content['tags'] as $item) {
            echo '<li class="label" id="' . $item['id'] . '">' . ' ' . $item['tag'] . '</li>' . anchor("welcome/remove_tag/{$item['id']}", "X");
            
        }
    }

    echo '</ul>';
    echo' <ul class="form_menu"><li>' . anchor('welcome/copy_form', 'Create copy from this form') . ' ' . anchor("welcome/delete_form/{$content[0]['id']}", 'Delete form') . '</li></ul>';

    //questions
    echo '</dl>';

?>