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
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="container-fluid">
	<div class="container" style="margin-bottom: 20px; margin-top: 20px">
	<nav class="navbar navbar-dark bg-dark">
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link active" href="index.php">Kereses</a></li>
			<li class="nav-item"><a class="nav-link" href="konyv_feltoltes.php">Könyv hozzáadás</a></li>
			<li class="nav-item"><a class="nav-link" href="all_list.php">Teljes lista</a></li>
		</ul>
		</nav>
	</div>
	<div class="container">
	<div class="card">
	<div class="card-header bg-primary">
	<h1>Keresés</h1>
	</div>
	<div class="card-body">
	<div class="col-sm-12">
		<form method="POST">
			<div class="form-group">
				<div class="row">
					<div class="col-sm-6">
						<input type="text" class="form-control" name="nev" placeholder="Cím" autofocus />
					</div>
					
					<div class="col-sm-6">
						<input type="text" class="form-control" name="szerzo" placeholder="Szerző" />
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary" name="sub" >Keresés</button>
		</form>
		</div>
		</div>
	</div>
		<?php
		if(isset($_POST["sub"])){
			$nev = $_POST["nev"];
			$szerzo = $_POST["szerzo"];
			$lista;
			if(empty($nev)){
				$lista = getData($con, "*", "books", "szerzo LIKE '%" . $szerzo . "%'");
			}else{
				$lista = getData($con, "*", "books", "nev LIKE '%" . $nev . "%'");
			}
			$kat = getData($con, "*", "kategoriak");
			$kat_array = array();
			foreach($kat as $item){
				$kat_array[$item["id"]] = $item["nev"];	
			}
			$kat_kapcs = getData($con, "*", "kat_book");
			$kat_kapcs_array = array();
			foreach($kat_kapcs as $item){
				$kat_kapcs_array[$item["id"]] = array($item["book_id"], $item["kat_id"]);
			}
			?>
			<h1>Találatok</h1>
			<table border="1" align="center" class="table table-dark">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Cím</th>
						<th scope="col">Szerő</th>
						<th scope="col">Kategoria</th>
						<th scope="col">Kiadási dátum</th>
						<th scope="col">ISBN</th>
						<th scope="col">Módosítás</th>
					</tr>
				</thead>
				
				<tbody>
				<?php
				foreach($lista as $value){
					$kat_ki = " ";
					foreach($kat_kapcs_array as $item){
						if($item[0] == $value['id']){
							$kat_ki .= $kat_array[$item[1]] . "<br />";
						}
					}
					print "<tr><td scope='row'>" . $value['id'] . "</td><td>" . $value['nev'] . "</td><td>" . $value['szerzo'] . "</td><td>" . $kat_ki . "</td><td>" . $value['kiadas'] . "</td><td>" . $value['isbn'] . "</td><td><a href='konyv_modositas.php?id=".$value['id']."'>Módosítás</a></td></tr>";
				}
				?>
				</tbody>
			</table>
			<?php
		}
		?>
	</div>
</div>
</body>
</html>