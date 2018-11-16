class profile::base {

  include ::ssh
  include ::profile::ntp

  if $facts['os']['family'] == 'RedHat' {
    include ::profile::selinux
  }

}
