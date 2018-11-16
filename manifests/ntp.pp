class profile::ntp(
  Array[String] $ntp_servers,
) {
  class { '::ntp': 
    servers => $ntp_servers,
  }
}
