node default{
  include java

  class {'jenkins':
    require => Class['java'],
  }

  Jenkins::Plugin {
    require => Class['jenkins'],
  }

  jenkins::plugin { 'chucknorris': }
  jenkins::plugin { 'git': }
  jenkins::plugin { 'rbenv': }
  jenkins::plugin { 'build-flow-plugin': }

  rbenv::install { "jenkins":
    group => 'jenkins',
    home  => '/var/lib/jenkins',
  }
}
