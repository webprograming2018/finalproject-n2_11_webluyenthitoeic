$(document).ready(function(){
    $("#fulltest_page").find(".change_page").bind("click",function(e){
        e.preventDefault();
        var page = $("#fulltest_page").data("page"); 
        var type = $(this).data("type");
        var btnScriptNow = "submitScript"+(page-type);
        var btnAgainNow = "submitagain"+(page-type);
        var btnAgain = "submitagain"+page;
        var btnScript = "submitScript"+page;
        $('.btn-again').removeClass(btnAgainNow);
        $('.btn-again').addClass(btnAgain);
        $('.'+btnAgain).hide();
        $('.btn-script').removeClass(btnScriptNow);
        $('.btn-script').addClass(btnScript);
        $('.btn-script').hide();
        
    });
    $(document).on('click', '#submitTest', function(e){
        e.preventDefault();
        var part = $('#fulltest_part_head').data("part");
        var page = $('#fulltest_page').data("page");
        var id = $(".fullest_page_"+page).data("id");
        var media = "media_"+id;
        if (part == "part1" || part == "part2" || part == "part5") {
            if ($(".fullest_page_"+page).find("input:radio").is(':checked')){
                var idQuestion = $(".fullest_page_"+page).find("input:radio").val();
                $(".fullest_page_"+page).find("input[type=radio]:checked").addClass("false");
                $.ajax({
                    type: "POST",
                    url: $('#fulltest_part_head').attr('action'),
                    data: {part: part, id: idQuestion},
                    dataType: 'JSON',
                    success: function(data){
                        var radio_answer = "radio_answer_"+data+page;
                        radio_answer = radio_answer.toLowerCase();
                        $('.'+radio_answer).removeClass("false");
                        $('.'+radio_answer).addClass("true");

                    }
                });
            $('.fullest_page_'+page).find(".submitagain").show();
            $("#fulltest_page").find('.submitagain'+page).show();
            $("#fulltest_page").find('.submitScript'+page).show();
            } else {
                alert("Answer is empty....");
                return false;
            } 
        } else {
            if ($("."+media).find("input:radio").is(':checked')){
                $("."+media).find("input[type=radio]:checked").addClass("false");
                $.ajax({
                    type: "POST",
                    url: $('#fulltest_part_head').attr('action'),
                    data: {part: part, id: id},
                    dataType: 'JSON',
                    success: function(data){
                        $.each(data, function(key, value){
                            var radio_answer = "radio_answer_"+value+id;
                            radio_answer = radio_answer.toLowerCase();
                            $('.'+radio_answer).removeClass("false");
                            $('.'+radio_answer).addClass("true");
                        });
                    }
                });
                $('.fullest_page_'+page).find(".submitagain").show();
                $("#fulltest_page").find('.submitagain'+page).show();
                $("#fulltest_page").find('.submitScript'+page).show();
            } else {
                alert("Answer is empty....");
                return false;
            } 
        }
    });
    $(document).on('click', '.btn-again', function(e){
        e.preventDefault();
        var page = $('#fulltest_page').data("page");
        var id = $(".fullest_page_"+page).data("id");
        $(".fullest_page_"+page).find("input[type=radio]").removeClass("false");
        $(".fullest_page_"+page).find("input[type=radio]").removeClass("true");
        var media = "media_"+id;
        $("."+media).find("input[type=radio]").removeClass("false");
        $("."+media).find("input[type=radio]").removeClass("true");
        $('.script_answer_'+page).hide();
        $('.submitScript'+page).hide();
        $(this).hide();
    });
    $(document).on('click', '.btn-script', function(e){
        e.preventDefault();
        var page = $('#fulltest_page').data("page");
        $('.script_answer_'+page).show();
        $(this).hide();
    });
});

