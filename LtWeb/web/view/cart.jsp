<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Cart</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

	<button onclick="myFunction()">Click</button>
	<!-- <script type="text/javascript">
		$(document).ready(function() {
			var cart = JSON.parse(localStorage.getItem("cart"));
			//tao div class product
			var product1 = document.createElement("div");
			product1.classList.add('product');
			document.body.appendChild(product1);

			//tao div class img-product
			var imgproduct = document.createElement("div");
			imgproduct.classList.add('img-product');
			product1.appendChild(imgproduct);

			//tao img
			var img1 = document.createElement("img");
			imgproduct.appendChild(img1);
			
			//tao div class name-price-product
			var namepriceproduct = document.createElement("div");
			namepriceproduct.classList.add('name-price-product');
			product1.appendChild(namepriceproduct);

			//tao p class name
			var name = document.createElement("p");
			name.classList.add('name');
			namepriceproduct.appendChild(name);

			//tao p class price
			var price = document.createElement("p");
			price.classList.add('price');
			namepriceproduct.appendChild(price);

			//tao div class btn-product
			var btnproduct = document.createElement("p");
			btnproduct.classList.add('btn-product');
			product1.appendChild(btnproduct);

			//tao button 
			var btn = document.createElement("button");
			btnproduct.appendChild(btn);

			// var cart = JSON.parse(localStorage.getItem('cart'));
			// $(img1).attr('src',cart.products[0].img);
			// name.textContent = cart.products[0].name;
			// price.textContent = cart.products[0].price;


			//ham click

		});
	</script> -->


	<script type="text/javascript">
 			function myFunction(){

				var product1 = document.createElement("div");//tao the div
				product1.classList.add('product');// gan class co ten la product cho the div
				document.body.appendChild(product1); add the div nay vao body

			
				var imgproduct = document.createElement("div");	//tao the div 
				imgproduct.classList.add('img-product');// gan class co ten la img-product cho the div
				product1.appendChild(imgproduct);//gan the nay vao the div co class ="product"=> chinh la product1

				//tao img
				// nhung cai ben duoi tuong tu
				var img1 = document.createElement("img");
				imgproduct.appendChild(img1);
				
				//tao div class name-price-product
				var namepriceproduct = document.createElement("div");
				namepriceproduct.classList.add('name-price-product');
				product1.appendChild(namepriceproduct);

				//tao p class name
				var name = document.createElement("p");
				name.classList.add('name');
				namepriceproduct.appendChild(name);
				//tao p class name
				var question = document.createElement("p");
				question.classList.add('name');
				namepriceproduct.appendChild(name);

				var answer =document.createElement("p");
				answer.classList.add('answer');
				namepriceproduct.appendChild(answer);

				//tao p class price
				var price = document.createElement("p");
				price.classList.add('price');
				namepriceproduct.appendChild(price);

				//tao div class btn-product
				var btnproduct = document.createElement("p");
				btnproduct.classList.add('btn-product');
				product1.appendChild(btnproduct);

				//tao button 
				var btn = document.createElement("button");
				btnproduct.appendChild(btn);
			

			// thuc hien lay file json, sau do chuyen thanh object
				var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() {
					if(xhttp.readyState==4 && xhttp.status==200){
						var obj = JSON.parse(xhttp.response);// chuyen tu JSON sang object

						// trong cai file json kieu nhu la 1 mang cac object ấy, 
						console.log(obj[0].img); //obj[0] chính là object đầu tiên, .img có nghĩa là key = img 
						// "img": "image7.jpg" => vậy sẽ in ra "image7.jpg"
						$(img1).attr('src',obj[0].img);// nhìn lên dòng  80 thì img1 ở đây chính là thẻ img, câu lệnh này có ý nghĩa là gán thuộc tính src ="image7.jpg" cho thẻ img

						name.textContent = obj[0].name;//tương tự gán text của phần tử p 
						question.textContent = obj[0].question;//tương tự gán text của phần tử p 
						for (var i = 0; i < 4; i++) {
							// obj[0][answer
							answer.textContent = obj[0].choose.[];		
						}
						price.textContent = obj[0].price;// 

					}
 				};
 				xhttp.open('GET','list-product.json',true); // cái này c xem trong slile có ấy :))) phần fetching data thì phải
				xhttp.send();
						///  cậu phải tạo server thì mới chạy dc, vì như hôm trước thầy bảo google k hỗ trợ chạy file
 			}
	</script>
</body>
</html>