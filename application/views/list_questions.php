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
echo 'edit/delete not working (need js)';
echo '<h2>Questions & Labels</h2>';
echo '<dl class="questions">';
foreach ($content as $item) {
    switch ($item['type']) {
        case '1': echo '<dt class="question" id="'.$item['id'].'">' . ' ' . $item['question'] . '<dt><dd>'.$item['answ'].'</dd>'.form_button('edit', 'edit');
            break;
        case '2': echo '<dt class="question" id="'.$item['id'].'">' . ' ' . $item['question'] . '<dt><dd><ul><li>'.$item['answ1'].'(Correct)</li><li>'.$item['answ2'].'</li><li>'.$item['answ3'].'</li><li>'.$item['answ4'].'</li><li>'.$item['answ5'].'</li></dd>'.form_button('edit', 'edit');
            break;
        case '3': echo '<dt class="question" id="'.$item['id'].'">' . ' ' . $item['question'] . '<dt><dd><ul><li>'.$item['answ1'].'(Correct)</li><li>'.$item['answ2'].'</li><li>'.$item['answ3'].'</li><li>'.$item['answ4'].'</li><li>'.$item['answ5'].'</li></dd>'.form_button('edit', 'edit');
            break;
        case '4': echo '<dt class="question" id="'.$item['id'].'"><h3>' . ' ' . $item['question'] . '</h3><dt><dd></dd>'.form_button('edit', 'edit');
            break;
        case '5': echo '<dt class="question" id="'.$item['id'].'"><h4>' . ' ' . $item['question'] . '</h4><dt><dd></dd>'.form_button('edit', 'edit');
            break;
        case '6': echo '<dt class="question" id="'.$item['id'].'"><i>' . ' ' . $item['question'] . '</i><dt><dd></dd>'.form_button('edit', 'edit');
            break;
        case '7': echo '<dt class="question" id="'.$item['id'].'"><em>' . ' ' . $item['question'] . '</em><dt><dd></dd>'.form_button('edit', 'edit');
            break;
    }
}
echo '</dl>';
?>
