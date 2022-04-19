# Install puppet-lint version 2.5.0
package { 'flask':
  provider =>  pip3,
  install_options => {'-v' => '2.1.0'}
}
