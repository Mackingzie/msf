
<?php
echo '<h2>Questions & Labels</h2>';
echo anchor('welcome/create_question', 'Create question').' '.anchor('welcome/create_labels', 'Create label').'<br/><br/>';

echo "<div class='column' id='column2'>";
echo "Sort by: <a href='#' id='sortQuestions'>Questions</a><a href='#' id='sortLabels'>Labels</a><a href='#' id='sortBoth'>Both</a>";
if ($content) {
    $i = 0;
    foreach ($content as $item) {

        switch ($item['type']) {
            case '1': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content">' . $item['answ'] . '</dd></dl>';
                break;
            case '2': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content"><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd></dl>';
                break;
            case '3': echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt><dd class="dragbox-content"><ul><li>' . $item['answ1'] . '</li><li>' . $item['answ2'] . '</li><li>' . $item['answ3'] . '</li><li>' . $item['answ4'] . '</li><li>' . $item['answ5'] . '</li></dd></dl>';
                break;
            case '4': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd></dl>';
                break;
            case '5': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd></dl>';
                break;
            case '6': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd></dl>';
                break;
            case '7': echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em></dt><dd></dd></dl>';
                break;
        }
    }
echo '</div>';
    echo '<ul class="tags">';
            if ($content[$i]['tags']) {
                foreach ($content[$i]['tags'] as $item) {
                    echo '<li class="tag" id="' . $item['id'] . '">' . ' ' . anchor("welcome/sort_forms_by_tag/".$item['tag'], $item['tag']) . '</li>  ';
                }
            }

        echo '</ul>';
    echo '</dl>';
}


?>
