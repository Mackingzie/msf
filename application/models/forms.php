<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of forms
 *
 * @author marcus
 */
class forms extends CI_Model {


    
    function create_forms_table() {

        $query = $this->db->query(
        'CREATE TABLE forms (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        question1  VARCHAR (200), qtype1  int,
        question2  VARCHAR (200), qtype2  int,
        question3  VARCHAR (200), qtype3  int,
        question4  VARCHAR (200), qtype4  int,
        question5  VARCHAR (200), qtype5  int,
        question6  VARCHAR (200), qtype6  int,
        question7  VARCHAR (200), qtype7  int,
        question8  VARCHAR (200), qtype8  int,
        question9  VARCHAR (200), qtype9  int,
        question10  VARCHAR (200), qtype10  int,
        question11  VARCHAR (200), qtype11  int,
        question12  VARCHAR (200), qtype12  int,
        question13  VARCHAR (200), qtype13  int,
        question14  VARCHAR (200), qtype14  int,
        question15  VARCHAR (200), qtype15  int,
        question16  VARCHAR (200), qtype16  int,
        question17  VARCHAR (200), qtype17  int,
        question18  VARCHAR (200), qtype18  int,
        question19  VARCHAR (200), qtype19  int,
        question20  VARCHAR (200), qtype20  int,
        question21  VARCHAR (200), qtype21  int,
        question22  VARCHAR (200), qtype22  int,
        question23  VARCHAR (200), qtype23  int,
        question24  VARCHAR (200), qtype24  int,
        question25  VARCHAR (200), qtype25  int,
        question26  VARCHAR (200), qtype26  int,
        question27  VARCHAR (200), qtype27  int,
        question28  VARCHAR (200), qtype28  int,
        question29  VARCHAR (200), qtype29  int,
        question30  VARCHAR (200), qtype30  int,
        question31  VARCHAR (200), qtype31  int,
        question32  VARCHAR (200), qtype32  int,
        question33  VARCHAR (200), qtype33  int,
        question34  VARCHAR (200), qtype34  int,
        question35  VARCHAR (200), qtype35  int,
        question36  VARCHAR (200), qtype36  int,
        question37  VARCHAR (200), qtype37  int,
        question38  VARCHAR (200), qtype38  int,
        question39  VARCHAR (200), qtype39  int,
        question40  VARCHAR (200), qtype40  int,
        question41  VARCHAR (200), qtype41  int,
        question42  VARCHAR (200), qtype42  int,
        question43  VARCHAR (200), qtype43  int,
        question44  VARCHAR (200), qtype44  int,
        question45  VARCHAR (200), qtype45  int,
        question46  VARCHAR (200), qtype46  int,
        question47  VARCHAR (200), qtype47  int,
        question48  VARCHAR (200), qtype48  int,
        question49  VARCHAR (200), qtype49  int,
        question50  VARCHAR (200), qtype50  int,
        question51  VARCHAR (200), qtype51  int,
        question52  VARCHAR (200), qtype52  int,
        question53  VARCHAR (200), qtype53  int,
        question54  VARCHAR (200), qtype54  int,
        question55  VARCHAR (200), qtype55  int,
        question56  VARCHAR (200), qtype56  int,
        question57  VARCHAR (200), qtype57  int,
        question58  VARCHAR (200), qtype58  int,
        question59  VARCHAR (200), qtype59  int,
        question60  VARCHAR (200), qtype60  int,
        question61  VARCHAR (200), qtype61  int,
        question62  VARCHAR (200), qtype62  int,
        question63  VARCHAR (200), qtype63  int,
        question64  VARCHAR (200), qtype64  int,
        question65  VARCHAR (200), qtype65  int,
        question66  VARCHAR (200), qtype66  int,
        question67  VARCHAR (200), qtype67  int,
        question68  VARCHAR (200), qtype68  int,
        question69  VARCHAR (200), qtype69  int,
        question70  VARCHAR (200), qtype70  int,
        question71  VARCHAR (200), qtype71  int,
        question72  VARCHAR (200), qtype72  int,
        question73  VARCHAR (200), qtype73  int,
        question74  VARCHAR (200), qtype74  int,
        question75  VARCHAR (200), qtype75  int,
        question76  VARCHAR (200), qtype76  int,
        question77  VARCHAR (200), qtype77  int,
        question78  VARCHAR (200), qtype78  int,
        question79  VARCHAR (200), qtype79  int,
        question80  VARCHAR (200), qtype80  int,
        question81  VARCHAR (200), qtype81  int,
        question82  VARCHAR (200), qtype82  int,
        question83  VARCHAR (200), qtype83  int,
        question84  VARCHAR (200), qtype84  int,
        question85  VARCHAR (200), qtype85  int,
        question86  VARCHAR (200), qtype86  int,
        question87  VARCHAR (200), qtype87  int,
        question88  VARCHAR (200), qtype88  int,
        question89  VARCHAR (200), qtype89  int,
        question90  VARCHAR (200), qtype90  int,
        question91  VARCHAR (200), qtype91  int,
        question92  VARCHAR (200), qtype92  int,
        question93  VARCHAR (200), qtype93  int,
        question94  VARCHAR (200), qtype94  int,
        question95  VARCHAR (200), qtype95  int,
        question96  VARCHAR (200), qtype96  int,
        question97  VARCHAR (200), qtype97  int,
        question98  VARCHAR (200), qtype98  int,
        question99  VARCHAR (200), qtype99  int,
        question100  VARCHAR (200), qtype100  int
        )
        
        ');
    }

}
?>
