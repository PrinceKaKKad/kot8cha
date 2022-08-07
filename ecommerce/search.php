<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-black layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper ">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div>
	            <?php
	       			
	       			$conn = $pdo->open();

	       			$stmt = $conn->prepare("SELECT COUNT(*) AS numrows FROM products WHERE name LIKE :keyword");
	       			$stmt->execute(['keyword' => '%'.$_POST['keyword'].'%']);
	       			$row = $stmt->fetch();
	       			if($row['numrows'] < 1){
	       				echo '<h1 class="page-header">No results found for <i>'.$_POST['keyword'].'</i></h1>';
	       			}
	       			else{
	       				echo '<h1 class="page-header">Search results for <i>'.$_POST['keyword'].'</i></h1>';
		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE name LIKE :keyword");
						    $stmt->execute(['keyword' => '%'.$_POST['keyword'].'%']);
					 
						    foreach ($stmt as $row) {
						    	$highlighted = preg_filter('/' . preg_quote($_POST['keyword'], '/') . '/i', '<b>$0</b>', $row['name']);
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						 $ext = pathinfo($image, PATHINFO_EXTENSION);
						        if ($ext == 'mp4' || $ext == 'mov' || $ext == 'vob' || $ext == 'mpeg' || $ext == '3gp' || $ext == 'avi' || $ext == 'wmv' || $ext == 'mov' || $ext == 'amv' || $ext == 'svi' || $ext == 'flv' || $ext == 'mkv' || $ext == 'webm' || $ext == 'gif' || $ext == 'asf') {

						                 echo"
						                 	<a href='product.php?product=".$row['slug']."'>
						                 	<div class='col-sm-4'>
	       									<div class='box box-solid' style = 'height:500px;'>
		       								<div class='box-body prod-body' style = 'margin-bottom: 42%;'>
						                 	<video src='".$image."' autoplay='autoplay' width='100%' height='370px' class='thumbnail' muted loop></video>
						                	<h5>".$highlighted."</h5>
		       								</div>
		       								<br>
		       								<div class='box-footer'>
		       								<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       									</div>
	       									</div>
	       									</a>";

						        }
						        
						        else{

						            echo "	<a href='product.php?product=".$row['slug']."'>
						            		<div class='col-sm-4'>
	       									<div class='box box-solid' style = 'height:500px;'>
		       								<div class='box-body prod-body' style = 'margin-bottom: 42%;'>
		       								<img loading='lazy' src='".$image."' width='100%' height='370px' class='thumbnail'>
		       								<h5>".$highlighted."</h5>
		       								</div>
		       								<br>
		       								<div class='box-footer'>
		       								<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       									</div>
	       									</div>
	       									</a>";
						        }
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
							
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}
					}

					$pdo->close();

	       		?> 
	        	</div>
	        	
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>