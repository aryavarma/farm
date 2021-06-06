<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/banner6.jpg" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/banner6.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/banner6.jpg" alt="Third slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>




			<h3><b>Our Farm and it's Website:</b></h3>


	<p><b><font face="148F77" color="#21618C  ">Our farmhouse has best in market products .Organic Fruits ,vegies , Milk Product . Our goal is to provide best in market products which are safe and orgnic at the lowest cost price.This website can also act as a blog as it provides information about the products . Benefits</b><b>All the products are checked carefully and if you have any query please contact.</font></b></p>

	<p><font face="verdana" color="#1E8449 "><b>~ Vegetables</b> option can be found at the top in the navigation bar inside category. Some examples are: <br>1.Potato : Contains heart healing antioxidants <br>2.Onions : Packed with nutrients <br> 3.Capsicum : Excellent source of vitamin A </font></p>
<img src="images/banner.jpg" width="200" height="200">&nbsp &nbsp &nbsp 
<img src="images/ginger.jpg" width="200" height="200">&nbsp &nbsp &nbsp 
<img src="images/potato.jpg" width="200" height="200"><br><br>

	<p><font face="verdana" color="#21618C "><b>~ Fruits</b> option can be found at the top in the navigation bar inside category. Some examples are: <br>1.Papaya : Rich in nutrients<br>2.Mango : High in fibre and glucose <br> 3.Banana : Rich in potassium </font></p>
		<img src="images/mango.jpg" width="200" height="200">&nbsp &nbsp &nbsp 
<img src="images/papaya.jpg" width="200" height="200">&nbsp &nbsp &nbsp 
<img src="images/banana.jpg" width="200" height="200"><br>

		<br><p><font face="verdana" color="#273746  "><b>~ Milk</b> option can be found at the top in the navigation bar inside category. Some examples are: <br>1.Gir Cows MILK : Contains rich fatty acids, high in phosphorus , calcium<br>2.Ghee : Rich fats , soft and creamy , pure. <br> 3.Butter : Homemade , rich in nutrients , fats. <br> Gir Cow Milk Benefits contains benefits like <b>amino acid</b> which fights with diseases like obesity, 			joint pain, asthma,metal problem.<br>THe demand for gir cow has increased rapidly overthe years.Everything is pure and <b>100% safe</b></font></p>
			<img src="images/paneer.jpg" width="200" height="200">
&nbsp &nbsp &nbsp 
<img src="images/milk.jpg" width="200" height="200">&nbsp &nbsp &nbsp 
<img src="images/ghee.jpg" width="200" height="200"><br>

		<p><font face="verdana" color="145A32"><b>~ Rooms</b>options are also available in the category section:<br>1.Family friendly : Family can come and relax , enjoy nature as well as see the working of a big farm <br>2.Couple friendly : Rooms are spacious with good outside views <br>3.Sightseeing : Rivers , mountains gardens are very close and farm has variety of plants <br>4.For 1hr,2hr and  3 Hrs site seeing option is also available </font></p>
			
		 <h3><b>The Farm at its best:</b> </h3>
		<img src="images/farmhouse.jpg" width="200" height="200">&nbsp &nbsp &nbsp<img src="images/2-bedroom-couples.jpg" width="200" height="200">&nbsp &nbsp &nbsp 
<img src="images/1-bedroom-couples.jpg" width="200" height="200">
		       		<?php
		       			$month = date('m');
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT *, SUM(quantity) AS total_qty FROM details LEFT JOIN sales ON sales.id=details.sales_id LEFT JOIN products ON products.id=details.product_id WHERE MONTH(sales_date) = '$month' GROUP BY details.product_id ORDER BY total_qty DESC LIMIT 6");
						    $stmt->execute();
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
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
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
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