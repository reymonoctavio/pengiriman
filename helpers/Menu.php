<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbarsideleft = array(
		array(
			'path' => 'home', 
			'label' => 'Dashboard', 
			'icon' => '<i class="fa fa-dashboard "></i>'
		),
		
		array(
			'path' => '/', 
			'label' => 'Data', 
			'icon' => '<i class="fa fa-cloud-upload "></i>','submenu' => array(
		array(
			'path' => 'layanan', 
			'label' => 'Layanan Pengiriman', 
			'icon' => '<i class="fa fa-globe"></i>'
		),
		
		array(
			'path' => 'kurir', 
			'label' => 'Kurir', 
			'icon' => '<i class="fa fa-motorcycle "></i>'
		),
		
		array(
			'path' => 'pengirim', 
			'label' => 'Pengirim Barang', 
			'icon' => '<i class="fa fa-sign-out "></i>'
		),
		
		array(
			'path' => 'penerima', 
			'label' => 'Penerima Barang', 
			'icon' => '<i class="fa fa-sign-in "></i>'
		),
		
		array(
			'path' => 'user', 
			'label' => 'User', 
			'icon' => '<i class="fa fa-users "></i>'
		)
	)
		),
		
		array(
			'path' => 'barang', 
			'label' => 'Barang', 
			'icon' => '<i class="fa fa-suitcase "></i>'
		),
		
		array(
			'path' => 'pengiriman', 
			'label' => 'Pengiriman', 
			'icon' => '<i class="fa fa-plane "></i>'
		),
		
		array(
			'path' => '/', 
			'label' => 'Laporan Pengiriman', 
			'icon' => '<i class="fa fa-bar-chart "></i>','submenu' => array(
		array(
			'path' => 'jmlmengirim', 
			'label' => 'Kurir telah mengirim', 
			'icon' => ''
		),
		
		array(
			'path' => 'biayajasa', 
			'label' => 'Biaya jasa kirim per barang', 
			'icon' => ''
		),
		
		array(
			'path' => 'statusbarang', 
			'label' => 'Status Pengiriman', 
			'icon' => ''
		),
		
		array(
			'path' => 'databarang', 
			'label' => 'Data Barang', 
			'icon' => ''
		),
		
		array(
			'path' => 'datalayanan', 
			'label' => 'Pengguna Layanan', 
			'icon' => ''
		)
	)
		)
	);
		
	
	
			public static $jenkel = array(
		array(
			"value" => "Laki-laki", 
			"label" => "Laki-Laki", 
		),
		array(
			"value" => "Perempuan", 
			"label" => "Perempuan", 
		),);
		
			public static $status = array(
		array(
			"value" => "Mengirim", 
			"label" => "Mengirim", 
		),
		array(
			"value" => "Terkirim", 
			"label" => "Terkirim", 
		),);
		
			public static $level = array(
		array(
			"value" => "admin", 
			"label" => "admin", 
		),
		array(
			"value" => "staff", 
			"label" => "staff", 
		),
		array(
			"value" => "kurir", 
			"label" => "kurir", 
		),);
		
			public static $account_status = array(
		array(
			"value" => "Active", 
			"label" => "Active", 
		),
		array(
			"value" => "Pending", 
			"label" => "Pending", 
		),
		array(
			"value" => "Blocked", 
			"label" => "Blocked", 
		),);
		
}