class dropbox {

  Exec {
    user  => 'root',
    group => 'root',
    path  => ['/bin', '/usr/bin'],
  }

  exec {'install dropbox':
    environment => 'HOME=/root',
    provider    => 'shell',
    command     => 'who am i && cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -',
    creates     => '/root/.dropbox-dist',
    logoutput   => true,
    notify      => Exec['start dropbox'],
  }

#  exec {'chmod dropbox':
    #provider    => 'shell',
    #command     => 'chown -R root:root /root/.dropbox-dist',
    #logoutput   => true,
    #refreshonly => true,
    #notify      => exec['start dropbox'],
  #}

  exec {'start dropbox':
    environment => 'HOME=/root',
    command     => '/root/.dropbox-dist/dropboxd &',
    logoutput   => true,
    refreshonly => true,
  }
}
