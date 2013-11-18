class base {
  class { 'base::apt_sources': }

  include base::packages

  $home = '/home/kwolf'

  file {"${home}/.bashrc":
    ensure => link,
    owner  => 'kwolf',
    group  => 'kwolf',
    source => 'file:///home/kwolf/dev/workstation-config/modules/base/files/bashrc',
  }

  file {"${home}/.tmux.conf":
    ensure => link,
    target => "${home}/Dropbox/dotfiles/tmux.conf",
  }

  file {"${home}/.vimrc.after":
    ensure => link,
    target => "${home}/Dropbox/dotfiles/vimrc.after",
  }

  file {"${home}/.gvimrc.after":
    ensure => link,
    target => "${home}/Dropbox/dotfiles/gvimrc.after",
  }

}
