<?php include 'includes/sub_session.php'; ?>
<?php
	$slug = $_GET['category'];

	$conn = $pdo->open();

	try{
		$stmt = $conn->prepare("SELECT * FROM category WHERE cat_slug = :slug");
		$stmt->execute(['slug' => $slug]);
		$cat = $stmt->fetch();
		$catid = $cat['id'];
	}
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}

	$pdo->close();

?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition  layout-top-nav" style="overflow: hidden;">
<div class="wrapper">
	 
	  <div class="">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div>
		       		<?php
		       			
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = :catid");
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";


						        $ext = pathinfo($image, PATHINFO_EXTENSION);
						        if ($ext == 'mp4' || $ext == 'mov' || $ext == 'vob' || $ext == 'mpeg' || $ext == '3gp' || $ext == 'avi' || $ext == 'wmv' || $ext == 'mov' || $ext == 'amv' || $ext == 'svi' || $ext == 'flv' || $ext == 'mkv' || $ext == 'webm' || $ext == 'gif' || $ext == 'asf') {

						                 echo"
						                 	<a  href='../projects' target = '_parent'>
						                 	<div class='col-sm-4'>
	       									<div class='box box-solid' style = 'height:500px;'>
		       								<div class='box-body prod-body' style = 'margin-bottom: 42%;'>
						                 	<video src='".$image."' autoplay='autoplay' width='100%' height='370px' class='thumbnail' muted loop></video>
						                	<h5>".$row['name']."</h5>
		       								</div>
		       								<br>
	       									</div>
	       									</div>
	       									</a>";

						        }
						        
						        else{

						            echo "	<a  href='../projects' target = '_parent'>
						            		<div class='col-sm-4'>
	       									<div class='box box-solid' style = 'height:500px;'>
		       								<div class='box-body prod-body' style = 'margin-bottom: 42%;'>
		       								<img loading='lazy' src='".$image."' width='100%' height='370px' class='thumbnail'>
		       								<h5>".$row['name']."</h5>
		       								</div>
		       								<br>
	       									</div>
	       									</div>
	       									</a>";
						        }

	       						/*echo "

	       							<a  href='../projects' target = '_parent'>
	       							<div class='col-sm-4'>
	       								<div class='box box-solid' style = 'height:500px;'>
		       								<div class='box-body prod-body' style = 'margin-bottom: 42%;'>
		       									<img loading='lazy' src='".$image."' width='100%' height='370px' class='thumbnail'>
		       									<h5>".$row['name']."</h5>
		       								</div>
		       								<br>
		       								<div class='box-footer'>
		       									<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       							</a>
	       						"; */

	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}

						$pdo->close();

		       		?> 

	        	</div>
	        	
	      </section>
	     
	    </div>
	  </div>
</div>

<?php include 'includes/scripts.php'; ?>

</body>
</html>