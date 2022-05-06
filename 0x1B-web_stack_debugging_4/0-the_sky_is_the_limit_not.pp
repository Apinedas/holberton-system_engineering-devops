# Deletes problematic file and restarts nginx
exec { 'rm -f /etc/default/nginx':
  path  => '/usr/bin:/usr/sbin:/bin'
}

exec { 'sudo service nginx restart':
  path  => '/usr/bin:/usr/sbin:/bin'
}
