<?php

class Dbh {

private $servername;
private $username;
private $password;
private $dbname;

protected function connect() {
	$this->servername = "localhost";
	$this->username = "root";
	$this->password = "";
	$this->dbname = "testing";

	$conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
	mysqli_set_charset($conn, 'utf8');
	return $conn;
}

}