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
	min-width: 800px; }

li { float: left; }

a { display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none; }

a:hover { background-color: #111; }
p.p1 {text-align:left; margin-top: 2em; }
img {max-width: 1000px; height: 70%; position: absolute; }
div.feedback{ position: absolute; top: 15em ; left: 50em;}
a.register{text-decoration:underline; color:black;}
a.register:hover { background-color:#D3D3D3; color:blue; }
p.p2 {color:black;}


</style>
<script type="text/javascript">
function formvalidation()
{
	a = document.getElementById("name").value;
	b = document.getElementById("pass").value;
	

	patt1 = /[A-z0-9]{6,}/; 
	patt2 = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$/;
	if ( !patt1.test(a) )
	{
		alert("Invalid username or password!");
		document.getElementById("name").select();
		document.getElementById("name").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt2.test(b) )
	{
		alert("Invalid username or password!");
		document.getElementById("pass").select();
		document.getElementById("pass").style.background="DarkSalmon ";
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
<div class="feedback"> <form method="post" onsubmit="return formvalidation(); ">
Username: <br/><input type="text" id="name" name="name"> <br/> <br/>
Password: <br/><input type="password" id="pass" name="pass"> <br/> <br/>

<input type="submit" value=" Login "> <br/><br/>
<p class="p2"> <a class="register" href="EmpRegistration.php"> Or click here to register </a></p>

</form>
</div>

</body>
</html>