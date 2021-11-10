<!-- ***********************Rodapé -->
  	<footer>
  		<div class="logo">
  			<a href="http://localhost/play">
  					<?php 
  					$custom_logo_id = get_theme_mod( 'custom_logo' );
		            $logo = wp_get_attachment_image_src( $custom_logo_id, '' );

		            if ( has_custom_logo() ) {
		              echo '<img src="' . esc_url( $logo[0] ) . '" class="img-fluid">';
		            } else {
		              echo '<h1>' . get_bloginfo('name') . '</h1>';
		              echo '<p class="lead">' . get_bloginfo('description') . '</p>';
		            } ?>
  				</a>
  		</div>
		<p>© 2020 — Play — Todos os direitos reservados.</p>
  	</footer>
  </div>

  <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <script src="assets/highlight.js"></script>
  <script src="assets/app.js"></script>
</body>
</html>