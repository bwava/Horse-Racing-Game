

<!DOCTYPE html>
<html>
	<head>
	    
<?php

session_start();

// التحقق من وجود معلومات تسجيل الدخول في جلسة PHP


if (!isset($_SESSION["user_id"])) {
    // إعادة توجيه المستخدم إلى صفحة تسجيل الدخول
header("Location: https://ad.dsnacoin.in/login.php");
    
$sql = "SELECT * FROM Users WHERE id = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$_SESSION["user_id"]]);
$user = $stmt->fetch();

    exit;
}
function getBalance($userId) {
    
  return $balance;
}
$balance = getBalance($_SESSION["user_id"]);


?>
	  
	  

	  
	    
		<title>Horse Racing</title>
		<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>		
		<script src="/bet/js/ajax.js"></script>
        <script src="/bet/js/jquery.min.js"></script>
		<link rel="stylesheet" href="game.css" />
		<link rel="stylesheet" href="css/general.css" />
		<link rel="stylesheet" href="css/media.css" />
	</head>

	<body>
	    
		<div id="scroll" class="window">

			<div class="track">

				<div id="horse1" class="horse standRight">
					<div class="rider">
						<div class="head">
						</div>

						<div class="body">
						</div>
					</div>
				</div>


				<div id="horse2" class="horse standRight">
					<div class="rider">
						<div class="head">
						</div>

						<div class="body">
						</div>
					</div>
				</div>


				<div id="horse3" class="horse standRight">
					<div class="rider">
						<div class="head">
						</div>

						<div class="body">
						</div>
					</div>
				</div>


				<div id="horse4" class="horse standRight">
					<div class="rider">
						<div class="head">
						</div>

						<div class="body">
						</div>
					</div>
				</div>

				<div class="bush jump1"></div>
				<div class="bush jump2"></div>
				<div class="bush jump3"></div>
				<div class="bush jump4"></div>
				<div class="bush jump5"></div>
				<div class="bush jump6"></div>
				<div id="finishline">
				</div>
			</div>
		</div>
		<div class="inner">
			<button id="start">
				Start Race
			
			</button>
			<button id="instBtn">
				Instruction Help (?)
			</button>
			<button id='leader' onclick="displayLeaderBoard()">
				Leader Board
			</button>
			<!-- <button onclick="scoreCheck()">socre</button> -->
<!-- 			<div id="start" onclick="resetGame()">
				Reset
			</div> -->
			<div id="bet">
			    
<p>You currently have <span id="fundss"></span></p>

                <script src="/bet/js/get-balance.js"></script>		    
				<p>You currently have <span id="funds"></span></p>
				<p>Goal = <span id="funds">500</span></p>
				<label>Bet Amount  (£)</label>
				<!-- <input id="amount" /> -->
				
				<select id="amount">
					<option selected disabled value=''>Select Amount</option>
					<option value=10>10</option>
					<option value=20>20</option>
					<option value=40>40</option>
					<option value=60>60</option>
					<option value=100>100</option>
				</select>
				<label>Bet on horse:</label>
				<select id="bethorse">
					<option selected disabled value=''>Select Horse</option>
					<option value=0>White</option>
					<option value=1>Blue</option>
					<option value=2>Green</option>
					<option value=3>Brown</option>
				</select>
			</div>
			<table id="results">
				<thead>
				<tr>
					<th>Results</th>
					<th></th>
				</tr>
				</thead>
				<tr>
					<td>1st</td>
					<td class="horseResult"></td>
				</tr>
				<tr>
					<td>2nd</td>
					<td class="horseResult"></td>
				</tr>
				<tr>
					<td>3rd</td>
					<td class="horseResult"></td>
				</tr>
				<tr>
					<td>4th</td>
					<td class="horseResult"></td>
				</tr>
			</table>
			<img src="images/tree.png" class="tree" />

		 	<audio id="gallop">
			  <source src="audio/gallop.mp3" type="audio/mpeg">
				Your browser does not support the audio element.
			</audio>
		 	<audio id="crowd">
			  <source src="audio/run.mp3" type="audio/mpeg">
				Your browser does not support the audio element.
			</audio>
		</div>

		<!-- The Modal -->
		<div id="myModal" class="modal">

			 <!-- Modal content -->
			<div class="modal-content">
			  <div class="modal-header">
			    <span class="close">&times;</span>
			    <h1>Welcome To The Bet Game</h1>
			  </div>
			  <div class="modal-body">
			    <h2>Instructions For Playing</h2>
			    <p>1) There are Four Horses in the game.</p>
			    <p>2) You currently have 100 pounds cash.</p>
			    <p>3) Select the bet amount and bet on the horse you think will win the race.</p>
			    <p>4) After selecting the horse and bet amount click on "Start Race button"</p>
			    <p>(Bet Amount and Bet Selection Option are on bottom left cornor of your screen.)</p>
			    <p>(To win the game increase your cash up to 500 or more. Good Luck !!)</p>
			  </div>
			  <div class="modal-footer">
			    <h3 style="text-align:center">Good Luck</h3>
			  </div>
			</div>

		</div>
 
		<div id="generalModal" class="general-modal modal">
			<div class="modal-content">
				<div class="modal-header">
					<span class="close">&times;</span>
					<p id="modal-head-text"></p>
				</div>
				<div class="modal-body">
					<p id="modal-body-text"></p>
				</div>
				<div class="modal-footer">
					<p id="modal-footer-text"></p>
				</div>
			</div>
		</div>

		<div id="askModal" class="ask-modal general-modal modal">
			<div class="modal-content">
				<div class="modal-header">
					<p id="ask-modal-head-text"></p>
				</div>
				<div class="modal-body">
					<p id="ask-modal-body-text"></p>
				</div>
				<div class="modal-footer">
					<button id="yes-btn" class="modal-btn">Yes</button>
					<button id="no-btn" class="modal-btn">No</button>
				</div>
			</div>
		</div>
		
         
		<script src="js/game.js"></script>
		<script src="js/general.js"></script>

	</body>
</html>