class profile::apache(
  Boolean $default_vhost = false,
  Integer $port = 80,
  String $docroot = '/var/www/',
) {
  class { '::apache':
    default_vhost => $default_vhost
  }

  ::apache::vhost { 'nickbales2.mylabserver.com':
    port    => $port,
    docroot => $docroot,
  }
    
  file { "${docroot}index.html":
    ensure  => file,
    content => "Test page. This is a test",
  }
}
