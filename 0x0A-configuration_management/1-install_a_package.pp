# Install puppet-lint version 2.5.0
package { 'puppet-lint':
  provider        =>  gem,
  source          =>  'https://rubygems.org/gems/puppet-lint/versions/2.5.0'
}
