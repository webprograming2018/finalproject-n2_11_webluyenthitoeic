$(document).ready(function(){
	var dem = 0;
	$(document).on('click', '.addQuestion', function(e){
        e.preventDefault();
        var total = $('.dem').val();
        total = total+1;
        $('.delete').show();
        dem = dem+1;
        $('.dem').val(total);
        alert(dem);
        $('.add').append('<li class="qu'+dem+'"><table class="table table-striped table-hover"><tbody><tr><td colspan="2"><div class="form-group " ><label for="">Enter question :</label><textarea name="question'+dem+'" id="input" class="form-control" rows="3" required="required"></textarea></div></td></tr><tr><td><label for="">A:</label><input type="text" name="A'+dem+'" id="input" class="form-control" value="" required="required" title="" placeholder="enter A"></td><td><label for="">B:</label><input type="text" name="B'+dem+'" id="input" class="form-control" value="" required="required" title="" placeholder="enter B"></td></tr><tr><td><label for="">C:</label><input type="text" name="C'+dem+'" id="input" class="form-control" value="" required="required" title="" placeholder="enter C"></td><td><label for="">D:</label><input type="text" name="D'+dem+'" id="input" class="form-control" value="" required="required" title="" placeholder="enter D"></td></tr><tr><td colspan="2"><label for="">Answer:</label><input type="text" name="answer'+dem+'" id="input" class="form-control" value="" required="required" title="" placeholder="enter answer true"></td></tr></tbody></table></li>');
    });
    $(document).on('click', '.delete', function(e){
        e.preventDefault();
        if(dem!=0){
        	var qu = 'qu'+dem;
        	$('.'+qu+'').remove() ;
        	dem--;
                var total = $('.dem').val();
                total = total - 1;
                $('.dem').val(total);
        	if(dem == 0){
        		$('.delete').hide();
        	}
        }
    });

    $(document).on('click', '.addQuestionPart2', function(e){
        e.preventDefault();
        $('.delete').show();
        dem++;
        $('.add').append('<li class="qu'+dem+' col-md-12"><div class="form-group answerDiff  "><div class="col-md-12 choosemedia"><label for="">Choose media</label><input type="file" data-media="media'+dem+'" name="media'+dem+'" data-link="media'+dem+'"><audio controls class="media'+dem+'"><source src="" type="audio/mpeg" ></audio></div><label for="">Answer:</label><input type="text" name="answer'+dem+'" id="input" class="form-control" value="" required="required" title="" placeholder="enter answer true"><div class="form-group"><label for="">Enter script answer  :</label><textarea name="script_answer'+dem+'" id="input" class="form-control" rows="3" ></textarea></div></li>');
    	$('input[type=file]').change(function() {
			var link = $(this).data("link");
			var file = $(this).get(0).files[0];
			var reader  = new FileReader();

			reader.addEventListener("load", function () {
				$('.'+link).attr("src",reader.result )  ;
			}, false);

			if (file) {
				reader.readAsDataURL(file);
			}
		});
        $('.dem').val(dem);
    });

    $(document).on('click', '.addQuestionPart1', function(e){
        e.preventDefault();
        $('.delete').show();
        dem++;
        $('.dem').val(dem);
        $('.add').append('<li class="qu'+dem+' col-md-12"><div class="form-group answerDiff  col-md-12"><div class="col-md-6 choosemedia"><label for="">Choose media</label><input type="file" data-media="media'+dem+'" name="media'+dem+'" data-link="media'+dem+'"><audio controls class="media'+dem+'"><source src="" type="audio/mpeg" ></audio></div><div class="col-md-6 addImage"><label for="">Choose picture</label><input type="file" id="insert-media-button" class="button insert-media add_media" data-editor="content" name="picture'+dem+'" data-link="picture'+dem+'"><img src="" alt="" class="picture'+dem+'" width="200px"></div></div><div class="col-md-12"><label for="">Answer:</label><input type="text" name="answer'+dem+'" id="input" class="form-control" value="" required="required" title="" placeholder="enter answer true"></div><div class="form-group"><label for="">Enter script answer  :</label><textarea name="script_answer'+dem+'" id="input" class="form-control" rows="3" ></textarea></div></li>');
    	$('input[type=file]').change(function() {
		var link = $(this).data("link");
		var file = $(this).get(0).files[0];
		var reader  = new FileReader();

		reader.addEventListener("load", function () {
			$('.'+link).attr("src",reader.result )  ;
		}, false);

		if (file) {
			reader.readAsDataURL(file);
		}
		
	});
    });

    $('input[type=radio][name=part_id]').change(function() {
		var part = $(this).val();
		if(part == "Part1"){
			$('#addQu').removeClass('addQuestion').addClass('addQuestionPart1');
			$('#addQu').removeClass('addQuestionPart2').addClass('addQuestionPart1');
			$('.add').empty();
			$('.addImage').show();
                        $('.delete').hide();
                        $('.submit').attr("name", "addQuestionPart1");
		}  else if(part == "Part2"){
			$('#addQu').removeClass('addQuestion').addClass('addQuestionPart2');
			$('#addQu').removeClass('addQuestionPart1').addClass('addQuestionPart2');
			$('.add').empty();
			$('.addImage').hide();
                        $('.delete').hide();
                        $('.submit').attr("name", "addQuestionPart2");
		} else {
			$('#addQu').removeClass('addQuestionPart1').addClass('addQuestion');
			$('#addQu').removeClass('addQuestionPart2').addClass('addQuestion');
		}
		dem = 0;
                $('.dem').val(dem);
	});

	$('input[type=file]').change(function() {
		var link = $(this).data("link");
		var file = $(this).get(0).files[0];
		var reader  = new FileReader();

		reader.addEventListener("load", function () {
			$('.'+link).attr("src",reader.result )  ;
		}, false);

		if (file) {
			reader.readAsDataURL(file);
		}
		
	});
});