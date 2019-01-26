<?php
include_once 'header.php';
?>

	<section class="main-container">
		<div class="main-wrapper">
			<h2>Signup</h2>
			<form class="signup-form" action="includes/signup.inc.php" method="POST">
				<input type="text" name="first" placeholder="Firstname">
				<input type="text" name="last" placeholder="Lastname">
				<input type="text" name="email" placeholder="E-mail">
				<input type="text" name="uid" placeholder="Username">
				<input type="password" name="pwd" placeholder="Password">
				<button type="submit"name="submit">Sign up</button>
			</form>
		</div>
	</section>

	<section>
		<div>
			<h2>Students list</h2>
			<table>
				<tr>
					<th>First name</th>
					<th>Last name</th>
					<th>e-mail</th>
					<th>Username</th>
				</tr>
				<?php
				include_once 'includes/dbh.inc.php';

				$sql = "SELECT user_first, user_last, user_email, user_uid from users";
				$result = $conn->query($sql);

				if ($result-> num_rows > 0) {
				while ($row = $result->fetch_assoc()) {
				echo "<tr><td>".$row['user_first']."</td><td>".$row['user_last']."</td><td>".$row['user_email']."</td><td>".$row['user_uid']."</td><tr>";
				}
				echo "</table>";
			} else {
				echo "0 result";
			}
				?>
			</table>
		</div>
	</section>

<?php
include_once 'footer.php';
?>