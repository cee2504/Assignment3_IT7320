<html>
<head>
<style type="text/css">
body {background-color: #D3D3D3; }
h1 { color: black; 
	text-align:center; 
	min-width:800px; 
	margin-top: 0.25cm;
	margin-bottom: 0.5cm;
	letter-spacing: 1cm; 
	text-transform: uppercase;
	font-size: 100px;}
ul {
    list-style-type: none;
	margin-top: 10px;
    overflow: hidden;
    background-color: #333;
	min-width: 800px;	}

li { float: left; }

a { display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none; }

a:hover { background-color: #111; }
p.p1 {text-align:left; margin-top: 2em; }
img {max-width: 1000px; height: 70%; position: absolute; }
div.search{ position: absolute; top: 15em ; left: 50em;}

</style>
<script type="text/javascript">
function formvalidation()
{
	a = document.getElementById("title").value;
	b = document.getElementById("spec").value;
	c = document.getElementById("loc").value;

	patt1 = /[a-zA-Z]/; 
	
	if ( !patt1.test(a) && !patt1.test(b) && !patt1.test(c) )
	{
		alert("Must enter atleast one option.");
		
		document.getElementById("title").select();
		document.getElementById("title").style.background="DarkSalmon ";
		
		
		document.getElementById("spec").select();
		document.getElementById("spec").style.background="DarkSalmon ";
		
		
		document.getElementById("loc").select();
		document.getElementById("loc").style.background="DarkSalmon ";
		return false;
		
	}

	return true;

}
</script>
</head>
<body>
<div class="header"> <h1> Pump </h1></div>
	<ul>
		<li><a href="Navigation.jsp"> Home </a></li>
		<li><a href="search.jsp"> Search </a></li>
		<li><a href="EmpRegistration.jsp"> Employer Registration </a></li>
		<li><a href="Employer.jsp"> Employer </a></li>
		<li><a href="feedback.jsp"> Feedback </a></li>
		<?php session_start(); ?>
		<?php if (!isset($_SESSION['id']) ): ?>
		<li style="float:right"><a href="indext.jsp"> Login </a></li>
		<?php else: ?>
		<li style="float:right"><a href="logout.jsp"> Logout </a></li>
		<?php endif; ?>		
	</ul>
<p class="p1">	<img src="onlinejobsearch.jpg" > <br/> </p>
<div class="search"> <form method="get" onsubmit="return formvalidation(); ">
Job title: <br/><input type="text" id="title" name="title"> <br/> <br/>
Company Name: <br/><input type="text" id="spec" name="cName"> <br/> <br/>
Location: <br/><input type="text" id="loc" name="loc"> <br/> <br/>
<input type="submit" value=" Search "> <br/><br/>


</form>
</div>





</body>
</html>