# == Class vagrant::service
#
# This class is meant to be called from vagrant
# It ensure the service is running
#
class vagrant::service {

  service { $vagrant::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
