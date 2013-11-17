class vim {

  case $::osfamily {
    'Debian': {
      package {['vim', 'exuberant-ctags']:
        ensure => latest
      }
    }
  }
}
