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
    mode    => '0600',
    source  => 'file:///home/kwolf/Dropbox/ssh',
  }
}
