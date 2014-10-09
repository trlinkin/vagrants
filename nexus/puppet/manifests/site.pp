node default {
  class{ '::java': }

  class{ '::nexus':
    version    => 'latest',
    revision   => '05',
    nexus_root => '/opt/nexus'
  }

  Class['::java'] ->
  Class['::nexus']

  file { '/opt/nexus':
    ensure => directory,
  }
}
