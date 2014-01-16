node default{
  include java

  class {'jenkins':
    require => Class['java'],
  }

  jenkins::plugin { 'chucknorris': }
  jenkins::plugin { 'git': }
  jenkins::plugin { 'rbenv': }

  rbenv::install { "jenkins":
    group => 'jenkins',
    home  => '/var/lib/jenkins',
  }
}
