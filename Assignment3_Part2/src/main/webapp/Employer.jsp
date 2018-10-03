<html>
<head>
<style type="text/css">
body {background-color: #D3D3D3;}
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
div.empreg{ position: absolute; top: 15em ; left: 50em;}
div.delete{ position: absolute; top: 1em ; left: 14em; }
button.button2 {font-size: 24px; background-color: #e7e7e7; color: black;}
</style>
<script type="text/javascript">
function formvalidation()
{
	a = document.getElementById("cName").value;
	b = document.getElementById("title").value;
	c = document.getElementById("res").value;
	d = document.getElementById("req").value;
	e = document.getElementById("address").value;
	f = document.getElementById("salary").value;
	g = document.getElementById("num").value;
	h = document.getElementById("email").value;
	
	patt1 = /[a-zA-Z0-9]/; 
	patt2 = /[0-9]{10}$/;
	patt3 = /[0-9a-zA-Z]+@[0-9a-zA-Z]+[\.]{1}[0-9a-zA-Z]+$/;
	if ( !patt1.test(a) )
	{
		alert("Invalid company name. Please enter again.");
		document.getElementById("cName").select();
		document.getElementById("cName").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt1.test(b) )
	{
		alert("Invalid Job title.");
		document.getElementById("title").select();
		document.getElementById("title").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt1.test(c) )
	{
		alert("Invalid Responsibilities.");
		document.getElementById("res").select();
		document.getElementById("res").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt1.test(d) )
	{
		alert("Invalid Requirement.");
		document.getElementById("req").select();
		document.getElementById("req").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt1.test(e) )
	{
		alert("Invalid address.");
		document.getElementById("address").select();
		document.getElementById("address").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt1.test(f) )
	{
		alert("Invalid salary");
		document.getElementById("salary").select();
		document.getElementById("salary").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt2.test(g) )
	{
		alert("Invalid number. Must be 10 number");
		document.getElementById("num").select();
		document.getElementById("num").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt3.test(h) )
	{
		alert("Invalid Email.");
		document.getElementById("email").select();
		document.getElementById("email").style.background="DarkSalmon ";
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

	</ul>
<p class="p1">	<img src="onlinejobsearch.jpg" > <br/> </p>
<div class="empreg"> <form method="get" onsubmit="return formvalidation();">
Company name: <br/><input type="text" id="cName" name="cName"> <br/> <br/>
Job title: <br/><input type="text" id="title" name="title"> <br/> <br/>
Responsibilities: <br/><input type="text" id="res" name="res"> <br/> <br/>
Requirements: <br/><input type="text" id="req" name="req"> <br/> <br/>
Address: <br/><input type="text" id="address" name="address"> <br/> <br/>
Salary: <br/><input type="text" id="salary" name="salary"> <br/> <br/>
Phone number: <br/><input type="text" id="num" name="text"> <br/> <br/>
Email: <br/><input type="text" id="email" name="email"> <br/> <br/>
<input type="submit" value=" Add Job " > <br/><br/>
</form>
<form>
<div class="delete"><button class="button button2" type="button">Delete</button> </div>
</form>

</div>

</body>
</html>