class vim {

  case $::osfamily {
    'Debian': {
      package {['vim', 'exuberant-ctags']:
        ensure => latest
      }

      # TODO Figure out how to tell if it's gnome or KDE.
      package {'vim-gtk':
        ensure => latest,
      }
    }
  }
}
