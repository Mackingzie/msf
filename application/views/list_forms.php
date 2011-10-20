
<?php

echo '<h2>Forms</h2>';

echo anchor('welcome/create_form', 'Create new form') . '<br/><br/>';
$i = 0;
foreach ($content as $item) {
    echo '<div class="forms">';
        echo '<ul>';
            echo "<li>Title: {$item['title']}</li><br/>";
            echo "<li>Author: {$item['author_id']}</li>";
            echo "<li>Timer: {$item['timer']}</li>";
            echo "<li>Startdate: {$item['active_start']}</li>";
            echo "<li>Enddate: {$item['active_end']}</li>";
        echo '</ul>';
        
        echo'<ul class="form_menu">
                <li>' . anchor("welcome/view_form/{$item['id']}", 'Show')
                    . ' ' . anchor("welcome/copy_form/{$item['id']}", 'Clone')
                    . ' ' . anchor("welcome/edit_form/{$item['id']}", 'Edit')
                    . ' ' . anchor("welcome/delete_form/{$item['id']}", 'Delete')
                . '</li>
            </ul>';

        echo '<ul class="tags">';
            if ($content[$i]['tags']) {
                foreach ($content[$i]['tags'] as $item) {
                    echo '<li class="tag" id="' . $item['id'] . '">' . ' ' . anchor("welcome/sort_forms_by_tag/".$item['tag'], $item['tag']) . '</li>  ';
                }
            }

        echo '</ul>';
$i++;
    echo '</div>';
}
?>
