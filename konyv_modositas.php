<?php
include ("connect.php");
?>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript">
		$(document).ready(function(){
			$('#isbn').mask('000 000 000 000 0');
		});
	</script>
</head>
<body>
<div class="container-fluid">
	<div class="container" style="margin-bottom: 20px; margin-top: 20px">
		<nav class="navbar navbar-dark bg-dark">
			<ul class="nav nav-pills">
				<li class="nav-item"><a class="nav-link" href="index.php">Kereses</a></li>
				<li class="nav-item"><a class="nav-link" href="konyv_feltoltes.php">Könyv hozzáadás</a></li>
				<li class="nav-item"><a class="nav-link" href="all_list.php">Teljes lista</a></li>
				<li class="nav-item"><a class="nav-link active" href="#">Könyv módositás</a></li>
			</ul>
		</nav>
	</div>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary">
				<h1>Könyv módositás</h1>
			</div>
		<div class="card-body">
			<div class="col-sm-12">
				<?php
				if(isset($_POST["sub"])){
					$nev = $_POST["nev"];
					$szerzo = $_POST["szerzo"];
					$kat = $_POST["kat"];
					$kiadas = $_POST["kiadas"];
					$isbn = $_POST["isbn"];
					if(empty($kiadas)){
						$kiadas = 0;
					}
					//$last_id = getSQL($con, "SELECT MAX(id) FROM books;");
					//insertData($con, "books", "nev, szerzo, kat_id, kiadas, isbn", "'" . $nev . "', '" . $szerzo . "', '0', '" . $kiadas . "', '" . $isbn . "'");
					updateData($con, "books", "nev='" . $nev . "', szerzo='" . $szerzo . "', kat_id=0, kiadas='" . $kiadas . "', isbn='" . $isbn . "'", "id=". $_GET['id']);
					//$last_id = $last_id[0][0]+1;
					//foreach($kat as $item){
						//insertData($con, "kat_book", "kat_id, book_id", "'" . $item . "', '" . $last_id . "'");
					//}
					?>
					<div class="alert alert-success" role="alert">Könyv sikeres mentése!</div>
					<?php
				}
				$get = getData($con, "*", "books","id=". $_GET['id']);
				$data;
				foreach($get as $value)
					$data[] = $value;
				$data = $data[0];
				$get_kat = getData($con, "*", "kat_book", "book_id=" . $_GET['id']);
				$data_kat;
				foreach($get_kat as $value)
					$data_kat[] = $value["kat_id"];
				?>
				<form method="POST">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Cím:</span>
						</div>
						<input type="text" name="nev" value="<?php echo $data['nev']; ?>" autofocus required class="form-control" placeholder="Cím" aria-label="Cím" aria-describedby="basic-addon1">
					</div>
					
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon2">Szerző:</span>
						</div>
						<input type="text" name="szerzo" value="<?php echo $data['szerzo']; ?>" required class="form-control" placeholder="Szerző" aria-label="Szerző" aria-describedby="basic-addon2">
					</div>
					
					<div class="input-group mb-3">
						<select multiple="multiple" class="custom-select" name="kat[]" id="kat" size="6">
							<?php
							$lista = getData($con, "*", "kategoriak", "'1'='1'", " ORDER BY nev");
							foreach($lista as $value){
								$selected = "";
								if (in_array($value["id"], $data_kat)) {
									$selected = "selected";
								}
								echo '<option value="' . $value["id"] . '" ' . $selected . '>' . $value["nev"] . '</option>';
								print "\n";
							}
							?>
						</select>
					</div>
					
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">Kiadás éve:</span>
						</div>
						<input type="number" min="1000" max="2020" name="kiadas" value="<?php echo $data['kiadas']; ?>" class="form-control" placeholder="Kiadás éve" aria-label="Kiadás éve" aria-describedby="basic-addon3">
					</div>
					
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">ISBN szám:</span>
						</div>
						<input type="text" name="isbn" value="<?php echo $data['isbn']; ?>" id="isbn" class="form-control" placeholder="ISBN szám" aria-label="ISBN szám" aria-describedby="basic-addon3">
					</div>
					<button type="submit" class="btn btn-primary" name="sub" >Mentés</button>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>