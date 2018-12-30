$(document).ready(function(){
    $(document).on('click', '.detailTest', function(e){
	e.preventDefault();
	var test = $(this).data('test');
	var part = $(this).data('part');
        $.ajax({
            type: "GET",
            url: "getPart",
            data:{test: test, part :part},
            success: function (data, textStatus, jqXHR) {
                var detail = '<center><h3>Test '+test+' '+part+'</h3></center>';
                detail += '<a href="#"><span class="glyphicon glyphicon-plus"></span>New question</a>';
		detail += '<table class="table table-striped table-hover">';
		detail += '<thead>';
		detail += '<tr>';
		detail += '<th>ID</th>';
                if(part == "Part1"){
                    detail += '<th>Picture</th>';
                    detail += '<th>Id media</th>';
                } else if(part == "Part2"){
                    detail += '<th>Id media</th>';
                } else if(part == "Part3" || part == "Part4"){
                    detail += '<th>Question</th>';
                    detail += '<th>Id media</th>';
                } else{
                    detail += '<th>Question</th>';
                    detail += '<th>A</th>';
                    detail += '<th>B</th>';
                    detail += '<th>C</th>';
                    detail += '<th>D</th>';
                }
		detail += '<th>Answer</th>';
		detail += '</tr>';
		detail += '</thead>';
		detail += '<tbody>';
                $.each(JSON.parse(data), function(key, value){
                    detail += '<tr>';
                    detail += '<td>'+value['id']+'</td>';
                    if(part == "Part1"){
                        detail += '<td>'+value['picture']+'</td>';
                        detail += '<td>'+value['media_id']+'</td>';
                    } else if(part == "Part2"){
                        detail += '<td>'+value['media_id']+'</td>';
                    } else if(part == "Part3" || part == "Part4"){
                        detail += '<td>'+value['question']+'</td>';
                        detail += '<td>'+value['media_id']+'</td>';
                    } else{
                        detail += '<td>'+value['question']+'</td>';
                        detail += '<td>'+value['A']+'</td>';
                        detail += '<td>'+value['B']+'</td>';
                        detail += '<td>'+value['C']+'</td>';
                        detail += '<td>'+value['D']+'</td>';
                    }
                    detail += '<td>'+value['answer']+'</td>';
                    detail += '</tr>';
                });
                detail += '</tbody>';
		detail += '</table>';
                $('.modal-header').html(detail);
		$('#modal-message').modal();
            }
        });
    });
});