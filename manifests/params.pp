# == Class vagrant::params
#
# This class is meant to be called from vagrant
# It sets variables according to platform
#
class vagrant::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'vagrant'
    }
    'RedHat': {
      $package_name = 'vagrant'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
