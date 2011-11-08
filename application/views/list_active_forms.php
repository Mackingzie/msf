<?php

echo '<h2>Active forms</h2>';

foreach ($content as $item) {
    echo '<div class="forms">';
        echo '<ul>';
            echo "<li>Title: {$item['title']}</li><br/>";
            echo "<li>Sender: {$item['email']}</li><br/>";
            echo "<li>Author: {$item['author_id']}</li>";
            echo "<li>Timer: {$item['timer']}</li>";
            echo "<li>Startdate: {$item['active_start']}</li>";
            echo "<li>Enddate: {$item['active_end']}</li>";
        echo '</ul>';

        echo'<ul class="form_menu">
                <li>'. anchor("welcome/answer_form/{$item['id']}", 'Answer'). ' ' . anchor("welcome/delete_active_form/" . $item['id'] . "", "Delete") . '</li>';
                if($item['hidden_type'] > 1 || $item['form_type'] == 3) echo '<li>'.anchor("welcome/view_form/{$item['id']}", 'Show').'</li>';
            echo '</ul>';

    echo '</div>';
}
?>