class users {
  user{'kwolf':
    ensure     => present,
    gid        => 'kwolf',
    managehome => true,
  }

  file {'/home/kwolf/.ssh':
    ensure  => directory,
    recurse => true,
    require => User['kwolf'],
    source  => 'file:///home/kwolf/Dropbox/ssh',
  }
}
