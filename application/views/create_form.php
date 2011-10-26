<script type="text/javascript">
    $(document).ready(function(){
        
        $("#form_submit").click(function(){
            var title = $("input[name=title]").val();
            var form_type = $("input[name=form_type]:radio:checked").val();
            var hidden_type = $("input[name=hidden_type]:radio:checked").val();
            var timer = $("input[name=timer]").val();
            var active_start = $("input[name=active_start]").val();
            var active_end = $("input[name=active_end]").val();

            var id = $('.form_header').attr('action').match(/([0-9]+)+/g);
            var target = '/msf/index.php/welcome/submit_form/'+id;
            console.log(target);
            console.log(title + ' ' + form_type + ' ' + hidden_type + ' ' + timer);
            $.ajax({
                type: "POST",
                url: target,
                dataType: "json",
                data: "title="+title+"&form_type="+form_type+"&hidden_type="+hidden_type+"&timer="+timer+"&active_start="+active_start+"&active_end="+active_end,
                cache:false
            });
            return false;
        });
        
    });
</script>

<?php
echo '<div class="msg_list">';
echo '<p class="msg_head">Form preferences</p>';
echo '<div class="msg_body">';

echo form_open("welcome/submit_form") . '<br/>';
echo '<ul><li>' . form_hidden('author_id', '2') . '</li>';
echo 'Title<br/>';
echo '<li>' . form_input('title', '') . '</li>';

echo "Formtype";
echo '<li>' . form_radio('form_type', '1', TRUE) . 'Questioner </li>';
echo '<li>' . form_radio('form_type', '2') . 'Regul        ar </li>';
echo '<li>' . form_radio('form_type', '3') . 'Exams </li>';
echo '<li>' . form_radio('form_type', '4') . 'Email </li>';

echo 'Hide';
echo '<li>' . form_radio('hidden_type', '1', TRUE) . 'Never </li>';
echo '<li>' . form_radio('hidden_type', '2') . 'After Enddate </li>';
echo '<li>' . form_radio('hidden_type', '3') . 'Allways </li>';

echo 'Fill answer alternatives (will automatically be randomized)</li>';
echo '<li>' . form_input('timer', '') . 'Timer example <i>hours:mins</i></li>';
echo '<li>' . form_input('active_start', date('Y-m-d')) . 'Startdate</li>';
echo '<li>' . form_input('active_end', date('Y-m-d')) . 'Enddate</li>';

echo '<li>' . anchor('welcome/list_forms', 'Back list') . ' ' . form_submit('submit', 'Save form', 'id="form_submit') . '</li>';
echo '</ul>';


echo '<ul class="tags">Tags: ';
echo '</ul>';

echo '</div></div>';


echo '<p id="create_question"class="msg_head">Add Questions</p>';
echo '<div class="msg_body">';
$this->load->view('create_question');
echo "</div>";

echo '<p id="create_label"class="msg_head">Add Labels</p>';
echo '<div class="msg_body">';
$this->load->view('create_labels');
echo "</div>";

//questions
echo '<p class="msg_head">Add Questions to form</p>';
echo '<div class="msg_body">';
echo "<p class='sort_questions'>Sort by: <a href='#' id='sortQuestions'>Questions</a><a href='#' id='sortLabels'>Labels</a><a href='#' id='sortBoth'>Both</a></p>";
echo "<div class='column' id='column1'>";
if ($content['questions'] != NULL) {
    foreach ($content['questions'] as $key) {
        foreach ($key as $item) {

            switch ($item['type']) {
                case 1: echo '<dl class="question dragbox">
                    <dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                        <dd class="dragbox-content">' . $item['answ1'] . '</dd>
                    </dl>';
                    break;
                case 2: echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                            <dd class="dragbox-content">
                            <ul>';
                                if($item['answ1']) echo '<li>' . form_radio($item['id'], '', $item['cansw1']).$item['answ1'] . '</li>';
                                if($item['answ2']) echo '<li>' . form_radio($item['id'], '', $item['cansw2']).$item['answ2'] . '</li>';
                                if($item['answ3']) echo '<li>' . form_radio($item['id'], '', $item['cansw3']).$item['answ3'] . '</li>';
                                if($item['answ4']) echo '<li>' . form_radio($item['id'], '', $item['cansw4']).$item['answ4'] . '</li>';
                                if($item['answ5']) echo '<li>' . form_radio($item['id'], '', $item['cansw5']).$item['answ5'] . '</li>';
                                if($item['answ6']) echo '<li>' . form_radio($item['id'], '', $item['cansw6']).$item['answ6'] . '</li>';
                                if($item['answ7']) echo '<li>' . form_radio($item['id'], '', $item['cansw7']).$item['answ7'] . '</li>';
                                if($item['answ8']) echo '<li>' . form_radio($item['id'], '', $item['cansw8']).$item['answ8'] . '</li>';
                                if($item['answ9']) echo '<li>' . form_radio($item['id'], '', $item['cansw9']).$item['answ9'] . '</li>';
                                if($item['answ10']) echo '<li>' . form_radio($item['id'], '', $item['cansw10']).$item['answ10'] . '</li>';
                       echo '</ul>
                            </dd></dl>';
                    break;
                case 3: echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                            <dd class="dragbox-content">
                            <ul>';
                                if($item['answ1']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw1']).$item['answ1'] . '</li>';
                                if($item['answ2']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw2']).$item['answ2'] . '</li>';
                                if($item['answ3']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw3']).$item['answ3'] . '</li>';
                                if($item['answ4']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw4']).$item['answ4'] . '</li>';
                                if($item['answ5']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw5']).$item['answ5'] . '</li>';
                                if($item['answ6']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw6']).$item['answ6'] . '</li>';
                                if($item['answ7']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw7']).$item['answ7'] . '</li>';
                                if($item['answ8']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw8']).$item['answ8'] . '</li>';
                                if($item['answ9']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw9']).$item['answ9'] . '</li>';
                                if($item['answ10']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw10']).$item['answ10'] . '</li>';
                       echo '</ul>
                            </dd></dl>';
                    break;

                case 4: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd></dl>';
                    break;
                case 5: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd></dl>';
                    break;
                case 6: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd></dl>';
                    break;
                case 7: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><p><i>' . ' ' . $item['question'] . '</i></p></dt><dd></dd></dl>';
                    break;
                case 8: echo '<dl class="default_label dragbox"><dt id="' . $item['id'] . '"><p>' . ' ' . $item['question'] . '</p></dt></dl>';
                break;
            }
        }
    }
}

echo "</div>";
echo "<div class='column' id='column2'>";
if ($content['all_questions']) {
    foreach ($content['all_questions'] as $item) {

        switch ($item['type']) {
            case 1: echo '<dl class="question dragbox">
                        <dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                        <dd class="dragbox-content">' . $item['answ1'] . '</dd>
                    </dl>';
                break;
             case 2: echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                            <dd class="dragbox-content">
                            <ul>';
                                if($item['answ1']) echo '<li>' . form_radio($item['id'], '', $item['cansw1']).$item['answ1'] . '</li>';
                                if($item['answ2']) echo '<li>' . form_radio($item['id'], '', $item['cansw2']).$item['answ2'] . '</li>';
                                if($item['answ3']) echo '<li>' . form_radio($item['id'], '', $item['cansw3']).$item['answ3'] . '</li>';
                                if($item['answ4']) echo '<li>' . form_radio($item['id'], '', $item['cansw4']).$item['answ4'] . '</li>';
                                if($item['answ5']) echo '<li>' . form_radio($item['id'], '', $item['cansw5']).$item['answ5'] . '</li>';
                                if($item['answ6']) echo '<li>' . form_radio($item['id'], '', $item['cansw6']).$item['answ6'] . '</li>';
                                if($item['answ7']) echo '<li>' . form_radio($item['id'], '', $item['cansw7']).$item['answ7'] . '</li>';
                                if($item['answ8']) echo '<li>' . form_radio($item['id'], '', $item['cansw8']).$item['answ8'] . '</li>';
                                if($item['answ9']) echo '<li>' . form_radio($item['id'], '', $item['cansw9']).$item['answ9'] . '</li>';
                                if($item['answ10']) echo '<li>' . form_radio($item['id'], '', $item['cansw10']).$item['answ10'] . '</li>';
                       echo '</ul>
                            </dd></dl>';
                    break;
                case 3: echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                            <dd class="dragbox-content">
                            <ul>';
                                if($item['answ1']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw1']).$item['answ1'] . '</li>';
                                if($item['answ2']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw2']).$item['answ2'] . '</li>';
                                if($item['answ3']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw3']).$item['answ3'] . '</li>';
                                if($item['answ4']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw4']).$item['answ4'] . '</li>';
                                if($item['answ5']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw5']).$item['answ5'] . '</li>';
                                if($item['answ6']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw6']).$item['answ6'] . '</li>';
                                if($item['answ7']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw7']).$item['answ7'] . '</li>';
                                if($item['answ8']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw8']).$item['answ8'] . '</li>';
                                if($item['answ9']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw9']).$item['answ9'] . '</li>';
                                if($item['answ10']) echo '<li>' . form_checkbox($item['id'], '', $item['cansw10']).$item['answ10'] . '</li>';
                       echo '</ul>
                            </dd></dl>';
                    break;

            case 4: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt><dd></dd></dl>';
                break;
            case 5: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt><dd></dd></dl>';
                break;
            case 6: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt><dd></dd></dl>';
                break;
            case 7: echo '<dl class="label dragbox"><dt id="' . $item['id'] . '"><p><i>' . ' ' . $item['question'] . '</i></p></dt><dd></dd></dl>';
                break;
            case 8: echo '<dl class="default_label dragbox"><dt id="' . $item['id'] . '"><p>' . ' ' . $item['question'] . '</p></dt></dl>';
                break;
        }
    }
}
echo '</div></div>';

echo "<div id='content_footer'>";
echo form_submit('submit', 'Save form', 'id="form_submit');
echo form_close();
echo '</div>';
?>
