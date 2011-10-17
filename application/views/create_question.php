<script type="text/javascript">
    $(document).ready(function(){
        $("#question_submit").click(function(){
            var question = $("input[name=question]").val();
            var type = $("input[name=type]:radio:checked").val();
            var answ1 = $("input[name=answ1]").val();
            var answ2 = $("input[name=answ2]").val();
            var answ3 = $("input[name=answ3]").val();
            var answ4 = $("input[name=answ4]").val();
            var answ5 = $("input[name=answ5]").val();
            var answ = $("input[name=answ]").val();
           
            var target = '/msf/index.php/welcome/submit_question';
            console.log(target);
                
            $.ajax({
                type: "POST",
                url: target,
                dataType: "json",
                data: "question="+question+"&type="+type+"&answ1="+answ1+"&answ2="+answ2+"&answ3="+answ3+"&answ4="+answ4+"&answ5="+answ5+"&answ="+answ,
                cache:false
            });
            return false;
        });
    });
</script>
<?php
echo '<div id="create_question">';
echo 'Add Your question!';
echo form_open('welcome/submit_question').'<br/>';
echo form_textarea('question', '').'<br/>';
echo form_radio('type', 'text', TRUE).'Text <br/>';
echo form_radio('type', 'radiobuttons').'Radiobuttons <br/>';
echo form_radio('type', 'checkboxes').'Checkboxes <br/>';

echo 'Fill answer alternatives (will automatically be randomized)<br/>';
echo form_input('answ1', '').'<br/>';
echo form_input('answ2', '').'<br/>';
echo form_input('answ3', '').'<br/>';
echo form_input('answ4', '').'<br/>';
echo form_input('answ5', '').'<br/>';

echo 'Fill answer to question<br/>';
echo form_textarea('answ', '').'<br/>';

echo form_submit('submit', 'Add Question', 'id="question_submit"');
echo form_close();
echo '</div>';
?>
