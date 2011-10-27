<script type="text/javascript">
    $(document).ready(function(){
        /*
        $("#column2 a").click(function(){
           var id = $(this).match(/([0-9]+)+/g);
           console.log(id);
            $.ajax({
                type: "GET",
                url: "welcome/delete_question/",
                dataType: "json",
                data: id,
                cache:false
            });
       return false;
        });*/
        
       
         $.ajax({
        type: "POST",
        url: "/msf/index.php/welcome/list_all_questions",
        dataType: "json",
        success: function (res) {
            alert('success');
        },
        error: function (xhr, status, error) {
            alert('error!');
        }
    });

    });
</script>
<?php
echo '<div>';
echo '<h2>Questions & Labels</h2>';
echo anchor('welcome/create_question', 'Create question') . ' ' . anchor('welcome/create_labels', 'Create label') . '<br/><br/>';
echo '</div>';
echo "<div id='column2'>";
echo "Sort by: <a href='#' id='sortQuestions'>Questions</a><a href='#' id='sortLabels'>Labels</a><a href='#' id='sortBoth'>Both</a>";
if ($content) {
    $i = 0;
    foreach ($content as $item) {

        switch ($item['type']) {
            case 1: echo '<dl class="question dragbox"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                            <dd class="dragbox-content">' . $item['answ1'] . '</dd></dl>';
                break;
            case 2:
            case 3:
                echo '<dl class="question dragbox">
                                <dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt>
                                <dd class="dragbox-content">
                                    <ul>
                                        <li>' . $item['answ1']."</li><li class=answer>"; $item['cansw1'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ2']."</li><li class=answer>"; $item['cansw2'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ3']."</li><li class=answer>"; $item['cansw3'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ4']."</li><li class=answer>"; $item['cansw4'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ5']."</li><li class=answer>"; $item['cansw5'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ6']."</li><li class=answer>"; $item['cansw6'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ7']."</li><li class=answer>"; $item['cansw7'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ8']."</li><li class=answer>"; $item['cansw8'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ9']."</li><li class=answer>"; $item['cansw9'] == 1? print "correct" : ''; echo '</li>
                                        <li>' . $item['answ10']."</li><li class=answer>"; $item['cansw10'] == 1? print 1 : ''; echo '</li>
                                    </ul>
                                </dd>
                            </dl>';
                break;
            case 4: echo '<dl class="label"><dt id="' . $item['id'] . '"><h3>' . ' ' . $item['question'] . '</h3></dt></dl>';
                break;
            case 5: echo '<dl class="label"><dt id="' . $item['id'] . '"><h4>' . ' ' . $item['question'] . '</h4></dt></dl>';
                break;
            case 6: echo '<dl class="label"><dt id="' . $item['id'] . '"><i>' . ' ' . $item['question'] . '</i></dt></dl>';
                break;
            case 7: echo '<dl class="label"><dt id="' . $item['id'] . '"><em>' . ' ' . $item['question'] . '</em></dt></dl>';
                break;
            case 8: echo '<dl class="default_label"><dt id="' . $item['id'] . '">' . ' ' . $item['question'] . '</dt></dl>';
                break;
        }
    }
    echo '</div>';
    echo '<ul class="tags">';
    if ($content[$i]['tags']) {
        foreach ($content[$i]['tags'] as $item) {
            echo '<li class="tag" id="' . $item['id'] . '">' . ' ' . anchor("welcome/sort_forms_by_tag/" . $item['tag'], $item['tag']) . '</li>  ';
        }
    }

    echo '</ul>';
    echo '</dl>';
}
?>
