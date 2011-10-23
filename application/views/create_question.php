<script type="text/javascript">
    $(document).ready(function(){
        
        
    var qt = $("#question_type");
    qt.empty();
    var atr = "<dl class='answers_type_radiobuttons'>"
        +"Enter answeralternatives and select correct answer<br/>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' checked='TRUE'/></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' name='answ' /></dt><dd><input type='radio' name='cansw'  value='1' /></dd>"
        +"</dl>";

    var atc ="<dl class='answers_type_checkboxes'>"
        +"Enter answeralternatives and select correct answers<br/>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"<dt><input type='text' class='answ' name='answ' /></dt><dd><input type='checkbox' name='cansw'  value='1' /></dd>"
        +"</dl>";

    var att = "<dl class='answers_type_text'>"
        +"Enter a korrekt answer for easier corection<br/>"
        +"<dt><textarea name='answ'></textarea></dt><dd></dd>"
        +"</dl>";

    var answ_type =  $("input[name=type]:radio:checked").val();
   
    $("input[name=type]").click(function(){
        qt.empty();
        answ_type =  $("input[name=type]:radio:checked").val();
            
        if(answ_type == 'radiobuttons'){
            $(qt).append(atr);
        }else if(answ_type == 'checkboxes'){
            $(qt).append(atc);
        }else if(answ_type == 'text'){
            $(qt).append(att);
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
        
        var type = {type: $("input[name=type]:radio:checked").val()};
        var question = {question: $("textarea[name=question]").val()};
        var answ = {answt: $("textarea[name=answ]").val()};
        items.push(type);
        items.push(question);
        $(fieldsel).each(function(){
            
            $('dt', this).each(function(i){
                        
                var item = {
                    answ: $(this).find(":input[name=answ]").val(),
                    cansw: $(this).next().find(":input[name=cansw]:checked").val()
                            
                };
                        
                //Push item object into items array
                items.push(item);
            });
        });
        
        var data = { items: items };
            
        if(items.length != 0 || items.length != undefined){
            $.post('/msf/index.php/welcome/submit_question', 'data='+$.toJSON(data), function(data, response){
               /* console.log(response);
                if(response == "success"){
                $("#question_submit").html(data);
                //console.log(data + response);
                }
                setTimeout(function(){
                    $('.success').fadeOut(1000).remove();
                }, 2000);*/
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
echo "<li>" . form_radio('type', 'text', 'checked="checked"') . 'Text </li>';
echo "<li>" . form_radio('type', 'radiobuttons') . 'Radiobuttons </li>';
echo "<li>" . form_radio('type', 'checkboxes') . 'Checkboxes </li>';
echo "</ul>";
echo "<div id=question_type></div>";
echo form_button('submit', 'Add Question', 'id="question_submit"');
echo form_close();
echo '</div>';
?>