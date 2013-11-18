class pidgin {
  package {'pidgin':
    ensure => latest,
  }

  file{'/home/kwolf/.purple':
    ensure => link,
    target => '/home/kwolf/Dropbox/.purple',
    owner  => 'kwolf',
    group  => 'kwolf',
  }
}
