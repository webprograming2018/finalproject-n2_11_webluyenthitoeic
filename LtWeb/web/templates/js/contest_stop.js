( function( $ ){
		$( document ).ready( function(){
			$( "form" ).submit( function( e ) {
				e.preventDefault();
				var formData = $(this).serializeObject();
			
				var xacnhan = confirm("you sure are end of test?");
				if(xacnhan == 1){
					$("input[type=radio]").attr('disabled', true);
					console.log(formData);
					localStorage.setItem('testJSON', JSON.stringify(formData));
					$("#h").text(0);
					$("#m").text(0);
					$("#s").text(0);
				}
				
			} );
		} );
	} )( jQuery );