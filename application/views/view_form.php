<?php
/*
  echo '<pre>';
  print_r($data);
  echo '</pre>';
  die;
 */
$content[0]['form_type'] == 1 ? $sel1 = "Questioner" : $sel1 = '';
$content[0]['form_type'] == 2 ? $sel2 = "Regular" : $sel2 = '';
$content[0]['form_type'] == 3 ? $sel3 = "Exams" : $sel3 = '';
$content[0]['form_type'] == 4 ? $sel4 = "Email" : $sel4 = '';

$content[0]['hidden_type'] == 1 ? $hidden1 = "Never" : $hidden1 = '';
$content[0]['hidden_type'] == 2 ? $hidden2 = "After Enddate" : $hidden2 = '';
$content[0]['hidden_type'] == 3 ? $hidden3 = "Allways" : $hidden3 = '';

echo '<div  id="view_form">';
echo '<div class="form_header">';

echo "Title: {$content[0]['title']}<br/>";

echo '<ul class="form_type">Formtype<br/>';
echo "<li>". $sel1.$sel2.$sel3.'</li>';
echo '</ul>';

echo '<ul class="form_hidden">User access to form<br/>';
echo "<li>". $hidden1.$hidden2.$hidden3.'</li>';
echo '</ul>';

echo '<ul class="form_time">';
echo "<li>Timer: {$content[0]['timer']}</li>";
echo "<li>Startdate: {$content[0]['active_start']}</li>";
echo "<li>Enddate: {$content[0]['active_end']}</li>";
echo '</ul>';
if ($content['tags']) {
    echo 'Tags: <ul class="tags">';
    foreach ($content['tags'] as $item) {
        echo '<li class="tag" id="' . $item['id'] . '">' . $item['tag'] . '&ensp;' . anchor("welcome/remove_tag/{$item['id']}", "X") . '&ensp;</li>';
    }
    echo '</ul>';
}

echo '<ul class="form_menu">';
echo '<li>'.anchor('welcome/list_forms', 'Forms list') . '</li><li>' . anchor("welcome/edit_form/{$content[0]['id']}", 'Return') . '</li><li>' . anchor("welcome/use_form/{$content[0]['id']}", 'Use') . '</li>';
echo '</ul></div>';


echo "<div id='questions_view'><dl>";
$y = 1;
$sub_y = 1;
if ($content['questions']) {
    foreach ($content['questions'] as $key) {
        foreach ($key as $item) {
           
            switch ($item['type']) {
                case '1': echo '<dt id="' . $item['id'] . '">' .$y. ' ' . $item['question'] . '</dt><dd>' . form_input() . '</dd>';
                    break;
                case '2': echo '<dt id="' . $item['id'] . '">' .$y. ' ' . $item['question'] . '</dt><dd><ul><li>' . form_radio($item['id'], $item['answ1']).$item['answ1'] . '</li><li>' . form_radio($item['id'], $item['answ2']).$item['answ2'] . '</li><li>' . form_radio($item['id'], $item['answ3']).$item['answ3'] . '</li><li>' . form_radio($item['id'], $item['answ4']).$item['answ4'] . '</li><li>' . form_radio($item['id'], $item['answ5']).$item['answ5'] . '</li></dd>';
                    break;
                case '3': echo '<dt id="' . $item['id'] . '">' .$y. ' ' . $item['question'] . '</dt><dd><ul><li>' . form_checkbox().$item['answ1'] . '</li><li>' . form_checkbox().$item['answ2'] . '</li><li>' . form_checkbox().$item['answ3'] . '</li><li>' . form_checkbox().$item['answ4'] . '</li><li>' . form_checkbox().$item['answ5'] . '</li></dd>';
                    break;
                case '4': $y--;
                    echo '<dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd>';
                    break;
                case '5': $y--;
                    echo '<dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd>';
                    break;
                case '6': $y--;
                    echo '<dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd>';
                    break;
                case '7': $y--;
                    echo '<dt id="' . $item['id'] . '"><p>' . ' ' . $item['question'] . '</p></dt><dd></dd>';
                    break;
            }
            $y++;
        }
    }
}


echo '</dl></div>';

echo "<div id='content_footer'>";
echo '</div>';
?>
