class netflix {
  package {'netflix-desktop':
    ensure  => latest,
    require => Class['base'],
  }
}
