node default{
  class {'jenkins':
  }

  jenkins::plugin { 'chucknorris': }
  jenkins::plugin { 'build-flow-plugin': }
  jenkins::plugin { 'git': }
  jenkins::plugin { 'ruby-runtime': }
    require => Jenkins::Plugin['ruby-runtime']
  }

  include git
  include rvm
  rvm::system_user {'jenkins':}

  rvm_system_ruby { '1.9.3-p484':
    ensure => 'present',
  }

}
