#Install flask / Version must be 2.1.0
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/flask --version | grep "2.1.0"',
  require => Package['python3-pip'],
}
