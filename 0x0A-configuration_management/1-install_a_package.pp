# Install puppet-lint version 2.5.0
package { 'puppet-lint':
  provider        =>  gem,
  install_options =>  {'-v' => '2.5.0'},
  source          =>  'https://rubygems.org'
}
