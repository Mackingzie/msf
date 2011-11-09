<?php

/*
  echo '<pre>';
  print_r($data);
  echo '</pre>';
  die;
 */
$content[0]['form_type'] == 1 ? $sel1 = "Exams" : $sel1 = '';
$content[0]['form_type'] == 2 ? $sel2 = "Regular" : $sel2 = '';
$content[0]['form_type'] == 3 ? $sel3 = "Questioner" : $sel3 = '';
$content[0]['form_type'] == 4 ? $sel4 = "Email" : $sel4 = '';

$content[0]['hidden_type'] == 1 ? $hidden1 = "Never" : $hidden1 = '';
$content[0]['hidden_type'] == 2 ? $hidden2 = "After Enddate" : $hidden2 = '';
$content[0]['hidden_type'] == 3 ? $hidden3 = "Allways" : $hidden3 = '';
$attributes = array('class' => 'myButton');
echo '<ul class="form_menu">';
echo '<li>' . anchor('welcome/list_forms', 'Forms list', $attributes) . '</li>';
       if ($content['questions']) {
           echo '<li>' . anchor("welcome/send_form_to_users/{$content[0]['id']}", 'Use', $attributes) . '</li>';
       }
        echo '<li>'.anchor("welcome/copy_form/{$content[0]['id']}", 'Clone', $attributes) .'</li>';

echo '</ul>';

echo '<div  id="view_form">';

echo '<div class="form_header">';

echo "Title: {$content[0]['title']}<br/>";

echo '<ul class="form_type">Formtype<br/>';
echo "<li>" . $sel1 . $sel2 . $sel3 . '</li>';
echo '</ul>';

echo '<ul class="form_hidden">User access to form<br/>';
echo "<li>" . $hidden1 . $hidden2 . $hidden3 . '</li>';
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

echo '</div>';


echo "<div id='questions_view'><dl>";
$y = 1;
$sub_y = 1;

if ($content['questions']) {
    foreach ($content['questions'] as $key) {
        foreach ($key as $item) {

            switch ($item['type']) {
                case 1: echo '<dt id="' . $item['id'] . '">' . $y . ' ' . $item['question'] . '</dt><dd>' . form_input() . '</dd>';
                    break;
                case 2: echo '<dt id="' . $item['id'] . '">' . $y . ' ' . $item['question'] . '</dt>
                            <dd>
                            <ul>';
                    if ($item['answ1'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw1']) . $item['answ1'] . '</li>';
                    if ($item['answ2'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw2']) . $item['answ2'] . '</li>';
                    if ($item['answ3'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw3']) . $item['answ3'] . '</li>';
                    if ($item['answ4'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw4']) . $item['answ4'] . '</li>';
                    if ($item['answ5'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw5']) . $item['answ5'] . '</li>';
                    if ($item['answ6'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw6']) . $item['answ6'] . '</li>';
                    if ($item['answ7'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw7']) . $item['answ7'] . '</li>';
                    if ($item['answ8'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw8']) . $item['answ8'] . '</li>';
                    if ($item['answ9'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw9']) . $item['answ9'] . '</li>';
                    if ($item['answ10'])
                        echo '<li>' . form_radio($item['id'], '', $item['cansw10']) . $item['answ10'] . '</li>';
                    echo '</ul>
                            </dd>';
                    break;
                case 3: echo '<dt id="' . $item['id'] . '">' . $y . ' ' . $item['question'] . '</dt>
                            <dd>
                            <ul>';
                    if ($item['answ1'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw1']) . $item['answ1'] . '</li>';
                    if ($item['answ2'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw2']) . $item['answ2'] . '</li>';
                    if ($item['answ3'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw3']) . $item['answ3'] . '</li>';
                    if ($item['answ4'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw4']) . $item['answ4'] . '</li>';
                    if ($item['answ5'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw5']) . $item['answ5'] . '</li>';
                    if ($item['answ6'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw6']) . $item['answ6'] . '</li>';
                    if ($item['answ7'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw7']) . $item['answ7'] . '</li>';
                    if ($item['answ8'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw8']) . $item['answ8'] . '</li>';
                    if ($item['answ9'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw9']) . $item['answ9'] . '</li>';
                    if ($item['answ10'])
                        echo '<li>' . form_checkbox($item['id'], '', $item['cansw10']) . $item['answ10'] . '</li>';
                    echo '</ul>
                            </dd>';
                    break;
                case 4: $y--;
                    echo '<dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd>';
                    break;
                case 5: $y--;
                    echo '<dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd>';
                    break;
                case 6: $y--;
                    echo '<dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd>';
                    break;
                case 7: $y--;
                    echo '<dt id="' . $item['id'] . '"><p>' . ' ' . $item['question'] . '</p></dt><dd></dd>';
                    break;
                case 8: $y--;
                    echo '<dt id="' . $item['id'] . '"><p><i>' . ' ' . $item['question'] . '</i></p></dt><dd></dd>';
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
