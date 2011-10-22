<script type="text/javascript">
    $(document).ready(function(){
      
        $("#label_submit").click(function(){
            var label = $("#label").val();
            var type = $("input[name=type]:radio:checked").val();

            $.ajax({
                type: "POST",
                url: '/msf/index.php/welcome/submit_labels',
                dataType: "json",
                data: "label="+label+"&type="+type,
                cache:false,
                success: function(data){
                    $(".Label").append(data);
                }
            });
            return false;
        });
        
        
        $('input.textarea').click(function(){
            var textarea = '<textarea name="label" id="label"></textarea>';
            $('li#label_input').html(textarea);
        });
        $('input.text').click(function(){
            var input = '<input type="text" name="label" id="label" />';
            $('li#label_input').html(input);
        });
         

    });

</script>

<div id="create_label">
    <form action="welcome/submit_labels" method="post">
        <ul class="Label">
            <li id="label_input">
                <input type="text" name="type" />
            </li>
            <li>
                <input type="radio" name="type" value="h3" id="h3" class="text" />
                <label for="h3">H3</label>
            </li>
            <li>
                <input type="radio" name="type" value="h4" id="h4" class="text" />
                <label for="h4">H4</label>
            </li>
            <li>
                <input type="radio" name="type" value="cursive" id="cursive" class="text" />
                <label for="cursive">Cursive</label>
            </li>
            <li>
                <input type="radio" name="type" value="freetext" id="freetext" class="textarea" />
                <label for="freetext">Freetext</label>
            </li>
            <li>
                <input type="radio" name="type" value="default_label" id="default_label" class="textarea" />
                <label for="freetext">Header text</label>
            </li>
        </ul>
        <input type="submit" name="submit" id="label_submit" value="Add Label" />
    </form>
</div>









