class fpm {

  package { 'rpm-build':
    ensure => 'latest',
  }

  package { 'fpm':
    ensure   => installed,
    require  => Package['rpm-build'],
    provider => 'gem',
  }

}
