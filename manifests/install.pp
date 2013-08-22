class redis::install {

  package { 'redis-server': ensure => present }
  service { "redis-server":
    ensure     => stopped,
    enable     => false,
    hasrestart => true,
    hasstatus  => true,
  }

}
