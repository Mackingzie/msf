
<?php
echo '<h2>Forms</h2>';

echo anchor('welcome/create_form', 'Create new form') . '<br/><br/>';
$i = 0;
foreach ($content as $item) {
    echo '<dl class="forms"><ul>';
        echo "<li>Title: {$item['title']}</li><br/>";
        echo "<li>Author: {$item['author_id']}</li>";
        echo "<li>Timer: {$item['timer']}</li>";
        echo "<li>Startdate: {$item['active_start']}</li>";
        echo "<li>Enddate: {$item['active_end']}</li></ul>";
        echo' <ul class="form_menu"><li>'.anchor("welcome/view_form/{$item['id']}",'Show form').' '.anchor('welcome/copy_form', 'Create copy from this form').' '.anchor("welcome/delete_form/{$item['id']}",'Delete form').'</li></ul>';
        echo '<ul class="tags">Tags: ';
        if ($content[$i]['tags']) {
            foreach ($content[$i]['tags'] as $item) {
                echo '<li class="tag" id="' . $item['id'] . '">' . ' ' . $item['tag'] . '</li>' . anchor("welcome/remove_tag/{$item['id']}", "X");
                $i++;
            }
        }
        echo '</ul>';
        
    echo '</dl>';
}
?>
