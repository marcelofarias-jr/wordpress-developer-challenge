<?php 
	// função para carregar scripts
	function carrega_estilos(){
			wp_enqueue_style( 'template', get_template_directory_uri() . '/assets/style.css', array (), '1.0', 'all' );
			wp_enqueue_style( 'template', get_template_directory_uri() . '/assets/owl.carousel.min.css', array (), '1.0', 'all' );
			wp_enqueue_style( 'template', get_template_directory_uri() . '/assets/owl.theme.default.min.css', array (), '1.0', 'all' );
	}
	add_action( 'wp_enqueue_scripts', 'carrega_estilos');
	
	function carrega_scripts(){
		wp_enqueue_script( 'jquery', get_template_directory_uri() . '/assets/jquery.min.js', array( 'jquery' ) );
		wp_enqueue_script( 'OWLcarousel', get_template_directory_uri() . '/assets/owl.carousel.js', array( 'jquery' ) );
		wp_enqueue_script( 'APPjs', get_template_directory_uri() . '/assets/app.js', array( 'jquery' ) );
		wp_enqueue_script( 'highlight', get_template_directory_uri() . '/assets/highlight.js', array( 'jquery' ) );


	}
	add_action('wp_enqueue_script', 'carrega_scripts');
	//chamando o title
	add_theme_support('title-tag');

	//função para registrar os menus
	register_nav_menus(
		array(
		'menu_principal' => 'Menu Principal',
		)
	);

	 // Adicionar o logotipo
	add_theme_support( 'custom-logo' );

	//Adicionando thumbnail
	add_theme_support('post-thumbnails');


	require get_template_directory() . '/custom_post_type/videos.php';


 ?>