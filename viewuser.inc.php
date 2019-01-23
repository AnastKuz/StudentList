<?php

//shows info from database

class ViewUser extends User {

	public function showAllUsers() {
		$datas = $this->getAllUsers();
		foreach ($datas as $data) {
			echo $data['id']."<br>";
			echo $data['firstname']."<br>";
			echo $data['lastname']."<br>";
			echo $data['gender']."<br>";
			echo $data['groupnumber']."<br>";
			echo $data['email']."<br>";
			echo $data['points']."<br>";
			echo $data['birthdate']."<br>";
			echo $data['place']."<br>";
		}
	}

}