<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.wrapper {
	width: 68em;
}
.column{
	float:left;
}



// Start here

$title-color: #222;
$font-color: #777;
$light-gray: #eee;
$primary: #E91E63;
$secondary: #42A5F5;

// product
$product-box-shadow: 0px 0px 0px 1px $light-gray;





* {
	box-sizing: border-box;
}

body {
	color: $font-color;
	font-family: 'Open Sans', Arial, sans-serif;
}


.product-grid {
	width: 60em;
	margin: 2rem auto;
	// TODO: apply clearfix
	

	// If want a flexbox grid.
	&.product-grid--flexbox {
		.product-grid__wrapper {
			display: flex;
			flex-wrap: wrap;
		}
		
		.product-grid__title {
			height: auto;
			
			&:after { display: none; }
		}
	}
	

	&__wrapper {
		margin-left: -1rem;
		margin-right: -1rem;
		//background: #000;
	}
	
	&__product-wrapper {
		padding: 1rem;
		float: left;
		width: 33.33333%;
	}
	
	
	&__product {
		padding: 1rem;
		// width: 33.33333%;
		// float: left;
		position: relative;
		cursor: pointer;
		background: #fff;
		//box-shadow: $product-box-shadow;
		border-radius: 4px;
		
		&:hover {
			box-shadow: $product-box-shadow;
			z-index: 50;
			
			.product-grid__extend {
				display: block;
			}
		}
	}
	
			
	// product image wrapper
	&__img-wrapper {
		width: 100%;
		text-align: center;
		padding-top: 1rem;
		padding-bottom: 1rem;
		height: 150px;
	}
	
	
		// product image
		&__img {
			max-width: 100%;
			height: auto;
			max-height: 100%;
		}
	
	
	//	product title
	&__title {
		margin-top: .875rem;
		display: block;
		font-size: 1.125em;
		color: $title-color;
		height: 3em;
		overflow: hidden;
		position: relative;
		
		&:after {
			content: "";
			display: block;
			position: absolute;
			bottom: 0;
			right: 0;
			width: 2.4em;
			height: 1.5em; // magic number
			background: linear-gradient(to right, rgba(255, 255, 255, 0), rgba(255, 255, 255, 1) 50%);
			//background: red;
		}
	}
	
	&__price {
		color: $primary;
		font-weight: bold;
		letter-spacing: .4px;
	}
	
	
	// extend wrapper
	&__extend-wrapper {
		position: relative;
	}
	
	// extended elements
	// show when hover .product-grid__product
	&__extend {
		display: none;
		position: absolute;
		padding: 0 1rem 1rem 1rem;
		margin: .4375rem -1rem 0;
		box-shadow: $product-box-shadow;
		background: #fff;
		border-radius: 0 0 4px 4px;
		
		&:before {
			content: "";
			height: .875rem;
			width: 100%;
			position: absolute;
			top: -.4375rem;
			left: 0;
			background: #fff;
		}
	}
	
	
	// product description	
	&__description {
		font-size: .875em;
		//margin-top: .875rem;
		margin-top: .4375rem;
		margin-bottom: 0;
	}
	
	
	// buttons
	&__btn {
		display: inline-block;
		font-size: .875em;
		color: $font-color;
		background: $light-gray;
		padding: .5em .625em;
		margin-top: .875rem;
		margin-right: .625rem;
		cursor: pointer;
		border-radius: 4px;
		
		i.fa { margin-right: .3125rem;}
	}
	
	
	&__add-to-cart {
		color: #fff;
		background: $primary;
		
		&:hover { background: lighten($primary, 10%); }
	}
	
	&__view {
		color: $font-color;
		background: $light-gray;
		
		&:hover { background: lighten($light-gray, 10%); }
	}
}

        /* Basics */
        html, body
        {
            padding: 0;
            margin: 0;
            width: 100%;
            height: 100%;
            font-family: "Helvetica Neue" , Helvetica, sans-serif;
            background: #FFFFFF;
        }
        .logincontent
        {
            position: fixed;
            width: 350px;
            height: 300px;
            top: 50%;
            left: 50%;
            margin-top: -150px;
            margin-left: -175px;
            background: #07A8C3;
            padding-top: 10px;
        }
        .loginheading
        {
            border-bottom: solid 1px #ECF2F5;
            padding-left: 18px;
            padding-bottom: 10px;
            color: #ffffff;
            font-size: 20px;
            font-weight: bold;
            font-family: sans-serif;
        }
        label
        {
            color: #ffffff;
            display: inline-block;
            margin-left: 18px;
            padding-top: 10px;
            font-size: 15px;
        }
        input[type=text], input[type=password]
        {
            font-size: 14px;
            padding-left: 10px;
            margin: 10px;
            margin-top: 12px;
            margin-left: 18px;
            width: 300px;
            height: 35px;
            border: 1px solid #ccc;
            border-radius: 2px;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f5f5;
            font-size: 14px;
        }
        input[type=checkbox]
        {
            margin-left: 18px;
            margin-top: 30px;
        }
        .loginremember
        {
            background: #ECF2F5;
            height: 70px;
            margin-top: 20px;
        }
        .check
        {
            font-family: sans-serif;
            position: relative;
            top: -2px;
            margin-left: 2px;
            padding: 0px;
            font-size: 12px;
            color: #321;
        }
        .loginbtn
        {
            float: right;
            margin-right: 20px;
            margin-top: 20px;
            padding: 6px 20px;
            font-size: 14px;
            font-weight: bold;
            color: #fff;
            background-color: #07A8C3;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#07A8C3), to(#6EE4E8));
            background-image: -moz-linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
            background-image: linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
            border-radius: 30px;
            border: 1px solid #07A8C3;
            cursor: pointer;
        }
        button{
        
           
            padding: 6px 20px;
            font-size: 14px;
            font-weight: bold;
            color: #fff;
            background-color: #07A8C3;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#07A8C3), to(#6EE4E8));
            background-image: -moz-linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
            background-image: linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
            border-radius: 30px;
            border: 1px solid #07A8C3;
            cursor: pointer;
        }
        .loginbtn:hover
        {
            background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff), to(#6ec2e8));
            background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
            background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
        }
        h1
        {
            border-bottom: solid 1px #ECF2F5;
            padding-left: 18px;
            background-color:#F5F5F5
            padding-bottom: 10px;
            color: #07A8C3;
            font-size: 40px;
            font-weight: bold;
            font-family: sans-serif;
        }
    a:link, a:visited {
    background-color: #07A8C3;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    
}


a:hover, a:active {
    background-color: #07A8C3;
}

.row {
  display: flex;
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create two equal columns that sits next to each other */
.column {
  flex: 50%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
}
div{
  background:#F5F5F5;
  width:auto;
  height:auto;
  padding:1em;
}

</style>
<script type="text/javascript">
$(document).ready(function() {
	 
	  $('.color-choose input').on('click', function() {
	      var headphonesColor = $(this).attr('data-image');
	 
	      $('.active').removeClass('active');
	      $('.left-column img[data-image = ' + headphonesColor + ']').addClass('active');
	      $(this).addClass('active');
	  });
	 
	});
</script>
</head>
</style>
    <link rel="stylesheet" href="/styles.css">   
<body>
<main class="container">
  <center>
		  <h1>AJIO Online Store </h1> 
  </center>
  
  <div class="container" style="background-color:#f1f1f1">
    <a href="/spring/myaccount" type="button" class="myaccount" ">MyAccount</a>    
    <span class="psw"></span><br>
    <span class="psw"></span>
  </div>
  <!-- Left Column / Headphones Image -->
 <div class="section group">
			<table style="width:100%">
			
				<div class="col span_1_of_3">
					<tr class="ul_2">
						
							<th class="li_2">	
													
								<img  height='200' width='200' src="/spring/resources/1.jpg"/>
								
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Striped T-Shirt</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i><button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
						</div>
							</th>
							<th class="li_2">	
								
								<img  height='200' width='200' src="/spring/resources/2.jpg"/>
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Blue T-Shirt</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i><button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
							</th>
							<th class="li_2">
								
								<img  height='200' width='200' src="/spring/resources/3.jpg"/>
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Purple T-Shirt</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> <button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
							</th>
												
					</tr>
					<tr class="ul_2">
						
							<th class="li_2">	
													
								<img  height='200' width='200' src="/spring/resources/4.jpg"/>
								
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Black T-Shirt</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i><button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
						</div>
							</th>
							<th class="li_2">	
								
								<img  height='200' width='200' src="/spring/resources/5.jpg"/>
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Blue T-Shirt</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i><button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
							</th>
							<th class="li_2">
								
								<img  height='200' width='200' src="/spring/resources/6.jpg"/>
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">White T-Shirt</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> <button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
							</th>
												
					</tr>
					<tr class="ul_2">
						
							<th class="li_2">	
													
								<img  height='200' width='200' src="/spring/resources/7.jpg"/>
								
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Showpiece</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i><button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
						</div>
							</th>
							<th class="li_2">	
								
								<img  height='200' width='200' src="/spring/resources/8.jpg"/>
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Black T-Shirt</p>
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i><button>Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
							</th>
							<th class="li_2">
								
								<img  height='200' width='200' src="/spring/resources/9.jpg"/>
								<div class="product-grid__extend-wrapper">
								<div class="product-grid__extend">
									<p class="product-grid__description">Red T-Shirt</p>
									
									<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> <button >Add to cart</button> </span>				
									<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> </span>
								</div>
							</th>
												
					</tr>
				</div>
		
			</table>
		</div>	
		<br>
		<div align="RIGHT">

</main>
</body>
<footer>
		<a target="_blank" >@AJIO</a>
	</footer>

</html>
