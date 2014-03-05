# == Class vagrant::install
#
class vagrant::install {

  package { $vagrant::package_name:
    ensure => present,
  }
}
