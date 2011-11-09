
<?php
$content[0]['form_type'] == 1 ? $sel1 = "Questioner" : $sel1 = '';
$content[0]['form_type'] == 2 ? $sel2 = "Regular" : $sel2 = '';
$content[0]['form_type'] == 3 ? $sel3 = "Exams" : $sel3 = '';
$content[0]['form_type'] == 4 ? $sel4 = "Email" : $sel4 = '';

echo '<h2>Forms</h2>';
$attributes = array('class' => 'myButton');
echo anchor('welcome/create_form', 'Create new form', $attributes) . '<br/><br/>';
$i = 0;
foreach ($content as $item) {
    echo '<div class="forms">';
        echo '<ul>';
            echo "<li>Title: {$item['title']}</li><br/>";
            echo "<li>Author: {$item['author_id']}</li>";
            echo "<li>Created: {$item['created']}</li><br/>";
            echo "<li>Type: ".$sel1.$sel2.$sel3.$sel4."</li>";
            echo "<li>Timer: {$item['timer']}</li>";
            echo "<li>Startdate: {$item['active_start']}</li>";
            echo "<li>Enddate: {$item['active_end']}</li>";
        echo '</ul>';
        
        echo'<ul class="form_menu">
                <li>' . anchor("welcome/view_form/{$item['id']}", 'Show')
                     . ' ' . anchor("welcome/copy_form/{$item['id']}", 'Clone')
                     . ' ' . anchor("welcome/send_form_to_users/{$item['id']}", 'Use')
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
