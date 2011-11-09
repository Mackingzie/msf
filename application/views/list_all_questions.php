<?php

    foreach ($content as $item) {

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

?>