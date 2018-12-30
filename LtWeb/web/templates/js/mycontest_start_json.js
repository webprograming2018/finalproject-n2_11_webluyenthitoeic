$(document).ready(function(){
			$(document).on('click', ".start", function(){
				$.getJSON("test.json", function(data){
					$(".hours").show();
					console.log(data);
					var question = "";
					var answers = "";
					question += '<div id="answers">';
					$.each(data, function(key, value){
						var dem = 0;
						// console.log(value["question"]);
						question += '<li class="'+value["id"]+'">'+value["question"]+'</li>';
						question +='<ol class="alpha" >';
						$.each(value["choose"], function(key1, value1){
							question += '<li><input value="'+value1['name']+'" type="radio"  name="'+value['id']+'" state="'+value1['state']+'"> <label>'+value1['content']+'</label></li>';
							dem++;
						});
						question += '</ol>';
						question += '</p>';
					});
					question += '</div>';
					$(".questions").html(question);	
					// $(".my-answer").html(answers);
				});
				$(this).hide();
				$('.stop').show();
				$('#btn-script-answer').show();
			})
			
		});