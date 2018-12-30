function getdata(){
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if(xhttp.readyState==4&&xhttp.status==200){
					var content = xhttp.response;
					var obj = JSON.parse(content);
			
					var length = obj.length;
					console.log(length);
					// for (var i = 0; i <= length; i++) {
						var y = Math.floor((Math.random() * length) + 1);
					// window.alert(obj[0]["question"]);
					
						var question = obj[y]["question"];
						var answers = obj[y]["choose"][0]["content"];
						document.getElementById("question").innerHTML = obj[y]["question"]; 
						document.getElementById("ra1").innerHTML = obj[y]["choose"][0]["content"];
						document.getElementById("ra2").innerHTML = obj[y]["choose"][1]["content"];
						document.getElementById("ra3").innerHTML = obj[y]["choose"][2]["content"];
						document.getElementById("ra4").innerHTML = obj[y]["choose"][3]["content"];
					// for (var i = 1; i <=4 ; i++) {
					// 	document.getElementById("radio"+ i).innerHTML = answers[i].content;
					// }
					// }
					
				}
			};
			xhttp.open("GET","test.json",true);
			xhttp.send();
		}