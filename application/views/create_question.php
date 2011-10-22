<script type="text/javascript">
    $(document).ready(function(){
        
        
        $(".answers_type_checkboxes").hide();
        $(".answers_type_radiobuttons").hide();
        
        var answ_type =  $("input[name=type]:radio:checked").val();
        
        $("input[name=type]").click(function(){
            answ_type =  $("input[name=type]:radio:checked").val();
            
            if(answ_type == 'radiobuttons'){
                $(".answers_type_checkboxes").hide();
                $(".answers_type_text").hide();
                $(".answers_type_radiobuttons").show();
            }else if(answ_type == 'checkboxes'){
                $(".answers_type_radiobuttons").hide();
                $(".answers_type_text").hide();
                $(".answers_type_checkboxes").show();
            }else if(answ_type == 'text'){
                $(".answers_type_checkboxes").hide();
                $(".answers_type_radiobuttons").hide();
                $(".answers_type_text").show();
            }
        });
         

        $("#question_submit").click(function(){
            var items=[];

            var fieldtype = $("input[name=type]:radio:checked").val();
            
            if(fieldtype == 'radiobuttons'){
                var fieldsel = $('.answers_type_radiobuttons');
            }else if(fieldtype == 'checkboxes'){
                var fieldsel = $('.answers_type_checkboxes');
            }
            console.log(fieldsel);
            var i = 1;
            
                $(fieldsel, ':checkbox').each(function(){
                        
                    var item = {
                        id: i,
                        answ: $(":input[name=answ]").val(),
                        checked: $(":input[name=cansw]:checked").val()
                    };

                    //Push item object into items array
                    items.push(item);
                    i++;
                });
           
            console.log(i);
            //Assign items array to sortorder JSON variable
            var type = {type: $("input[name=type]:radio:checked").val()};
            var question = {question: $("textarea[name=question]").val()};
            var answt = {answt: $("textarea[name=answt]").val()};
            items.push(type);
            items.push(question);
            items.push(answt);
            
            var data = { items: items };
            
            if(items.length != 0 || items.length != undefined){
                console.log(data);
         
                $.post('/msf/index.php/welcome/submit_question', 'data='+$.toJSON(data), function(response){
                    if(response=="success")
                        var text = $('<div class="success">Saved</div>');
                    $("#column1").prepend(text).hide().fadeIn(1000);
                    setTimeout(function(){
                        $('.success').fadeOut(1000).remove();
                    }, 2000);
                    return false;
                });
            }
        });
      
    });
</script>
<?php
echo '<div id="create_question">';
echo 'Add Your question!';
echo form_open('welcome/submit_question') . '<br/>';
echo "<ul>";
echo "<li>" . form_textarea('question', '', 'id="apa"') . '</li>';
echo "<li>" . form_radio('type', 'text', TRUE) . 'Text </li>';
echo "<li>" . form_radio('type', 'radiobuttons') . 'Radiobuttons </li>';
echo "<li>" . form_radio('type', 'checkboxes') . 'Checkboxes </li>';


echo "<dl class='answers_type_radiobuttons'>";
//echo 'Enter answeralternatives and select correct answer<br/>';
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1', TRUE) . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_radio('cansw', '1') . '</dd>';
echo "</dl>";
echo "<dl class='answers_type_checkboxes'>";
echo 'Enter answeralternatives and select correct answers<br/>';
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "<dt>" . form_input('answ', '') . "</dt><dd>" . form_checkbox('cansw', '1') . "</dd>";
echo "</dl>";
echo "<ul class='answers_type_text'>";
echo 'Enter a korrekt answer for easier corection<br/>';
echo "<li>" . form_textarea('answt', '') . '</li>';
echo "</ul>";
echo form_button('submit', 'Add Question', 'id="question_submit"');
echo form_close();
echo '</div>';
?>
