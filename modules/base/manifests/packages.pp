class base::packages {
  $packages = $::osfamily ? {
    'Debian' => ['aptitude', 'puppet-common', 'puppet', 'tmux',
       'subversion', 'libxss1',  'facter', 'augeas-lenses', 'libaugeas-ruby',
       'libaugeas0', 'ruby-augeas', 'ruby-safe-yaml', 'ruby-shadow', 'deluge',
       'dropbox', 'openssh-server', 'keepass2', 'oracle-java7-installer',
       'kubuntu-restricted-extras', 'samba', 'samba-tools', 'system-config-samba',
       'cifs-utils', 'nvidia-current-updates', 'vlc', 'libgtk2-perl', 'pithos', 
       'thunderbird'],
    default  => fail("$::operatingsystem isn't supported."),
  }

  case $::osfamily {
    'Debian': {
      # For some reason it doesn't see this in the apt labs repo
      package {'ruby-rgen':
        ensure => present,
        source => 'http://apt.puppetlabs.com/pool/stable/dependencies/r/ruby-rgen/ruby-rgen_0.6.5-1puppetlabs1_all.deb',
      }
    }
  }

  package {$packages:
    ensure => latest,
  }
}
