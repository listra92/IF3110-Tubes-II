<%@ page import="javax.servlet.*" %>
<%
    String alamat=(String)getServletContext().getAttribute("SITE_ROOT");
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
	<title> Ruserba - Home</title>
    <link href="<%= alamat %>/css/loginPopup.css" rel="stylesheet"/>
    <link href="<%= alamat %>/css/mainstyle.css" rel="stylesheet"/>
    <script src="<%= alamat %>/js/ajaxLogin.js" type="text/javascript"></script>
</head>
<body>

<!--
Untuk member silahkan <a href="#login_popup"> Masuk </a><br>
Untuk Admin silahkan <a href="<%= alamat %>/admin/login"> Admin Login </a><br>
Bagi yang ingin join silahkan <a href="<%= alamat %>/user/register"> Daftar </a><br>
Untuk lihat-lihat barang, silahkan klik <a href="<%= alamat %>/home/gallery"> ini </a><br>
Untuk masuk laman akun anda, silahkan klik <a href="<%= alamat %>/user">ini </a><br>
-->
	<div id="header">
		<div id="toplogo">
			<a href="<%= alamat %>"><img id="logo" src="<%= alamat %>/gambar_barang/logoruserba.jpg" alt="home"></a>
		</div>
		<div id="logintop">
			<%
                if(request.getSession().getAttribute("username")==null){
            %>
			<a href="#login_popup"><strong>Login</strong></a>
			<br><br>
			<a href="<%= alamat %>?sk=User&func=register"><strong>Register</strong></a>
            <%
                } else {
            %>
			<a href="<%= alamat %>?sk=User&func=logout"><strong>Logout</strong></a>
			<br><br>
			<a href="<%= alamat %>?sk=User"><strong>Profile</strong></a>
            <br><br>
			<p id="welcometext">Welcome, <%= request.getSession().getAttribute("username") %></p>
            <a href="<%= alamat %>?sk=User&func=cart"><img id="tasbelanja" src="<%= alamat %>/gambar_barang/tasbelanja.jpg" alt="Tas Belanja"></a>        
            <%
                }
            %>
                        <form action="<%= alamat %>" method="GET">
                        <p id ="search"><b>Cari Barang:</b>
                        Nama : <input type="text" name="search">
                        Kategori : 
                        <select name="kategori">
                        <option value="">--Pilih--</option>
                        <option value="<?=$row->name;?>">XXXXX</option>
                        </select>
                        Harga : <input type="text" name="harga">
                        <input type="submit"><br>
                        <span id="radiobutt">
                        <input type="radio" name="operator" value="L" checked>Less than
                        <input type="radio" name="operator" value="E">Equal to
                        <input type="radio" name="operator" value="G">Greater than
                        </span>
                        </p>
                        </form>
        </div>
                <div id="kategori">
                         <p>
								<span><a href="<%= alamat %>?sk=Barang&func=cari&search=&kategori=Sembako"><strong>Sembako</strong></a></span>
                                <span><a href="<%= alamat %>?sk=Barang&func=cari&search=&kategori=Handphone"><strong>Handphone</strong></a></span>
                                <span><a href="<%= alamat %>?sk=Barang&func=cari&search=&kategori=Peralatan+Listrik"><strong>PeralatanElektronik</strong></a></span>
                                <span><a href="<%= alamat %>?sk=Barang&func=cari&search=&kategori=Aksesoris+Komputer"><strong>AksesorisKomputer</strong></a></span>
                                <span><a href="<%= alamat %>?sk=Barang&func=cari&search=&kategori=Perabotan+Rumah"><strong>PerabotanRumah</strong></a></span>
                                <span><a href="<%= alamat %>?sk=Barang&func=cari&search=&kategori=Alat+Tulis"><strong>AlatTulis</strong></a></span>
                         </p>
                </div>
    </div>

	<div id="homecontent">
			<center><h2>Best Of Sembako</h2></center>
                <div class="scrollable">
                    <div class="items">
								<?php
								while ($row = mysql_fetch_object($data['Sembako']))
								{
								?>
                        	<img class="picsize" src="<%= alamat %>/gambar_barang/<?=$row->gambar;?>" alt="<?=$row->nama_barang;?>">
								<?php
								}
								?>
                    </div>
                </div>
			<!--</div>-->
	</div>

	<div id="homecontent">
			<center><h2>Best Of Handphone</h2></center>
                <div class="scrollable">
                    <div class="items">
								<?php
								while ($row = mysql_fetch_object($data['HP']))
								{
								?>
                        <img class="picsize" src="<%= alamat %>/gambar_barang/<?=$row->gambar;?>" alt="<?=$row->nama_barang;?>">
								<?php
								}
								?> 
                   </div>
                </div>
			<!--</div>-->
	</div>

	<div id="homecontent">
			<center><h2>Best Of Peralatan Listrik</h2></center>
                <div class="scrollable">
                    <div class="items">
								<?php
								while ($row = mysql_fetch_object($data['Listrik']))
								{
								?>
                        <img class="picsize" src="<%= alamat %>/gambar_barang/<?=$row->gambar;?>" alt="<?=$row->nama_barang;?>">
								<?php
								}
								?> 
                   </div>
                </div>
			<!--</div>-->
	</div>

	<div id="homecontent">
			<center><h2>Best Of Aksesoris Komputer</h2></center>
                <div class="scrollable">
                    <div class="items">
								<?php
								while ($row = mysql_fetch_object($data['Komputer']))
								{
								?>
                        <img class="picsize" src="<%= alamat %>/gambar_barang/<?=$row->gambar;?>" alt="<?=$row->nama_barang;?>">
								<?php
								}
								?> 
                   </div>
                </div>
			<!--</div>-->
	</div>

	<div id="homecontent">
			<center><h2>Best Of Perabotan Rumah</h2></center>
                <div class="scrollable">
                    <div class="items">
								<?php
								while ($row = mysql_fetch_object($data['Rumah']))
								{
								?>
                        <img class="picsize" src="<%= alamat %>/gambar_barang/<?=$row->gambar;?>" alt="<?=$row->nama_barang;?>">
								<?php
								}
								?> 
                   </div>
                </div>
			<!--</div>-->
	</div>

	<div id="homecontent">
			<center><h2>Best Of Perabotan Rumah</h2></center>
                <div class="scrollable">
                    <div class="items">
								<?php
								while ($row = mysql_fetch_object($data['Tulis']))
								{
								?>
                        <img class="picsize" src="<%= alamat %>/gambar_barang/<?=$row->gambar;?>" alt="<?=$row->nama_barang;?>">
								<?php
								}
								?> 
                   </div>
                </div>
			<!--</div>-->
	</div>

<div id="login_popup">
    <div id="popup">
    <?=$data['loginView'];?>
</div>

</body>
</html>
