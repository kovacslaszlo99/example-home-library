<?php
$username = "root";
$password = "";
$host = "127.0.0.1";
$database = "books";
$options = array(
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
    );
$con;

try {
	$con = new PDO('mysql:host=' . $host . ';dbname=' . $database, $username, $password, $options);
} catch (PDOException $ex) {
	var_dump($ex->getMessage( ));
}


function getData($con, $select, $from, $where = "", $other = ""){
	if ($where != "") {
		$where = " WHERE " . $where;
	}

	try{
		$query = "SELECT " . $select . " FROM `" . $from . "`" . $where.((! empty($other)) ? " ".$other: "");
		//var_dump($query);
		$result = $con->prepare($query);
		$result->execute();
		return $result;
	}catch (PDOException $ex) {
		var_dump($ex->getMessage());
	}
	return array();
}

function getSQL($con, $query){
	try {
		$return = [];

		$result = $con->prepare($query);
		$result->execute();

		return $result->fetchAll();
	} catch (PDOException $ex) {
		var_dump($ex->getMessage());
	}

	return array();
}

function insertData($con, $to, $columns, $values){
	try {
		$query = "INSERT INTO `" . $to . "` (" . $columns . ") VALUES (" . $values . ")";
		$result = $con->prepare($query);
		$result->execute();

		return $result;
	} catch (PDOException $ex) {
		var_dump($ex->getMessage());
	}

	return false;
}

function updateData($con, $to, $set, $where) {
	try {
		$query = "UPDATE `" . $to . "` SET " . $set . " WHERE " . $where;
		$result = $con->prepare($query);
		$result->execute();

		return $result;
	} catch (PDOException $ex) {
		var_dump($ex->getMessage());
	}

	return false;
}

function deleteData($con, $from, $where) {
	try {
		$query = "DELETE FROM `" . $from . "` WHERE " . $where;
		$result = $con->prepare($query);
		$result->execute();

		return $result;
	} catch (PDOException $ex) {
		var_dump($ex->getMessage());
	}

	return false;
}
?>