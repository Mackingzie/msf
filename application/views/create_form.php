<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
  //hide the all of the element with class msg_body
  $(".msg_body").hide();
  //toggle the componenet with class msg_body
  $(".msg_head").click(function()
  {
    $(this).next(".msg_body").slideToggle(600);
  });
});
</script>


<div  id="create_form" class="msg_list">
<p id="create_form" class="msg_head">Create Form</p>
<div class="msg_body">
<?php echo 'Form preferences';
echo '<ul>';
echo '<li>' . form_open('welcome/submit_form') . '</li>';
echo '<li>' . form_hidden('author_id', '4') . '</li>';
echo 'Title';
echo '<li>' . form_input('title', '') . '</li>';

echo "Formtype";
echo '<li>' . form_radio('form_type', '1', TRUE) . 'Questioner </li>';
echo '<li>' . form_radio('form_type', '2') . 'Regular </li>';
echo '<li>' . form_radio('form_type', '3') . 'Exams </li>';
echo '<li>' . form_radio('form_type', '4') . 'Email </li>';

echo 'Hide';
echo '<li>' . form_radio('hidden_type', '1', TRUE) . 'Never </li>';
echo '<li>' . form_radio('hidden_type', '2') . 'After Enddate </li>';
echo '<li>' . form_radio('hidden_type', '3') . 'Allways </li>';

echo 'Fill answer alternatives (will automatically be randomized)</li>';
echo '<li>' . form_input('timer', date('H:i')) . 'Timer example <i>hours:mins</i></li>';
echo '<li>' . form_input('active_start', date('Y-m-d')) . 'Startdate</li>';
echo '<li>' . form_input('active_end', date('Y-m-d')) . 'Enddate</li>';

echo '<li>' . anchor('welcome/list_forms', 'Back list') . ' ' . form_submit('submit', 'Save form') . '</li>';
echo '</ul>';

echo '<ul class="tags">Tags: ';

echo '</ul>';

echo '</div>';?>
</div>
<p id="create_label"class="msg_head">Create Label</p>
<div class="msg_body">
<?php $this->load->view('create_labels');

//questions


?>
</div>
<p id="column2" class="msg_head">List all questions</p>
<div class="msg_body">
<?php 
echo "Sort by: <a href='#' id='sortQuestions'>Questions</a><a href='#' id='sortLabels'>Labels</a><a href='#' id='sortBoth'>Both</a>";
if ($content['all_questions']) {
    foreach ($content['all_questions'] as $item) {

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
}
echo '</div>';?>
</div>
</div>


<?php
echo "<div id='content_footer'>";
echo form_submit('submit', 'Save form');
echo form_close();
echo '</div>';
?>
