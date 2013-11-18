stage { 'pre':
  before => Stage['main'],
}

stage {'last': }
Stage['main'] -> Stage['last']

node default {
  include base
  include users
  include vim
  include ntp
  include vpn
  include chrome
  include netflix
  include conky
  include xbmc
  include pidgin

  class { 'janus': }
  janus::install { 'kwolf': }

  class { 'rvm':  }
  rvm::system_user { 'kwolf': }

  rvm_system_ruby { 'ruby-1.8.7-p374':
    ensure      => present,
    default_use => false,
  }

  rvm_system_ruby { 'ruby-2.0.0-p247':
    ensure      => present,
    default_use => false,
  }

 rvm_system_ruby { 'ruby-1.9.3-p448':
   ensure      => present,
   default_use => true,
 }
}
