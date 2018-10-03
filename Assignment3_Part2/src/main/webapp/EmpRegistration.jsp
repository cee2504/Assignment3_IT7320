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

</style>
<script type="text/javascript">
function formvalidation()
{
	a = document.getElementById("cName").value;
	b = document.getElementById("area").value;
	c = document.getElementById("address").value;
	d = document.getElementById("phone").value;
	e = document.getElementById("mail").value;
	f = document.getElementById("user").value;
	g = document.getElementById("pass").value;
	h = document.getElementById("status").value;
	
	patt1 = /[a-zA-Z0-9]/; 
	patt2 = /[0-9]{10}$/;
	patt3 = /[0-9a-zA-Z]+@[0-9a-zA-Z]+[\.]{1}[0-9a-zA-Z]+$/;
	patt4 = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}$/;
	patt5 = /[A-z0-9]{6,}/;
	if ( !patt1.test(a) )
	{
		alert("Invalid company name. Please enter again.");
		document.getElementById("cName").select();
		document.getElementById("cName").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt1.test(b) )
	{
		alert("Invalid Business area. Please enter again.");
		document.getElementById("area").select();
		document.getElementById("area").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt1.test(c) )
	{
		alert("Invalid address. Please enter again.");
		document.getElementById("address").select();
		document.getElementById("address").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt2.test(d) )
	{
		alert("Invalid phone number. Must be 10 number");
		document.getElementById("phone").select();
		document.getElementById("phone").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt3.test(e) )
	{
		alert("Invalid email. Please enter again.");
		document.getElementById("mail").select();
		document.getElementById("mail").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt5.test(f) )
	{
		alert("Invalid username.At least 6 Alpha-Numeric characters");
		document.getElementById("user").select();
		document.getElementById("user").style.background="DarkSalmon ";
		return false;
	}
	if ( !patt4.test(g) )
	{
		alert("Invalid password. Must include atleast 4 characters and contain one uppercase, one lowercase and a number.");
		document.getElementById("pass").select();
		document.getElementById("pass").style.background="DarkSalmon ";
		return false;
	}
	if ( h == null )
	{
		alert("Please choose business status.");
		document.getElementById("status").select();
		document.getElementById("status").style.background="DarkSalmon ";
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

<p class="p1">	<img src="onlinejobsearch.jpg" > <br/> </p>

<div class="empreg"> <form method="post">
Company name: <br/><input type="text" id="cName" name="cName"> <br/> <br/>
Business area: <br/><input type="text" id="area" name="area"> <br/> <br/>
Business status: <select id="status" name="status">
				<option> Government Sector </option>
				<option> Private Sector </option>
				</select> </br> </br>
Address: <br/><input type="text" id="address" name="address"> <br/> <br/>
Phone number: <br/><input type="text" id="phone" name="phone"> <br/> <br/>
Email: <br/><input type="text" id="mail" name="mail"> <br/> <br/>
Username: <br/><input type="text" id="user" name="user"> <br/> <br/>
Password: <br/><input type="password" id="pass" name="pass"> <br/> <br/>
<input type="submit" value=" Register "> <br/><br/>


</form>
</div>





</body>
</html>