class base::apt_sources {
  apt::source { 'puppetlabs':
    location   => 'http://apt.puppetlabs.com',
    repos      => 'main',
    key        => '4BD6EC30',
    key_server => 'pgp.mit.edu',
  }

  apt::source { 'dropbox': 
    location    => 'http://linux.dropbox.com/ubuntu',
    repos       => 'main',
    release     => 'precise',
    key         => '5044912E',
    key_server  => 'pgp.mit.edu',
    include_src => false,
  }

  apt::source { 'google-chrome':
    location    => 'http://dl.google.com/linux/chrome/deb/',
    repos       => 'main',
    release     => 'stable',
    include_src => false,
  }

  apt::source {'webupd8team-java':
    location    => 'http://ppa.launchpad.net/webupd8team/java/ubuntu',
    repos       => 'main',
    include_src => false,
  }

  apt::ppa {'ppa:ehoover/compholio': }
}
