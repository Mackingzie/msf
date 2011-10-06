<script type="text/javascript">
    $(".question").click(function () {
        $("id:eq(0)").show("fast", function () {
            /* use callee so don't have to name the function */
            $(this).next("dd").show(700, arguments.callee);
        });
    });
    $(".question").click(function () {
        $(this).hide(2000);
    });

</script>
<?php
echo '<h2>Forms</h2>';
echo '<dl class="forms">';
echo anchor('welcome/create_form', 'Create new form').'<br/><br/>';
$i = 0;
foreach ($content as $item) {
    echo "<li>Title: {$item['title']}</li>";
    echo "<li>Timer: {$item['timer']}</li>";
    echo "<li>Author: {$item['author_id']}</li>";
    echo "<li>Startdate: {$item['active_start']}</li>";
    echo "<li>Enddate: {$item['active_end']}</li>";
    echo '<ul>Tags';
    if ($content[$i]['tags']) {
        foreach ($content[$i]['tags'] as $item) {
            echo '<li class="label" id="' . $item['id'] . '">' . ' ' . $item['tag'] . '</li>' . anchor("welcome/remove_tag/{$item['id']}", "X");
            $i++;
        }
    }
    echo '</ul>';
}
echo anchor('welcome/copy_form', 'Create form copy');
echo '</dl>';

?>
