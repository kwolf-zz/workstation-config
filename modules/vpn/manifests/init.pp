class vpn {
  package { ['openconnect', 'network-manager-openconnect'] :
    ensure => latest,
  }

  file {['/etc/NetworkManager/', '/etc/NetworkManager/system-connections']:
    ensure => directory,
  }

  file {'/etc/NetworkManager/system-connections/BSG':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    source => 'file:///home/kwolf/dev/workstation-config/modules/vpn/files/BSG'
  }
}
