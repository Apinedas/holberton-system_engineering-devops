# Debugging a 500 internal server error

exec { 'fix-wordpress':
  command => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/' /var/www/html/wp-settings.php",
}
