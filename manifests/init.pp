# == Class: vagrant
#
# Full description of class vagrant here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class vagrant (
  $package_name = $vagrant::params::package_name,
) inherits vagrant::params {

  # validate parameters here

  class { 'vagrant::install': } ->
  class { 'vagrant::config': } ~>
  Class['vagrant']
}
