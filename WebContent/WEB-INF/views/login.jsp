<!DOCTYPE html>
<html>
<style>
form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
<body>

	<a href="index.jsp">Página Inicial </a><h2 align="center">Login necessário</h2>

	<form action="efetuaLogin">
		<div class="imgcontainer">
			<img src="http://cereaissul.com.br/wp-content/themes/cereaissul/img/logo.jpg" alt="Logo Cereais Sul">
		</div>

		<div class="container">
			<label><b>Login</b></label> <input type="text"
				placeholder="Seu Usuario" name="login" required> <label><b>Senha</b></label>
			<input type="password" placeholder="Sua Senha" name="senha"
				required>

			<button type="submit">Entre</button>
			<input type="checkbox" checked="checked"> Lembre me
		</div>

		<div class="container" style="background-color: #f1f1f1">


		</div>
	</form>

</body>
</html>