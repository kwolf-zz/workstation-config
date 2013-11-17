class chrome {
  package {'google-chrome-stable':
    ensure  => present,
    require => Class['base'],
  }
}
