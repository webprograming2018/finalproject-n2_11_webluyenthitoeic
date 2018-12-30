$(document).ready(function(){
    $(document).on('click', '#submitTest', function(e){
        e.preventDefault();
        var form = $('#fulltest_part_head');
	var total = $("input[type=radio]:checked").length;
	if (total == 0){
	    alert("Answer is empty....");
	    return false;
	}
        var id = form.data("testid");
        $.ajax({
            type: "POST",
            url: form.attr('action'),
            data: form.serialize(),
            dataType: 'JSON',
            success: function(data){
                $("input[type=radio]:checked").addClass("false");
                $('input[type=radio][name^="answer"]').attr('disabled', true);
                var dem = 0;
                console.log(data);
                var listen = 0;
                var read = 0;
                $('.cau').find("a").css("background-color", "#ff6666");
                $.each(data, function(key, value){
                    dem++;
                    var radio_answer_read = "radio_answer_read_"+value+dem;
                    var radio_answer_listen = "radio_answer_listen_"+value+dem;
                    radio_answer_read = radio_answer_read.toLowerCase();
                    radio_answer_listen = radio_answer_listen.toLowerCase();
                    $('.'+radio_answer_read).removeClass("false");
                    $('.'+radio_answer_read).addClass("true");
                    $('.'+radio_answer_listen).removeClass("false");
                    $('.'+radio_answer_listen).addClass("true");
                    if($('.'+radio_answer_read).is(':checked')){
                        read++;
                        $('.cau_'+dem).find("a").css("background-color", "#10e810");
                    }
                    if($('.'+radio_answer_listen).is(':checked')){
                        listen++;
                        $('.cau_'+dem).find("a").css("background-color", "#10e810");
                    }
                    $('.script_answer_'+dem).addClass('script_answer'+dem);
                    $('.script_answer_'+dem).addClass('script_answer');
                });
                var page = $('#fulltest_page').data("page");
                $('.fullest_page_'+page).find(".script_answer").show();
                var detail = '<table class="table table-striped table-hover"><thead><tr><th>Listening</th><th>Reading</th><th>Score</th></tr></thead><tbody><tr><td>'+listen*5+'</td><td>'+read*5+'</td><td>'+(listen*5+read*5)+'</td></tr></tbody></table>';
                $('.modal-header').html(detail);
                $('#modal-message').modal();
            }
        });
        window.localStorage.removeItem("timer");
    	var result = "00" + ":" + "00" + ":" +"00";
    	$('#timer').html(result);
    	$('#timeStart').val(0);
        clearTimeout(t);
    });
});
