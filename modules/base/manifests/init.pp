class base {
  class { 'base::apt_sources': }

  include base::packages

}
