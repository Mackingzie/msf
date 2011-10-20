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

echo '<div  id="create_form">';
echo '<p id="create_form">Form preferences</p>';

echo 'Title<br/>';
echo "Title: {$content[0]['title']}<br/>";
echo "Formtype<br/>";
echo $sel1.'<br/>';
echo $sel2.'<br/>';
echo $sel3.'<br/>';
echo $sel4.'<br/>';

echo 'Hide<br/>';
echo $hidden1.'<br/>';
echo $hidden2.'<br/>';
echo $hidden3.'<br/>';

echo "Timer: {$content[0]['timer']}<br/>";
echo "Startdate: {$content[0]['active_start']} <br/>";
echo "Enddate: {$content[0]['active_end']} <br/>";

echo anchor('welcome/list_forms', 'Back list') . ' ' . form_submit('submit', 'Save form', 'id="form_submit"').'<br/><br/>';

if ($content['tags']) {
    echo 'Tags: <ul class="tags">';
    foreach ($content['tags'] as $item) {
        echo '<li class="tag" id="' . $item['id'] . '">' . $item['tag'] . '&ensp;' . anchor("welcome/remove_tag/{$item['id']}", "X") . '&ensp;</li>';
    }
    echo '</ul>';
}


echo' <ul class="form_menu"><li>' . anchor("welcome/edit_form/{$content[0]['id']}", 'Return') . ' ' . anchor("welcome/use_form/{$content[0]['id']}", 'Use') . '</li></ul>';
echo '</div>';


echo "<div><dl>";
if ($content['questions']) {
    foreach ($content['questions'] as $key) {
        foreach ($key as $item) {
           

            switch ($item['type']) {
                case '1': echo '<dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd>' . $item['answ'] . '</dd>';
                    break;
                case '2': echo '<dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>';
                    break;
                case '3': echo '<dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd>';
                    break;
                case '4': echo '<dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd>';
                    break;
                case '5': echo '<dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd>';
                    break;
                case '6': echo '<dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd>';
                    break;
                case '7': echo '<dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em></dt><dd></dd>';
                    break;
            }
        }
    }
}


echo '</dl></div>';

echo "<div id='content_footer'>";
echo '</div>';
?>
