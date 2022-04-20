# Turn off passwd auth
file_line { 'PasswordAuthentication':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => 'no'
}

# Declare identity file
file_line { 'IdentityFile':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => '~/.ssh/school'
}
