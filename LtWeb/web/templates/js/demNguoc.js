$(document).ready(function(){
    var c = localStorage.getItem("timer");
    if(c == null || c==0){
    	c = $('#timeStart').val();
	}	
    var t;
    timedCount();

    function timedCount()
    {

        var hours = parseInt( c / 3600 ) % 24;
        var minutes = parseInt( c / 60 ) % 60;
        var seconds = c % 60;

        var result = (hours < 0 ? "0" + hours : hours) + ":" + (minutes <        10 ? "0" + minutes : minutes) + ":" + (seconds  < 10 ? "0" + seconds : seconds);

        $('#timer').html(result);
        if(c == 0 )
        {
            window.localStorage.removeItem("timer");
            
        }
        c = c - 1;
        localStorage.setItem("timer", c);
        t = setTimeout(function()
        {
            timedCount()
        },1000);

    }
});

