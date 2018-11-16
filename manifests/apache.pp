class profile::apache(
  Hash $apache_vhost_servers,
  Integer $port = 80,
) {
  class { '::apache':
    default_vhost => $default_vhost
  }

#  ::apache::vhost { 'nickbales2.mylabserver.com':
#    port    => $port,
#    docroot => $docroot,
#  }
 
  create_resources(::apache::vhost, $apache_vhost_servers)
   
#  file { "${docroot}index.html":
#    ensure  => file,
#    content => "Test page. This is a test",
#  }
}
