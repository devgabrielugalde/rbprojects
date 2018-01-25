// $('.btn-default').on("click", function () {

// 	if($("#card").css("background", "#000")){
// 		alert("1");
// 		$("#card").css("background", "#eee");

// 	} else if($("#card").css("background", "#eee")) {
// 		alert("2");
// 		$("#card").css("background", "#000")
// 	}

// 	var elem = $("#card");

// 	    $({deg: 0}).animate({deg: 180}, {
// 	        duration: 1000,
// 	        step: function(now){
// 	            elem.css({
// 					transform: "rotateY(" + now + "deg)"
// 	            });
// 	        }
// 	    });

// });


$('#ativar').on("click", function(){
	criarForm();
	instanceCard();
});

function criarForm(){

	var page = document.getElementById('page');

	var card = document.createElement("div");
	card.setAttribute("class", "card");

	var form = document.createElement("form");

	for (var i = 0; i < 4; i++) {
		var input = document.createElement("input");
		input.setAttribute("class", "form-control");
		input.setAttribute("type", "text");
		input.setAttribute("id", "ipt"+[i]);
		form.appendChild(input);
	}

	// var input = document.createElement("input");
	// input.setAttribute("class", "form-control");
	// input.setAttribute("type", "text");
	// input.setAttribute("name", "numero_cartao");
	// input.setAttribute("id", "numero_cartao");

	// form.appendChild(input);

	card.appendChild(form);

	page.appendChild(card);

	// <div class="card">
	// 	<form>
	// 		<input class="form-control" type="text" name="numero_cartao" id="numero_cartao">
	// 		<input class="form-control" type="text" name="nome_cartao" id="nome_cartao">
	// 		<input class="form-control" type="text" name="data_exp" id="data_exp">
	// 		<input class="form-control" type="text" name="cvc_code" id="cvc_code">
	// 	</form>
	// </div>
}

function instanceCard(){

	new Card({
		form: 'form', container: '.card',
		formSelectors: {
			numberInput: 'input#ipt0',
			nameInput: 'input#ipt1',
			expiryInput: 'input#ipt2',
			cvcInput: 'input#ipt3'
		}
	});

}