<?php

echo '<h2>Inactive forms</h2>';

foreach ($content as $item) {
    echo '<div class="forms">';
        echo '<ul>';
            echo "<li>Title: {$item['title']}</li><br/>";
            echo "<li>Sender: {$item['email']}</li><br/>";
            echo "<li>Author: {$item['author_id']}</li>";
            echo "<li>Timer: {$item['timer']}</li>";
            echo "<li>Startdate: {$item['active_start']}</li>";
            echo "<li>Enddate: {$item['active_end']}</li>";
        echo '</ul><ul><li>';
        if($item['hidden_type'] > 1) echo anchor("welcome/view_form/{$item['id']}", 'Show');
        echo '</li></ul>';

    echo '</div>';
}
?>