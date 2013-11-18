class conky {
  package {'conky-all':
    ensure => latest,
  }

  file {'/home/kwolf/.fonts':
    ensure  => directory,
    require => User['kwolf'],
    owner   => 'kwolf',
    group   => 'kwolf',
    recurse => true,
    source  =>
      'file:///home/kwolf/dev/workstation-config/modules/conky/files/fonts',
  }

}
