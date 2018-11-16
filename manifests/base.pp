class profile::base {

  include ::ssh
  class { '::ntp': }

  if $facts['os']['family'] == 'RedHat' {
    include ::profile::selinux
  }

}
