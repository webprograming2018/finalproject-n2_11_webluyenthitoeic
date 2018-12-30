$(document).ready(function(){
    $(document).on('click', ".logout", function(e){
        e.preventDefault();
        var href = $(this).attr("href");
        $.ajax({
            type: "GET",
            url: href,
            success: function(){
                $("#formHeader").load(location.href + " #formHeader");
            }
        })
    })
})

