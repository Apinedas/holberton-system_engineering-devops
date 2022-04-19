exec { 'pkill -x killmenow':
  path  => '/usr/bin:/usr/sbin:/bin'
}
